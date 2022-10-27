function (event, unit, subevent, spellid)
    local time = GetTime()
    local gcd = (select(4, GetSpellInfo(8004))) / 1000
    
    
    local function setsuggestionandicon(spell_name)
        aura_env.suggestion = spell_name
        aura_env.icon = select(3, GetSpellInfo(aura_env.suggestion))
        if aura_env.suggest == "Free GCD LOL" then
            aura_env.icon = 136221
        end
        return true
    end
    
    -- Check if spell is on CD
    local function checkcd(expiration)
        if expiration == nil or expiration == 0 then
            return true
        else
            expiration = expiration - time
            if expiration <= gcd then
                return true
            end
        end
    end
    
    -- Maelstrom Spender Logic --
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
        else
            chaincd = chainstart + gcd
        end
        
        -- Decide if & how to spend Maelstrom
        if getmaelstromstacks() == 5 then
            if not aura_env.maelstromspenders[aura_env.spell] then
                if checkcd(chaincd) then
                    if setsuggestionandicon("Chain Lightning") then
                        return true
                    end
                else
                    if setsuggestionandicon("Lightning Bolt") then
                        return true
                    end
                end
            end
        end
        
    end
    
    -- Non-maelstrom Logic --
    if unit == "player" and event == "UNIT_SPELLCAST_SUCCEEDED" and aura_env.spelltrigger[spellid] then
        aura_env.suggestion, aura_env.icon = "", ""
        aura_env.spell = GetSpellInfo(spellid)
        
        
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
        else
            shockcd = shockstart + gcd
        end
        
        -- Calculate CD info of Stormstrike
        local stormcd, stormstart, stormduration
        stormstart, stormduration = GetSpellCooldown("Stormstrike")
        if (stormduration == 8) then
            stormcd = stormstart + stormduration
        else
            stormcd = stormstart + gcd
        end
        
        -- Calculate CD info of Fire Nova
        local novacd, novastart, novaduration
        novastart, novaduration = GetSpellCooldown("Fire Nova")
        if (novaduration == 6) then
            novacd = novastart + novaduration
        else
            novacd = novastart + gcd
        end
        
        -- Calculate CD info of Lava Lash
        local lashcd, lashstart, lashduration
        lashstart, lashduration = GetSpellCooldown("Lava Lash")
        if (lashduration == 6) then
            lashcd = lashstart + lashduration
        else
            lashcd = lashstart + gcd
        end
        
        
        -- Decide if we should shock and which one to use
        if not aura_env.shocks[aura_env.spell] then
            if checkcd(shockcd) then
                if not checkdot() then
                    if setsuggestionandicon("Flame Shock") then
                        return true
                    end 
                else
                    if setsuggestionandicon("Earth Shock") then
                        return true
                    end
                end
            end
        end
        
        -- Decide if to use Stormstrike
        if aura_env.spell ~= "Stormstrike" then
            if checkcd(stormcd) then
                if setsuggestionandicon("Stormstrike") then
                    return true
                end
            end
        end
        
        -- Place a Fire Totem
        if not aura_env.firetotems[aura_env.spell] then
            if GetTotemTimeLeft(1) == 0 then
                if setsuggestionandicon("Magma Totem") then
                    return true
                end
            end
        end
        
        -- Decide if we should Fire Nova
        if GetTotemTimeLeft(1) ~= 0 then
            if aura_env.spell ~= "Fire Nova" then
                if checkcd(novacd) then
                    if setsuggestionandicon("Fire Nova") then
                        return true
                    end
                end
            end
        end
        
        -- Lava Lash LOL
        if aura_env.spell ~= "Lava Lash" then
            if checkcd(lashcd) then
                if setsuggestionandicon("Lava Lash") then
                    return true
                end
            end
        end
        
        if setsuggestionandicon("Free GCD LOL") then
            return true
        end
        
    end
    
end
