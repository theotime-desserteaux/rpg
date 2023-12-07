function PaladinTable()

    -- Honor
    local cooldown
    local ability_id = FourCC("AHhb")
    T["AllPlayers"][ability_id]["path"] = "BTNHolyBolt.blp"
    T["AllPlayers"][ability_id]["ability_type"] = "heal"
    T["AllPlayers"][ability_id]["casting_type"] = "instant"
    T["AllPlayers"][ability_id]["anim_charge"] = 23
    T["AllPlayers"][ability_id]["anim_cast"] = 57
    T["AllPlayers"][ability_id]["tooltip"] = "Holy Light"
    T["AllPlayers"][ability_id]["extented_tooltip"] = "Call upon the sacred power of the Holy Light to heal allies in front of you"
    T["AllPlayers"][ability_id]["max_level"] = 3
    cooldown = 15
    for p = 1, 10 , 1 do
        T[ConvertedPlayer(p)][ability_id]["mana_cost"] = 15
        T[ConvertedPlayer(p)][ability_id]["level"] = 0
        T[ConvertedPlayer(p)][ability_id]["ratio"] = 5 / cooldown
    end

    ability_id = FourCC("Ahea")
    T["AllPlayers"][ability_id]["path"] = "BTNHeal.blp"
    T["AllPlayers"][ability_id]["ability_type"] = "buff"
    T["AllPlayers"][ability_id]["casting_type"] = "instant"
    T["AllPlayers"][ability_id]["anim_charge"] = 23
    T["AllPlayers"][ability_id]["anim_cast"] = 57
    T["AllPlayers"][ability_id]["tooltip"] = "Blessed Touched"
    T["AllPlayers"][ability_id]["extented_tooltip"] = "Empowers the target with additional holy damage"
    T["AllPlayers"][ability_id]["max_level"] = 3
    cooldown = 160
    for p = 1, 10 , 1 do
        T[ConvertedPlayer(p)][ability_id]["mana_cost"] = 20
        T[ConvertedPlayer(p)][ability_id]["level"] = 0
        T[ConvertedPlayer(p)][ability_id]["ratio"] = 5 / cooldown
    end

    ability_id = FourCC("AItp")
    T["AllPlayers"][ability_id]["path"] = "BTNScrollUber.blp"
    T["AllPlayers"][ability_id]["ability_type"] = "buff"
    T["AllPlayers"][ability_id]["casting_type"] = "passive"
    T["AllPlayers"][ability_id]["anim_charge"] = 23
    T["AllPlayers"][ability_id]["anim_cast"] = 57
    T["AllPlayers"][ability_id]["tooltip"] = "Ancient Knowledge"
    T["AllPlayers"][ability_id]["extented_tooltip"] = "Increase all your healing powers by 10%"
    T["AllPlayers"][ability_id]["max_level"] = 3
    for p = 1, 10 , 1 do
        T[ConvertedPlayer(p)][ability_id]["level"] = 0
    end

    ability_id = FourCC("AHbh")
    T["AllPlayers"][ability_id]["path"] = "BTNBash.blp"
    T["AllPlayers"][ability_id]["ability_type"] = "buff"
    T["AllPlayers"][ability_id]["casting_type"] = "instant"
    T["AllPlayers"][ability_id]["anim_charge"] = 23
    T["AllPlayers"][ability_id]["anim_cast"] = 57
    T["AllPlayers"][ability_id]["tooltip"] = "Hammer Frenzy"
    T["AllPlayers"][ability_id]["extented_tooltip"] = "Drastically increases your attack speed with a hammer for 60 seconds"
    T["AllPlayers"][ability_id]["max_level"] = 3
    cooldown = 55
    for p = 1, 10 , 1 do
        T[ConvertedPlayer(p)][ability_id]["mana_cost"] = 25
        T[ConvertedPlayer(p)][ability_id]["level"] = 0
        T[ConvertedPlayer(p)][ability_id]["ratio"] = 5 / cooldown
    end

    ability_id = FourCC("AHmt")
    T["AllPlayers"][ability_id]["path"] = "BTNMassTeleport.blp"
    T["AllPlayers"][ability_id]["ability_type"] = "buff"
    T["AllPlayers"][ability_id]["casting_type"] = "instant"
    T["AllPlayers"][ability_id]["anim_charge"] = 23
    T["AllPlayers"][ability_id]["anim_cast"] = 57
    T["AllPlayers"][ability_id]["tooltip"] = "Sacred Inspiration"
    T["AllPlayers"][ability_id]["extented_tooltip"] = "Share the immense power of the Holy light to all nearby allies for 60 seconds"
    T["AllPlayers"][ability_id]["max_level"] = 1
    cooldown = 160
    for p = 1, 10 , 1 do
        T[ConvertedPlayer(p)][ability_id]["mana_cost"] = 210
        T[ConvertedPlayer(p)][ability_id]["level"] = 0
        T[ConvertedPlayer(p)][ability_id]["ratio"] = 5 / cooldown
    end

    --Retribution
    ability_id = FourCC("AHds")
    T["AllPlayers"][ability_id]["path"] = "BTNDivineIntervention.blp"
    T["AllPlayers"][ability_id]["ability_type"] = "taunt"
    T["AllPlayers"][ability_id]["casting_type"] = "instant"
    T["AllPlayers"][ability_id]["anim_charge"] = 23
    T["AllPlayers"][ability_id]["anim_cast"] = 57
    T["AllPlayers"][ability_id]["tooltip"] = "Holy Protection"
    T["AllPlayers"][ability_id]["extented_tooltip"] = "Taunt Nearby Enemies while shielding yourself with consecrated energy"
    T["AllPlayers"][ability_id]["max_level"] = 5
    cooldown = 60
    for p = 1, 10 , 1 do
        T[ConvertedPlayer(p)][ability_id]["level"] = 0
        T[ConvertedPlayer(p)][ability_id]["ratio"] = 5 / cooldown
    end

    ability_id = FourCC("Ainf")
    T["AllPlayers"][ability_id]["path"] = "BTNInnerFire.blp"
    T["AllPlayers"][ability_id]["ability_type"] = "drainsmana"
    T["AllPlayers"][ability_id]["casting_type"] = "instant"
    T["AllPlayers"][ability_id]["anim_charge"] = 23
    T["AllPlayers"][ability_id]["anim_cast"] = 57
    T["AllPlayers"][ability_id]["tooltip"] = "Sacred Grounds"
    T["AllPlayers"][ability_id]["extented_tooltip"] = "Mark the ground where you are currently standing damaging enemies and healing allies"
    T["AllPlayers"][ability_id]["max_level"] = 3
    cooldown = 160
    for p = 1, 10 , 1 do
        T[ConvertedPlayer(p)][ability_id]["mana_cost"] = 30
        T[ConvertedPlayer(p)][ability_id]["level"] = 0
        T[ConvertedPlayer(p)][ability_id]["ratio"] = 5 / cooldown
    end

    ability_id = FourCC("Asps")
    T["AllPlayers"][ability_id]["path"] = "BTNSpellSteal.blp"
    T["AllPlayers"][ability_id]["ability_type"] = "buff"
    T["AllPlayers"][ability_id]["casting_type"] = "instant"
    T["AllPlayers"][ability_id]["anim_charge"] = 23
    T["AllPlayers"][ability_id]["anim_cast"] = 57
    T["AllPlayers"][ability_id]["tooltip"] = "Control Magic"
    T["AllPlayers"][ability_id]["extented_tooltip"] = "Steals a positive buff from an enemy unit and applies it to a nearby friendly unit, or takes a negative buff from a friendly unit and applies it to a nearby enemy unit."
    T["AllPlayers"][ability_id]["max_level"] = 3
    cooldown = 45
    for p = 1, 10 , 1 do
        T[ConvertedPlayer(p)][ability_id]["mana_cost"] = 25
        T[ConvertedPlayer(p)][ability_id]["level"] = 0
        T[ConvertedPlayer(p)][ability_id]["ratio"] = 5 / cooldown
    end

    ability_id = FourCC("AUau")
    T["AllPlayers"][ability_id]["path"] = "BTNUnholyAura.blp"
    T["AllPlayers"][ability_id]["ability_type"] = "buff"
    T["AllPlayers"][ability_id]["casting_type"] = "instant"
    T["AllPlayers"][ability_id]["anim_charge"] = 23
    T["AllPlayers"][ability_id]["anim_cast"] = 57
    T["AllPlayers"][ability_id]["tooltip"] = "Holy Fury"
    T["AllPlayers"][ability_id]["extented_tooltip"] = "Release all the built-in  rage the to serve a greater purpose"
    T["AllPlayers"][ability_id]["max_level"] = 3
    cooldown = 45
    for p = 1, 10 , 1 do
        T[ConvertedPlayer(p)][ability_id]["mana_cost"] = 25
        T[ConvertedPlayer(p)][ability_id]["level"] = 0
        T[ConvertedPlayer(p)][ability_id]["ratio"] = 5 / cooldown
    end

    ability_id = FourCC("AOhw")
    T["AllPlayers"][ability_id]["path"] = "BTNHealingWave.blp"
    T["AllPlayers"][ability_id]["ability_type"] = "instant"
    T["AllPlayers"][ability_id]["casting_type"] = "instant"
    T["AllPlayers"][ability_id]["anim_charge"] = 23
    T["AllPlayers"][ability_id]["anim_cast"] = 57
    T["AllPlayers"][ability_id]["tooltip"] = "Holy Beam"
    T["AllPlayers"][ability_id]["extented_tooltip"] = "Strikes foes with a huge blast of light"
    T["AllPlayers"][ability_id]["max_level"] = 3
    cooldown = 160
    for p = 1, 10 , 1 do
        T[ConvertedPlayer(p)][ability_id]["mana_cost"] = 80
        T[ConvertedPlayer(p)][ability_id]["level"] = 0
        T[ConvertedPlayer(p)][ability_id]["ratio"] = 5 / cooldown
    end

    -- Justice
    ability_id = FourCC("Asth")
    T["AllPlayers"][ability_id]["path"] = "BTNStormHammer.blp"
    T["AllPlayers"][ability_id]["ability_type"] = "buff"
    T["AllPlayers"][ability_id]["casting_type"] = "passive"
    T["AllPlayers"][ability_id]["anim_charge"] = 23
    T["AllPlayers"][ability_id]["anim_cast"] = 57
    T["AllPlayers"][ability_id]["tooltip"] = "Hammer Mastery"
    T["AllPlayers"][ability_id]["extented_tooltip"] = "When equipped with a Hammer, each hit heals you"
    T["AllPlayers"][ability_id]["max_level"] = 3
    for p = 1, 10 , 1 do
        T[ConvertedPlayer(p)][ability_id]["level"] = 0
    end

    ability_id = FourCC("AHad")
    T["AllPlayers"][ability_id]["path"] = "BTNDevotion.blp"
    T["AllPlayers"][ability_id]["ability_type"] = "passive"
    T["AllPlayers"][ability_id]["casting_type"] = "passive"
    T["AllPlayers"][ability_id]["anim_charge"] = 23
    T["AllPlayers"][ability_id]["anim_cast"] = 57
    T["AllPlayers"][ability_id]["tooltip"] = "Shield Mastery"
    T["AllPlayers"][ability_id]["extented_tooltip"] = "When equipped with a shield, can equip a 2-hand weapon in the main hand"
    T["AllPlayers"][ability_id]["max_level"] = 1
    for p = 1, 10 , 1 do
        T[ConvertedPlayer(p)][ability_id]["level"] = 0
    end

    ability_id = FourCC("AHtc")
    T["AllPlayers"][ability_id]["path"] = "BTNThunderclap.blp"
    T["AllPlayers"][ability_id]["ability_type"] = "targeAoE"
    T["AllPlayers"][ability_id]["casting_type"] = "instant"
    T["AllPlayers"][ability_id]["anim_charge"] = 23
    T["AllPlayers"][ability_id]["anim_cast"] = 57
    T["AllPlayers"][ability_id]["tooltip"] = "Hammer Strike"
    T["AllPlayers"][ability_id]["extented_tooltip"] = "Bash your hammer into the ground dealing damage to all surrounding enemies"
    T["AllPlayers"][ability_id]["max_level"] = 3
    cooldown = 160
    for p = 1, 10 , 1 do
        T[ConvertedPlayer(p)][ability_id]["mana_cost"] = 210
        T[ConvertedPlayer(p)][ability_id]["level"] = 0
        T[ConvertedPlayer(p)][ability_id]["ratio"] = 5 / cooldown
    end

    ability_id = FourCC("AHav")
    T["AllPlayers"][ability_id]["path"] = "BTNAvatar.blp"
    T["AllPlayers"][ability_id]["ability_type"] = "buff"
    T["AllPlayers"][ability_id]["casting_type"] = "instant"
    T["AllPlayers"][ability_id]["anim_charge"] = 23
    T["AllPlayers"][ability_id]["anim_cast"] = 57
    T["AllPlayers"][ability_id]["tooltip"] = "Rallying Shout"
    T["AllPlayers"][ability_id]["extented_tooltip"] = "Shouts terrorizing nearby enemies"
    T["AllPlayers"][ability_id]["max_level"] = 3
    cooldown = 25
    for p = 1, 10 , 1 do
        T[ConvertedPlayer(p)][ability_id]["mana_cost"] = 25
        T[ConvertedPlayer(p)][ability_id]["level"] = 0
        T[ConvertedPlayer(p)][ability_id]["ratio"] = 5 / cooldown
    end

    ability_id = FourCC("Acmg")
    T["AllPlayers"][ability_id]["path"] = "BTNControlMagic.blp"
    T["AllPlayers"][ability_id]["ability_type"] = "aura"
    T["AllPlayers"][ability_id]["casting_type"] = "instant"
    T["AllPlayers"][ability_id]["anim_charge"] = 23
    T["AllPlayers"][ability_id]["anim_cast"] = 57
    T["AllPlayers"][ability_id]["tooltip"] = "Judgment"
    T["AllPlayers"][ability_id]["extented_tooltip"] = "Any nearby enemies casting a spell for the next 60 seconds will be striked by Justice"
    T["AllPlayers"][ability_id]["max_level"] = 3
    cooldown = 30
    for p = 1, 10 , 1 do
        T[ConvertedPlayer(p)][ability_id]["mana_cost"] = 25
        T[ConvertedPlayer(p)][ability_id]["level"] = 0
        T[ConvertedPlayer(p)][ability_id]["ratio"] = 5 / cooldown
    end

    ability_id = FourCC("ANch")
    T["AllPlayers"][ability_id]["path"] = "BTNCharm.blp"
    T["AllPlayers"][ability_id]["ability_type"] = "buff"
    T["AllPlayers"][ability_id]["casting_type"] = "instant"
    T["AllPlayers"][ability_id]["anim_charge"] = 23
    T["AllPlayers"][ability_id]["anim_cast"] = 57
    T["AllPlayers"][ability_id]["tooltip"] = "Pure Conviction"
    T["AllPlayers"][ability_id]["extented_tooltip"] = "Your faith has no limit, your hand is guided by the holy light"
    T["AllPlayers"][ability_id]["max_level"] = 3
    cooldown = 10
    for p = 1, 10 , 1 do
        T[ConvertedPlayer(p)][ability_id]["mana_cost"] = 45
        T[ConvertedPlayer(p)][ability_id]["level"] = 0
        T[ConvertedPlayer(p)][ability_id]["ratio"] = 5 / cooldown
    end

    ability_id = FourCC("AHre")
    T["AllPlayers"][ability_id]["path"] = "BTNResurrection.blp"
    T["AllPlayers"][ability_id]["ability_type"] = "morph"
    T["AllPlayers"][ability_id]["casting_type"] = "instant"
    T["AllPlayers"][ability_id]["anim_charge"] = 23
    T["AllPlayers"][ability_id]["anim_cast"] = 57
    T["AllPlayers"][ability_id]["tooltip"] = "Divine Intervention"
    T["AllPlayers"][ability_id]["extented_tooltip"] = "Embody Justice itself elevating your powers beyond your mortal limits"
    T["AllPlayers"][ability_id]["max_level"] = 1
    cooldown = 160
    for p = 1, 10 , 1 do
        T[ConvertedPlayer(p)][ability_id]["mana_cost"] = 210
        T[ConvertedPlayer(p)][ability_id]["level"] = 0
        T[ConvertedPlayer(p)][ability_id]["ratio"] = 5 / cooldown
    end


end