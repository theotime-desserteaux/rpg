function DruidTable()
    -- Wild
    local cooldown
    local ability_id = FourCC("nmsh")
    T["AllPlayers"][ability_id]["path"] = "BTNMisha.blp"
    T["AllPlayers"][ability_id]["ability_type"] = "morph"
    T["AllPlayers"][ability_id]["casting_type"] = "morph"
    T["AllPlayers"][ability_id]["anim_charge"] = 23
    T["AllPlayers"][ability_id]["anim_cast"] = 57
    T["AllPlayers"][ability_id]["tooltip"] = "Bear Form"
    T["AllPlayers"][ability_id]["extented_tooltip"] = "Morph into a powerful Bear"
    T["AllPlayers"][ability_id]["max_level"] = 4
    cooldown = 15
    for p = 1, 10 , 1 do
        T[ConvertedPlayer(p)][ability_id]["mana_cost"] = 15
        T[ConvertedPlayer(p)][ability_id]["level"] = 0
        T[ConvertedPlayer(p)][ability_id]["ratio"] = 5 / cooldown
    end

    ability_id = FourCC("osw2")
    T["AllPlayers"][ability_id]["path"] = "BTNDireWolfLV2.blp"
    T["AllPlayers"][ability_id]["ability_type"] = "morph"
    T["AllPlayers"][ability_id]["casting_type"] = "morph"
    T["AllPlayers"][ability_id]["anim_charge"] = 23
    T["AllPlayers"][ability_id]["anim_cast"] = 57
    T["AllPlayers"][ability_id]["tooltip"] = "Wolf Form"
    T["AllPlayers"][ability_id]["extented_tooltip"] = "Morph into a powerful Wolf"
    T["AllPlayers"][ability_id]["max_level"] = 4
    cooldown = 15
    for p = 1, 10 , 1 do
        T[ConvertedPlayer(p)][ability_id]["mana_cost"] = 15
        T[ConvertedPlayer(p)][ability_id]["level"] = 0
        T[ConvertedPlayer(p)][ability_id]["ratio"] = 5 / cooldown
    end

    ability_id = FourCC("nqb1")
    T["AllPlayers"][ability_id]["path"] = "BTNQuillBeast.blp"
    T["AllPlayers"][ability_id]["ability_type"] = "morph"
    T["AllPlayers"][ability_id]["casting_type"] = "morph"
    T["AllPlayers"][ability_id]["anim_charge"] = 23
    T["AllPlayers"][ability_id]["anim_cast"] = 57
    T["AllPlayers"][ability_id]["tooltip"] = "Boar Form"
    T["AllPlayers"][ability_id]["extented_tooltip"] = "Morph into a boar"
    T["AllPlayers"][ability_id]["max_level"] = 4
    cooldown = 15
    for p = 1, 10 , 1 do
        T[ConvertedPlayer(p)][ability_id]["mana_cost"] = 15
        T[ConvertedPlayer(p)][ability_id]["level"] = 0
        T[ConvertedPlayer(p)][ability_id]["ratio"] = 5 / cooldown
    end

    ability_id = FourCC("Aegr")
    T["AllPlayers"][ability_id]["path"] = "BTNElunesBlessing.blp"
    T["AllPlayers"][ability_id]["ability_type"] = "passive"
    T["AllPlayers"][ability_id]["casting_type"] = "passive"
    T["AllPlayers"][ability_id]["anim_charge"] = 23
    T["AllPlayers"][ability_id]["anim_cast"] = 57
    T["AllPlayers"][ability_id]["tooltip"] = "Night Predator"
    T["AllPlayers"][ability_id]["extented_tooltip"] = "You have increased movement and attack speed at night"
    T["AllPlayers"][ability_id]["max_level"] = 4
    for p = 1, 10 , 1 do
        T[ConvertedPlayer(p)][ability_id]["level"] = 0
    end

    -- Guardian
    ability_id = FourCC("Reeb")
    T["AllPlayers"][ability_id]["path"] = "BTNEnchantedBears.blp"
    T["AllPlayers"][ability_id]["ability_type"] = "buff"
    T["AllPlayers"][ability_id]["casting_type"] = "instant"
    T["AllPlayers"][ability_id]["anim_charge"] = 23
    T["AllPlayers"][ability_id]["anim_cast"] = 57
    T["AllPlayers"][ability_id]["tooltip"] = "Mark Of the Bear"
    T["AllPlayers"][ability_id]["extented_tooltip"] = "Mark All allies with the Mark of the Bear"
    T["AllPlayers"][ability_id]["max_level"] = 5
    cooldown = 15
    for p = 1, 10 , 1 do
        T[ConvertedPlayer(p)][ability_id]["mana_cost"] = 15
        T[ConvertedPlayer(p)][ability_id]["level"] = 0
        T[ConvertedPlayer(p)][ability_id]["ratio"] = 5 / cooldown
    end

    ability_id = FourCC("Reec")
    T["AllPlayers"][ability_id]["path"] = "BTNEnchantedCrows.blp"
    T["AllPlayers"][ability_id]["ability_type"] = "buff"
    T["AllPlayers"][ability_id]["casting_type"] = "instant"
    T["AllPlayers"][ability_id]["anim_charge"] = 23
    T["AllPlayers"][ability_id]["anim_cast"] = 57
    T["AllPlayers"][ability_id]["tooltip"] = "Mark Of the Raven"
    T["AllPlayers"][ability_id]["extented_tooltip"] = "Mark All allies with the Mark of the Raven"
    T["AllPlayers"][ability_id]["max_level"] = 5
    cooldown = 15
    for p = 1, 10 , 1 do
        T[ConvertedPlayer(p)][ability_id]["mana_cost"] = 15
        T[ConvertedPlayer(p)][ability_id]["level"] = 0
        T[ConvertedPlayer(p)][ability_id]["ratio"] = 5 / cooldown
    end

    ability_id = FourCC("ntrh")
    T["AllPlayers"][ability_id]["path"] = "BTNSeaTurtleGreenHatchling.blp"
    T["AllPlayers"][ability_id]["ability_type"] = "buff"
    T["AllPlayers"][ability_id]["casting_type"] = "instant"
    T["AllPlayers"][ability_id]["anim_charge"] = 23
    T["AllPlayers"][ability_id]["anim_cast"] = 57
    T["AllPlayers"][ability_id]["tooltip"] = "Mark Of the Turtle"
    T["AllPlayers"][ability_id]["extented_tooltip"] = "Mark All allies with the Mark of the Turtle"
    T["AllPlayers"][ability_id]["max_level"] = 5
    cooldown = 15
    for p = 1, 10 , 1 do
        T[ConvertedPlayer(p)][ability_id]["mana_cost"] = 15
        T[ConvertedPlayer(p)][ability_id]["level"] = 0
        T[ConvertedPlayer(p)][ability_id]["ratio"] = 5 / cooldown
    end

    ability_id = FourCC("Arej")
    T["AllPlayers"][ability_id]["path"] = "BTNRejuvenation.blp"
    T["AllPlayers"][ability_id]["ability_type"] = "heal"
    T["AllPlayers"][ability_id]["casting_type"] = "target"
    T["AllPlayers"][ability_id]["anim_charge"] = 23
    T["AllPlayers"][ability_id]["anim_cast"] = 57
    T["AllPlayers"][ability_id]["tooltip"] = "Strength of the Forest"
    T["AllPlayers"][ability_id]["extented_tooltip"] = "Uses Nature's will to heal a target"
    T["AllPlayers"][ability_id]["max_level"] = 5
    T["AllPlayers"][ability_id]["order"] = "rejuvenation"
    cooldown = 15
    for p = 1, 10 , 1 do
        T[ConvertedPlayer(p)][ability_id]["mana_cost"] = 15
        T[ConvertedPlayer(p)][ability_id]["level"] = 0
        T[ConvertedPlayer(p)][ability_id]["ratio"] = 5 / cooldown
    end

    ability_id = FourCC("Aenr")
    T["AllPlayers"][ability_id]["path"] = "BTNEntanglingRoots.blp"
    T["AllPlayers"][ability_id]["ability_type"] = "stun"
    T["AllPlayers"][ability_id]["casting_type"] = "target"
    T["AllPlayers"][ability_id]["anim_charge"] = 23
    T["AllPlayers"][ability_id]["anim_cast"] = 57
    T["AllPlayers"][ability_id]["tooltip"] = "Entangling Roots"
    T["AllPlayers"][ability_id]["extented_tooltip"] = "Causes roots to burst from the ground, immobilizing, disarming and damaging a target enemy"
    T["AllPlayers"][ability_id]["max_level"] = 5
    T["AllPlayers"][ability_id]["order"] = "entanglingroots"
    T["AllPlayers"][ability_id]["damage_initial"] = 10
    T["AllPlayers"][ability_id]["damage_per_lvl"] = 10
    cooldown = 15
    for p = 1, 10 , 1 do
        T[ConvertedPlayer(p)][ability_id]["mana_cost"] = 15
        T[ConvertedPlayer(p)][ability_id]["level"] = 0
        T[ConvertedPlayer(p)][ability_id]["ratio"] = 5 / cooldown
    end

    ability_id = FourCC("ACfr")
    T["AllPlayers"][ability_id]["path"] = "BTNEnt.blp"
    T["AllPlayers"][ability_id]["ability_type"] = "summon"
    T["AllPlayers"][ability_id]["casting_type"] = "point"
    T["AllPlayers"][ability_id]["anim_charge"] = 23
    T["AllPlayers"][ability_id]["anim_cast"] = 57
    T["AllPlayers"][ability_id]["tooltip"] = "Force of Nature"
    T["AllPlayers"][ability_id]["extented_tooltip"] = "Infuses targeted trees with life"
    T["AllPlayers"][ability_id]["max_level"] = 3
    T["AllPlayers"][ability_id]["order"] = "forceofnature"
    cooldown = 15
    for p = 1, 10 , 1 do
        T[ConvertedPlayer(p)][ability_id]["mana_cost"] = 15
        T[ConvertedPlayer(p)][ability_id]["level"] = 0
        T[ConvertedPlayer(p)][ability_id]["ratio"] = 5 / cooldown
    end

    ability_id = FourCC("AEah")
    T["AllPlayers"][ability_id]["path"] = "BTNThorns.blp"
    T["AllPlayers"][ability_id]["ability_type"] = "passive"
    T["AllPlayers"][ability_id]["casting_type"] = "passive"
    T["AllPlayers"][ability_id]["anim_charge"] = 23
    T["AllPlayers"][ability_id]["anim_cast"] = 57
    T["AllPlayers"][ability_id]["tooltip"] = "Natural Guardian"
    T["AllPlayers"][ability_id]["extented_tooltip"] = "All Nearby allies have increased Armor"
    T["AllPlayers"][ability_id]["max_level"] = 3
    for p = 1, 10 , 1 do
        T[ConvertedPlayer(p)][ability_id]["level"] = 0
    end

    ability_id = FourCC("AEtq")
    T["AllPlayers"][ability_id]["path"] = "BTNTranquility.blp"
    T["AllPlayers"][ability_id]["ability_type"] = "heal"
    T["AllPlayers"][ability_id]["casting_type"] = "self"
    T["AllPlayers"][ability_id]["anim_charge"] = 23
    T["AllPlayers"][ability_id]["anim_cast"] = 57
    T["AllPlayers"][ability_id]["tooltip"] = "Tranquility"
    T["AllPlayers"][ability_id]["extented_tooltip"] = "Causes rains of healing energy to pour down, healing allies."
    T["AllPlayers"][ability_id]["max_level"] = 5
    T["AllPlayers"][ability_id]["order"] = "tranquility"
    cooldown = 60
    for p = 1, 10 , 1 do
        T[ConvertedPlayer(p)][ability_id]["mana_cost"] = 100
        T[ConvertedPlayer(p)][ability_id]["level"] = 0
        T[ConvertedPlayer(p)][ability_id]["ratio"] = 5 / cooldown
    end


    -- Storm
    ability_id = FourCC("Acyc")
    T["AllPlayers"][ability_id]["path"] = "BTNMonsoon.blp"
    T["AllPlayers"][ability_id]["ability_type"] = "summon"
    T["AllPlayers"][ability_id]["casting_type"] = "point"
    T["AllPlayers"][ability_id]["anim_charge"] = 23
    T["AllPlayers"][ability_id]["anim_cast"] = 57
    T["AllPlayers"][ability_id]["tooltip"] = "Storm"
    T["AllPlayers"][ability_id]["extented_tooltip"] = "Calls upon Nature's Wrath to unleash a Tornado"
    T["AllPlayers"][ability_id]["max_level"] = 1
    cooldown = 15
    for p = 1, 10 , 1 do
        T[ConvertedPlayer(p)][ability_id]["mana_cost"] = 15
        T[ConvertedPlayer(p)][ability_id]["level"] = 0
        T[ConvertedPlayer(p)][ability_id]["ratio"] = 5 / cooldown
    end
end