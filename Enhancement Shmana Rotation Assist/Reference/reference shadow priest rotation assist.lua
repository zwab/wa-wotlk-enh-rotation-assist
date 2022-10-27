function (event, unit, subevent, _, spellid)
    local time = GetTime()
    local gcd = (select(4, GetSpellInfo("Vampiric Touch"))) / 1000
    
    if unit == "player" and event == "UNIT_SPELLCAST_SENT" and aura_env.spelltrigger[spellid] then
        -- Get Debuffs on target
        local swpactive = false
        local vtcd, dpcd
        for i = 1, 40 do
            local name, _, _, _, _, expirationTime, _, _, _, _ = UnitDebuff("target", i, "PLAYER")
            if name == "Vampiric Touch" then
                vtcd = expirationTime - gcd
            elseif name == "Devouring Plague" then
                dpcd = expirationTime
            elseif name == "Shadow Word: Pain" then
                swpactive = true
            end
        end
        
        -- Get Stacks of Shadow Weaving
        local swstacks = 0
        if not swpactive then
            for i = 1, 40 do
                local name, _, count = UnitBuff("player", i, "PLAYER")
                if name == "Shadow Weaving" then
                    swstacks = count
                end
            end
        end
        
        -- Custom Option: Min Target Health
        local maxtargethealth = UnitHealthMax("target")
        if aura_env.config["mintargethptoggle"] then
            if maxtargethealth ~= 1 and maxtargethealth < aura_env.config["mintargethp"] then
                return false
            end
        end
        
        aura_env.spell, _, _, aura_env.casttime = GetSpellInfo(spellid)
        aura_env.spellexpiration = time + (aura_env.casttime / 1000)
        
        local latency = aura_env.config["mflatency"]
        local mindflay = gcd * 2
        local mindflay2 = mindflay * 0.66
        local leeway = gcd * 0.1
        local mindflayleeway = mindflay + leeway
        
        local tickgcd, tick2, tick3, tick3wait = {}, {}, {}, {}
        
        if not swpactive and vtcd ~= nil and dpcd ~= nil then
            if swstacks == 2 and aura_env.spell == "Mind Flay" then
                table.insert(tick3, "Shadow Word: Pain")
            elseif swstacks >= 3 and aura_env.spell == "Mind Flay" then
                table.insert(tick2, "Shadow Word: Pain")
            elseif swstacks >= 4 and (aura_env.spell == "Devouring Plague" or aura_env.spell == "Mind Blast") then
                table.insert(tickgcd, "Shadow Word: Pain")
            end
        end
        
        aura_env.suggestion, aura_env.tickno, aura_env.icon = "", "", ""
        
        local function timing(expiration, string)
            if aura_env.spell == "Mind Flay" then
                if expiration == nil or expiration == 0 and (string ~= "Shadow Word: Death") then
                    table.insert(tick2, string)
                    return
                else
                    expiration = expiration - time - latency
                    if expiration < mindflay2 and string ~= "Shadow Word: Death" then
                        table.insert(tick2, string)
                        return
                    elseif expiration < mindflay then
                        table.insert(tick3, string)
                        return
                    elseif expiration < mindflayleeway and string ~= "Shadow Word: Death" and string ~= "Mind Blast" then
                        table.insert(tick3wait, string)
                        return
                    end
                end
            elseif aura_env.spell ~= "Mind Flay" then
                if expiration == nil or expiration == 0 then
                    table.insert(tickgcd, string)
                    return
                else
                    expiration = expiration - time
                    if expiration <= gcd then
                        table.insert(tickgcd, string)
                        return
                    end
                end
            end
        end
        
        -- Fix for laggy combat log when applying VT
        VTexpiry = VTexpiry or 0
        if aura_env.spell == "Vampiric Touch" then
            VTexpiry = time + mindflay + 1
        end
        
        if aura_env.spell ~= "Vampiric Touch" and aura_env.spellexpiration > VTexpiry then
            timing(vtcd, "Vampiric Touch")
        end
        
        if aura_env.spell ~= "Devouring Plague" then
            timing(dpcd, "Devouring Plague")
        end
        
        local mbcd, mbstart, mbduration
        if aura_env.spell ~= "Mind Blast" then
            mbstart, mbduration = GetSpellCooldown("Mind Blast")
            if (mbduration == 5.5) then
                mbcd = mbstart + mbduration
            else
                mbcd = mbstart + gcd
            end
            timing(mbcd, "Mind Blast")
        end
        
        local swdcd, swdstart, swdduration
        if aura_env.config["swdenable"] and aura_env.spell ~= "Shadow Word: Death" then
            swdstart, swdduration = GetSpellCooldown("Shadow Word: Death")
            if (swdduration == 12) then
                swdcd = swdstart + swdduration
            else
                swdcd = swdstart + gcd
            end
            timing(swdcd, "Shadow Word: Death")
        end
        
        -- Rotation Adjustments
        
        local vt, dp, mb = 100, 100, 100
        if vtcd and aura_env.spell ~= "Vampiric Touch" then
            vt = vtcd - time - latency
        end
        if dpcd and aura_env.spell ~= "Devouring Plague" then
            dp = dpcd - time - latency
        end
        if mbcd and aura_env.spell ~= "Mind Blast" then
            mb = mbcd - time - latency
        end
        
        -- SW:D Adjustment
        if aura_env.config["swdenable"] then
            if tickgcd[1] == "Shadow Word: Death" then
                if vt > gcd * 2 and dp > gcd * 2 then
                    table.remove(tickgcd, 1)
                end
            end
            if tick3[1] == "Shadow Word: Death" then
                if vt > mindflay + gcd + latency and dp > mindflay + gcd + latency and mb > mindflay + gcd + latency then
                    table.remove(tick3, 1)
                end
            end
        end
        
        -- MB Adjustment
        if tick2[1] == "Mind Blast" and (tick3[1] == "Vampiric Touch" or tick3[1] == "Devouring Plague") then
            table.remove(tick2, 1)
        end
        
        -- Inner Focus
        
        local ifstart, ifduration, ifcd
        if aura_env.config["iftoggle"] == true and aura_env.ifknown then
            ifstart, ifduration = GetSpellCooldown("Inner Focus")
            ifcd = ifstart + ifduration
        end
        
        if not next(tickgcd) then
            if not next(tick2) then
                if not next(tick3) then
                    if not next(tick3wait) then
                        aura_env.suggestion = "Mind Flay"
                        aura_env.tickno = ""
                        aura_env.ticktime = mindflay2
                    else
                        aura_env.suggestion = tick3wait[1]
                        aura_env.tickno = "MF3+Wait"
                        aura_env.ticktime = mindflayleeway
                    end
                else
                    aura_env.suggestion = tick3[1]
                    aura_env.tickno = "MF3"
                    aura_env.ticktime = mindflay
                end
            else
                aura_env.suggestion = tick2[1]
                aura_env.tickno = "MF2"
                aura_env.ticktime = mindflay2
            end
        else
            aura_env.suggestion = tickgcd[1]
            aura_env.tickno = "  "
            aura_env.ticktime = "gcd"
        end
        
        aura_env.icon = select(3, GetSpellInfo(aura_env.suggestion))
        
        if
        aura_env.ifknown and aura_env.config["iftoggle"] == true and aura_env.suggestion == "Mind Flay" and
        (maxtargethealth > aura_env.config["ifhplimit"] or maxtargethealth == 1) and
        ifcd < aura_env.ticktime
        then
            aura_env.suggestion = "IF + " .. aura_env.suggestion
        end
        
        return true
    end
end

