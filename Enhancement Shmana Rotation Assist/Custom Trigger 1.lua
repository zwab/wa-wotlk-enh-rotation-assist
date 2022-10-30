function (event, unit, subevent, spellid)
    local time = GetTime()
    local gcd = (select(4, GetSpellInfo(34914))) / 1000
    local gcdqueue = {}
    local secondgcdqueue = {}
    local cooldowntableraw = {}
    
    local function setsuggestionandicon(spell_name)
        aura_env.suggestion = spell_name
        if aura_env.suggestion == "Free GCD LOL" then
            aura_env.icon = 136221
        else
            aura_env.icon = select(3, GetSpellInfo(aura_env.suggestion))
        end
    end
    
    -- Return expiration
    local function getexpiration(expiration)
        if expiration == nil or expiration == 0 then
            expiration = 0
            return expiration
        else
            expiration = expiration - time
            return expiration
        end
    end
    
    -- Get Maelstrom Stacks --
    if unit == "player" and event == "UNIT_AURA" then
        
        -- How much Maelstrom we got?
        local function getmaelstromstacks()
            for i = 1, 40 do
                local name, _, count = UnitBuff("player", i, "PLAYER")
                if name == "Maelstrom Weapon" then
                    return count
                end
            end
        end
        
        -- Calculate CD info of Chain Lightning
        local chaincd, chainstart, chainduration
        chainstart, chainduration = GetSpellCooldown("Chain Lightning")
        if (chainduration == 6) then
            chaincd = chainstart + chainduration
        elseif aura_env.spell == "Chain Lightning" then
            chaincd = time + 6
        else
            chaincd = chainstart + gcd
        end
        
        if getmaelstromstacks() == 5 then
            if getexpiration(chaincd) <= gcd then
                gcdqueue[1] = "Chain Lightning"
                setsuggestionandicon(gcdqueue[1])
                return true
            else
                gcdqueue[1] = "Lightning Bolt"
                setsuggestionandicon(gcdqueue[1])
                return true
            end
        end
    end
    
    
    -- Non-maelstrom Logic --
    if unit == "player" and event == "UNIT_SPELLCAST_SUCCEEDED" and aura_env.spelltrigger[spellid] then
        aura_env.suggestion, aura_env.icon = "", ""
        aura_env.spell = GetSpellInfo(spellid)
        
        if aura_env.spell == "Stormstrike" or aura_env.spell == "Lava Lash" then
            gcd = 1.5
        elseif aura_env.spell == "Magma Totem" or aura_env.spell == "Call of the Elements" or aura_env.spell == "Call of the Ancestors" or aura_env.spell == "Call of the Spirits" or aura_env.spell == "Totemic Recall" then
            gcd = 1
        end
        
        
        -- Check if Flame Shock is on enemy
        local function checkdot()  
            for i = 1, 40 do
                local name, _, _, _, _, expirationTime, _, _, _, _ = UnitDebuff("target", i, "PLAYER")
                if name == "Flame Shock" then
                    return true
                end
            end
        end
        
        -- Calculate CD info of Shocks
        local shockcd, shockstart, shockduration
        shockstart, shockduration = GetSpellCooldown("Flame Shock")
        if (shockduration == 6) then
            shockcd = shockstart + shockduration
        else if aura_env.shocks[aura_env.spell] then
                shockcd = time + 6
            else
                shockcd = shockstart + gcd
            end
        end
        
        -- Calculate CD info of Stormstrike
        local stormcd, stormstart, stormduration
        stormstart, stormduration = GetSpellCooldown("Stormstrike")
        if (stormduration == 8) then
            stormcd = stormstart + stormduration
        elseif aura_env.spell == "Stormstrike" then
            stormcd = time + 8
        else
            stormcd = stormstart + gcd
        end
        
        -- Calculate if Fire Totem expiration is less than a gcd
        local firetotemcd = GetTotemTimeLeft(1)
        
        -- Calculate CD info of Fire Nova
        local novacd, novastart, novaduration
        novastart, novaduration = GetSpellCooldown("Fire Nova")
        if (novaduration == 3) then
            novacd = novastart + novaduration
        elseif aura_env.spell == "Fire Nova" then
            novacd = time + 3
        else
            novacd = novastart + gcd
        end
        
        -- Calculate CD info of Lava Lash
        local lashcd, lashstart, lashduration
        lashstart, lashduration = GetSpellCooldown("Lava Lash")
        if (lashduration == 6) then
            lashcd = lashstart + lashduration
        elseif aura_env.spell == "Lava Lash" then
            lashcd = time + 6
        else
            lashcd = lashstart + gcd
        end
        
        
        -- Determine the Remaining Cooldown of all rotational abilities
        local shockexpire = getexpiration(shockcd)
        local stormexpire = getexpiration(stormcd)
        local firetotemexpire = GetTotemTimeLeft(1)
        local novaexpire = getexpiration(novacd)
        local lashexpire = getexpiration(lashcd)
        local chainexpire = getexpiration(chaincd)
        
        -- Populate Table of Abilities + Cooldown remaining
        table.insert(cooldowntableraw, {id = "Flame Shock", cd = shockexpire})
        table.insert(cooldowntableraw, {id = "Stormstrike", cd = stormexpire})
        table.insert(cooldowntableraw, {id = "Magma Totem", cd = firetotemexpire})
        table.insert(cooldowntableraw, {id = "Fire Nova", cd = novaexpire})
        table.insert(cooldowntableraw, {id = "Lava Lash", cd = lashexpire})
        table.insert(cooldowntableraw, {id = "Chain Lightning", cd = chainexpire})
        
        -- Populate table for Abilities available within the next GCD
        for i, v in pairs(cooldowntableraw) do
            if v.id == "Flame Shock" and v.cd <= gcd then
                if not checkdot() then
                    table.insert(gcdqueue, v.id)
                else
                    table.insert(gcdqueue, "Earth Shock")
                end
            end
            if v.id == "Stormstrike" and v.cd <= gcd then
                table.insert(gcdqueue, v.id)
            end
            if v.id == "Magma Totem" and v.cd <= gcd then
                table.insert(gcdqueue, v.id)
            end
            if v.id == "Fire Nova" and v.cd <= gcd then
                table.insert(gcdqueue, v.id)
            end
            if v.id == "Lava Lash" and v.cd <= gcd then
                table.insert(gcdqueue, v.id)
            end
        end
        
        -- Populate table for Abilities available within the GCD AFTER the next GCD
        for i, v in pairs(cooldowntableraw) do
            if v.id == "Flame Shock" and v.cd > (gcd * 2) and v.cd < (gcd * 3) then
                if not checkdot() then
                    table.insert(secondgcdqueue, v.id)
                else
                    table.insert(secondgcdqueue, "Earth Shock")
                end
            end
            if v.id == "Stormstrike" and v.cd > (gcd * 2) and v.cd < (gcd * 3) then
                table.insert(secondgcdqueue, v.id)
            end
            if v.id == "Magma Totem" and v.cd > (gcd * 2)  and v.cd < (gcd * 3) then
                table.insert(secondgcdqueue, v.id)
            end
            if v.id == "Fire Nova" and v.cd > (gcd * 2)  and v.cd < (gcd * 3) then
                table.insert(secondgcdqueue, v.id)
            end
            if v.id == "Lava Lash" and v.cd > (gcd * 2)  and v.cd < (gcd * 3) then
                table.insert(secondgcdqueue, v.id)
            end
        end
        
        -- Check 1 GCD ahead to see if it would be empty, if yes do fire nova
        if gcdqueue[1] ~= cooldowntableraw[4].id and gcdqueue[3] == nil and secondgcdqueue[1] == nil then
            if cooldowntableraw[3].cd > gcd then
                if cooldowntableraw[4].cd <= gcd then
                    gcdqueue[1] = cooldowntableraw[4].id
                end
            end
        end
        
        -- Defer Lava Lash if Stormstrike is coming off CD
        if gcdqueue[1] == cooldowntableraw[5].id then
            if cooldowntableraw[2].cd <= cooldowntableraw[5].cd + 0.3 then
                gcdqueue[1] = cooldowntableraw[2].id
            end
        end
        
        -- If the current CD is somehow empty, tell the user
        if gcdqueue[1] == nil then
            gcdqueue[1] = "Free GCD LOL"
        end
        
        setsuggestionandicon(gcdqueue[1])
        return true
        
    end
end

