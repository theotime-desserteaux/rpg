function RogueTable()

    -- Ranger
    local cooldown
    local ability_id = FourCC("AEar")
    T["AllPlayers"][ability_id]["path"] = "BTNImpalingBolt.blp"
    T["AllPlayers"][ability_id]["ability_type"] = "passive"
    T["AllPlayers"][ability_id]["casting_type"] = "passive"
    T["AllPlayers"][ability_id]["anim_charge"] = 23
    T["AllPlayers"][ability_id]["anim_cast"] = 57
    T["AllPlayers"][ability_id]["tooltip"] = "QuickShot"
    T["AllPlayers"][ability_id]["extented_tooltip"] = "Allows you shoot arrows without bending your bow"
    T["AllPlayers"][ability_id]["max_level"] = 5
    for p = 1, 10 , 1 do
        T[ConvertedPlayer(p)][ability_id]["level"] = 0
    end

    ability_id = FourCC("Aemk")
    T["AllPlayers"][ability_id]["path"] = "BTNMarksmanship.blp"
    T["AllPlayers"][ability_id]["ability_type"] = "passive"
    T["AllPlayers"][ability_id]["casting_type"] = "passive"
    T["AllPlayers"][ability_id]["anim_charge"] = 23
    T["AllPlayers"][ability_id]["anim_cast"] = 57
    T["AllPlayers"][ability_id]["tooltip"] = "Marksmanship"
    T["AllPlayers"][ability_id]["extented_tooltip"] = "Allows you to Focus your shot while bending your bow"
    T["AllPlayers"][ability_id]["max_level"] = 5
    for p = 1, 10 , 1 do
        T[ConvertedPlayer(p)][ability_id]["level"] = 0
    end

    -- Thief

    ability_id = FourCC("Ashm")
    T["AllPlayers"][ability_id]["path"] = "BTNShade.blp"
    T["AllPlayers"][ability_id]["ability_type"] = "morph"
    T["AllPlayers"][ability_id]["casting_type"] = "instant"
    T["AllPlayers"][ability_id]["anim_charge"] = 23
    T["AllPlayers"][ability_id]["anim_cast"] = 57
    T["AllPlayers"][ability_id]["tooltip"] = "Sneak"
    T["AllPlayers"][ability_id]["extented_tooltip"] = "Learns how to sneak to perform steath action such as assassinate and steal"
    T["AllPlayers"][ability_id]["max_level"] = 1
    cooldown = 1
    for p = 1, 10 , 1 do
        T[ConvertedPlayer(p)][ability_id]["level"] = 0
        T[ConvertedPlayer(p)][ability_id]["ratio"] = 5 / cooldown
    end

    ability_id = FourCC("Alam")
    T["AllPlayers"][ability_id]["path"] = "BTNPickUpItem.blp"
    T["AllPlayers"][ability_id]["ability_type"] = "instant"
    T["AllPlayers"][ability_id]["casting_type"] = "instant"
    T["AllPlayers"][ability_id]["anim_charge"] = 23
    T["AllPlayers"][ability_id]["anim_cast"] = 57
    T["AllPlayers"][ability_id]["tooltip"] = "Pick Pocket"
    T["AllPlayers"][ability_id]["extented_tooltip"] = "While Stealth, sneak behind the target pick pocket him"
    T["AllPlayers"][ability_id]["max_level"] = 5
    cooldown = 1
    for p = 1, 10 , 1 do
        T[ConvertedPlayer(p)][ability_id]["mana_cost"] = 25
        T[ConvertedPlayer(p)][ability_id]["level"] = 0
        T[ConvertedPlayer(p)][ability_id]["ratio"] = 5 / cooldown
    end

    ability_id = FourCC("AUsl")
    T["AllPlayers"][ability_id]["path"] = "BTNSleep.blp"
    T["AllPlayers"][ability_id]["ability_type"] = "curse"
    T["AllPlayers"][ability_id]["casting_type"] = "instant"
    T["AllPlayers"][ability_id]["anim_charge"] = 23
    T["AllPlayers"][ability_id]["anim_cast"] = 57
    T["AllPlayers"][ability_id]["tooltip"] = "Sleep"
    T["AllPlayers"][ability_id]["extented_tooltip"] = "Forces the target to fall asleep"
    T["AllPlayers"][ability_id]["max_level"] = 5
    cooldown = 60
    for p = 1, 10 , 1 do
        T[ConvertedPlayer(p)][ability_id]["level"] = 0
        T[ConvertedPlayer(p)][ability_id]["ratio"] = 5 / cooldown
    end

    ability_id = FourCC("ANsi")
    T["AllPlayers"][ability_id]["path"] = "BTNSilence.blp"
    T["AllPlayers"][ability_id]["ability_type"] = "passive"
    T["AllPlayers"][ability_id]["casting_type"] = "passive"
    T["AllPlayers"][ability_id]["anim_charge"] = 23
    T["AllPlayers"][ability_id]["anim_cast"] = 57
    T["AllPlayers"][ability_id]["tooltip"] = "Amnesia"
    T["AllPlayers"][ability_id]["extented_tooltip"] = "The target forgets all of the hero's crimes."
    T["AllPlayers"][ability_id]["max_level"] = 5
    for p = 1, 10 , 1 do
        T[ConvertedPlayer(p)][ability_id]["level"] = 0
    end

    ability_id = FourCC("ACam")
    T["AllPlayers"][ability_id]["path"] = "BTNAntiMagicShell.blp"
    T["AllPlayers"][ability_id]["ability_type"] = "trap"
    T["AllPlayers"][ability_id]["casting_type"] = "instant"
    T["AllPlayers"][ability_id]["anim_charge"] = 23
    T["AllPlayers"][ability_id]["anim_cast"] = 57
    T["AllPlayers"][ability_id]["tooltip"] = "Poison Trap"
    T["AllPlayers"][ability_id]["extented_tooltip"] = "Lays down a trap for any enemy to walk on"
    T["AllPlayers"][ability_id]["max_level"] = 5
    cooldown = 60
    for p = 1, 10 , 1 do
        T[ConvertedPlayer(p)][ability_id]["mana_cost"] = 25
        T[ConvertedPlayer(p)][ability_id]["level"] = 0
        T[ConvertedPlayer(p)][ability_id]["ratio"] = 5 / cooldown
    end

    ability_id = FourCC("ACen")
    T["AllPlayers"][ability_id]["path"] = "BTNEnsnare.blp"
    T["AllPlayers"][ability_id]["ability_type"] = "stun"
    T["AllPlayers"][ability_id]["casting_type"] = "instant"
    T["AllPlayers"][ability_id]["anim_charge"] = 23
    T["AllPlayers"][ability_id]["anim_cast"] = 57
    T["AllPlayers"][ability_id]["tooltip"] = "Ensnare"
    T["AllPlayers"][ability_id]["extented_tooltip"] = "Ensnare a targeted enemy makeing it unable to move"
    T["AllPlayers"][ability_id]["max_level"] = 5
    cooldown = 70
    for p = 1, 10 , 1 do
        T[ConvertedPlayer(p)][ability_id]["mana_cost"] = 25
        T[ConvertedPlayer(p)][ability_id]["level"] = 0
        T[ConvertedPlayer(p)][ability_id]["ratio"] = 5 / cooldown
    end

    ability_id = FourCC("kymn")
    T["AllPlayers"][ability_id]["path"] = "BTNMoonKey.blp"
    T["AllPlayers"][ability_id]["ability_type"] = "lockpick"
    T["AllPlayers"][ability_id]["casting_type"] = "lockpick"
    T["AllPlayers"][ability_id]["anim_charge"] = 23
    T["AllPlayers"][ability_id]["anim_cast"] = 57
    T["AllPlayers"][ability_id]["tooltip"] = "Lock Pick"
    T["AllPlayers"][ability_id]["extented_tooltip"] = "Pick A Lock"
    T["AllPlayers"][ability_id]["max_level"] = 5
    cooldown = 1
    for p = 1, 10 , 1 do
        T[ConvertedPlayer(p)][ability_id]["mana_cost"] = 0
        T[ConvertedPlayer(p)][ability_id]["level"] = 0
        T[ConvertedPlayer(p)][ability_id]["ratio"] = 5 / cooldown
    end



    -- Assassin
    ability_id = FourCC("Asac")
    T["AllPlayers"][ability_id]["path"] = "BTNSacrifice.blp"
    T["AllPlayers"][ability_id]["ability_type"] = "instant"
    T["AllPlayers"][ability_id]["casting_type"] = "instant"
    T["AllPlayers"][ability_id]["anim_charge"] = 23
    T["AllPlayers"][ability_id]["anim_cast"] = 57
    T["AllPlayers"][ability_id]["tooltip"] = "Backstab"
    T["AllPlayers"][ability_id]["extented_tooltip"] = "While Stealth, sneak behind the target to critically stike him"
    T["AllPlayers"][ability_id]["max_level"] = 5
    cooldown = 1
    for p = 1, 10 , 1 do
        T[ConvertedPlayer(p)][ability_id]["level"] = 0
        T[ConvertedPlayer(p)][ability_id]["ratio"] = 5 / cooldown
    end

    ability_id = FourCC("AEfk")
    T["AllPlayers"][ability_id]["path"] = "BTNFanOfKnives.blp"
    T["AllPlayers"][ability_id]["ability_type"] = "teleport"
    T["AllPlayers"][ability_id]["casting_type"] = "instant"
    T["AllPlayers"][ability_id]["anim_charge"] = 23
    T["AllPlayers"][ability_id]["anim_cast"] = 57
    T["AllPlayers"][ability_id]["tooltip"] = "Vanish"
    T["AllPlayers"][ability_id]["extented_tooltip"] = "Jumps to a target hurling a flurry of Knives"
    T["AllPlayers"][ability_id]["max_level"] = 5
    cooldown = 20
    for p = 1, 10 , 1 do
        T[ConvertedPlayer(p)][ability_id]["mana_cost"] = 25
        T[ConvertedPlayer(p)][ability_id]["level"] = 0
        T[ConvertedPlayer(p)][ability_id]["ratio"] = 5 / cooldown
    end

    ability_id = FourCC("AEsh")
    T["AllPlayers"][ability_id]["path"] = "BTNShadowStrike.blp"
    T["AllPlayers"][ability_id]["ability_type"] = "damage"
    T["AllPlayers"][ability_id]["casting_type"] = "instant"
    T["AllPlayers"][ability_id]["anim_charge"] = 23
    T["AllPlayers"][ability_id]["anim_cast"] = 57
    T["AllPlayers"][ability_id]["tooltip"] = "Shadow Strike"
    T["AllPlayers"][ability_id]["extented_tooltip"] = "Hurls a poisoned dagger which deals large initial damage, and then deals damage over time."
    T["AllPlayers"][ability_id]["max_level"] = 5
    cooldown = 20
    for p = 1, 10 , 1 do
        T[ConvertedPlayer(p)][ability_id]["mana_cost"] = 25
        T[ConvertedPlayer(p)][ability_id]["level"] = 0
        T[ConvertedPlayer(p)][ability_id]["ratio"] = 5 / cooldown
    end


end