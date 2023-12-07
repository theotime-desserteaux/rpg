function NecroTable()

    -- Death Legions --
    local cooldown
    local ability_id = FourCC("Arai")
    T["AllPlayers"][ability_id]["path"] = "BTNSkeletonMage.blp"
    T["AllPlayers"][ability_id]["ability_type"] = "summon"
    T["AllPlayers"][ability_id]["casting_type"] = "summon"
    T["AllPlayers"][ability_id]["anim_charge"] = 23
    T["AllPlayers"][ability_id]["anim_cast"] = 57
    T["AllPlayers"][ability_id]["tooltip"] = "Raise Skeleton"
    T["AllPlayers"][ability_id]["extented_tooltip"] = "Raise a Skeleton from a corpse"
    T["AllPlayers"][ability_id]["max_level"] = 1
    cooldown = 60
    for p = 1, 10 , 1 do
        T[ConvertedPlayer(p)][ability_id]["level"] = 0
        T[ConvertedPlayer(p)][ability_id]["ratio"] = 5 / cooldown
    end

    ability_id = FourCC("uabo")
    T["AllPlayers"][ability_id]["path"] = "BTNAbomination.blp"
    T["AllPlayers"][ability_id]["ability_type"] = "summon"
    T["AllPlayers"][ability_id]["casting_type"] = "summon"
    T["AllPlayers"][ability_id]["anim_charge"] = 23
    T["AllPlayers"][ability_id]["anim_cast"] = 57
    T["AllPlayers"][ability_id]["tooltip"] = "Abomination"
    T["AllPlayers"][ability_id]["extented_tooltip"] = "Uses multiple corpses nearby to assemble an Anomination"
    T["AllPlayers"][ability_id]["max_level"] = 1
    cooldown = 210
    for p = 1, 10 , 1 do
        T[ConvertedPlayer(p)][ability_id]["mana_cost"] = 50
        T[ConvertedPlayer(p)][ability_id]["level"] = 0
        T[ConvertedPlayer(p)][ability_id]["ratio"] = 5 / cooldown
    end

    ability_id = FourCC("Auhf")
    T["AllPlayers"][ability_id]["path"] = "BTNAnimateDead.blp"
    T["AllPlayers"][ability_id]["ability_type"] = "passive"
    T["AllPlayers"][ability_id]["casting_type"] = "passive"
    T["AllPlayers"][ability_id]["anim_charge"] = 23
    T["AllPlayers"][ability_id]["anim_cast"] = 57
    T["AllPlayers"][ability_id]["tooltip"] = "Master of the Deads"
    T["AllPlayers"][ability_id]["extented_tooltip"] = "All your undead minions have increased health and damage"
    T["AllPlayers"][ability_id]["max_level"] = 1
    for p = 1, 10 , 1 do
        T[ConvertedPlayer(p)][ability_id]["level"] = 0
    end

    ability_id = FourCC("AUfu")
    T["AllPlayers"][ability_id]["path"] = "BTNFrostArmor.blp"
    T["AllPlayers"][ability_id]["ability_type"] = "buff"
    T["AllPlayers"][ability_id]["casting_type"] = "instant"
    T["AllPlayers"][ability_id]["anim_charge"] = 23
    T["AllPlayers"][ability_id]["anim_cast"] = 57
    T["AllPlayers"][ability_id]["tooltip"] = "Cold Bones"
    T["AllPlayers"][ability_id]["extented_tooltip"] = "Grants the targeted undead minion cold bonus damage"
    T["AllPlayers"][ability_id]["max_level"] = 1
    cooldown = 20
    for p = 1, 10 , 1 do
        T[ConvertedPlayer(p)][ability_id]["mana_cost"] = 50
        T[ConvertedPlayer(p)][ability_id]["level"] = 0
        T[ConvertedPlayer(p)][ability_id]["ratio"] = 5 / cooldown
    end

    ability_id = FourCC("ACps")
    T["AllPlayers"][ability_id]["path"] = "BTNPossession.blp"
    T["AllPlayers"][ability_id]["ability_type"] = "buff"
    T["AllPlayers"][ability_id]["casting_type"] = "instant"
    T["AllPlayers"][ability_id]["anim_charge"] = 23
    T["AllPlayers"][ability_id]["anim_cast"] = 57
    T["AllPlayers"][ability_id]["tooltip"] = "Strength from Beyond"
    T["AllPlayers"][ability_id]["extented_tooltip"] = "Grants you increased Mana Regeneration for short time"
    T["AllPlayers"][ability_id]["max_level"] = 1
    cooldown = 20
    for p = 1, 10 , 1 do
        T[ConvertedPlayer(p)][ability_id]["mana_cost"] = 50
        T[ConvertedPlayer(p)][ability_id]["level"] = 0
        T[ConvertedPlayer(p)][ability_id]["ratio"] = 5 / cooldown
    end


    --Curse
    ability_id = FourCC("ACdc")
    T["AllPlayers"][ability_id]["path"] = "BTNDeathCoil.blp"
    T["AllPlayers"][ability_id]["ability_type"] = "curse"
    T["AllPlayers"][ability_id]["casting_type"] = "instant"
    T["AllPlayers"][ability_id]["anim_charge"] = 23
    T["AllPlayers"][ability_id]["anim_cast"] = 57
    T["AllPlayers"][ability_id]["tooltip"] = "Poisonous Cloud"
    T["AllPlayers"][ability_id]["extented_tooltip"] = "Intoxicating cloud poisoning all enemies"
    T["AllPlayers"][ability_id]["max_level"] = 1
    cooldown = 20
    for p = 1, 10 , 1 do
        T[ConvertedPlayer(p)][ability_id]["mana_cost"] = 50
        T[ConvertedPlayer(p)][ability_id]["level"] = 0
        T[ConvertedPlayer(p)][ability_id]["ratio"] = 5 / cooldown
    end

    -- Blood Lord --
    ability_id = FourCC("Amel")
    T["AllPlayers"][ability_id]["path"] = "BTNCorpseExplode.blp"
    T["AllPlayers"][ability_id]["ability_type"] = "targetAOE"
    T["AllPlayers"][ability_id]["casting_type"] = "instant"
    T["AllPlayers"][ability_id]["anim_charge"] = 23
    T["AllPlayers"][ability_id]["anim_cast"] = 57
    T["AllPlayers"][ability_id]["tooltip"] = "Explode Corpse"
    T["AllPlayers"][ability_id]["extented_tooltip"] = "Explode corpses around the caster damaging close enemies"
    T["AllPlayers"][ability_id]["max_level"] = 5
    cooldown = 1
    for p = 1, 10 , 1 do
        T[ConvertedPlayer(p)][ability_id]["mana_cost"] = 50
        T[ConvertedPlayer(p)][ability_id]["level"] = 0
        T[ConvertedPlayer(p)][ability_id]["ratio"] = 5 / cooldown
    end

    ability_id = FourCC("AUim")
    T["AllPlayers"][ability_id]["path"] = "BTNImpale.blp"
    T["AllPlayers"][ability_id]["ability_type"] = "line"
    T["AllPlayers"][ability_id]["casting_type"] = "charge"
    T["AllPlayers"][ability_id]["anim_charge"] = 23
    T["AllPlayers"][ability_id]["anim_cast"] = 57
    T["AllPlayers"][ability_id]["tooltip"] = "Impale"
    T["AllPlayers"][ability_id]["extented_tooltip"] = "Channels your energy to implate enemies in front of you"
    T["AllPlayers"][ability_id]["max_level"] = 1
    cooldown = 20
    for p = 1, 10 , 1 do
        T[ConvertedPlayer(p)][ability_id]["level"] = 0
        T[ConvertedPlayer(p)][ability_id]["ratio"] = 5 / cooldown
    end

    ability_id = FourCC("AUav")
    T["AllPlayers"][ability_id]["path"] = "BTNVampiricAura.blp"
    T["AllPlayers"][ability_id]["ability_type"] = "passive"
    T["AllPlayers"][ability_id]["casting_type"] = "passive"
    T["AllPlayers"][ability_id]["anim_charge"] = 23
    T["AllPlayers"][ability_id]["anim_cast"] = 57
    T["AllPlayers"][ability_id]["tooltip"] = "Thirst for Blood"
    T["AllPlayers"][ability_id]["extented_tooltip"] = "You deal increased damage the more health you miss"
    T["AllPlayers"][ability_id]["max_level"] = 1
    for p = 1, 10 , 1 do
        T[ConvertedPlayer(p)][ability_id]["level"] = 0
    end

    ability_id = FourCC("ACdr")
    cooldown = 20
    T["AllPlayers"][ability_id]["path"] = "BTNLifeDrain.blp"
    T["AllPlayers"][ability_id]["ability_type"] = "drain"
    T["AllPlayers"][ability_id]["casting_type"] = "channel"
    T["AllPlayers"][ability_id]["anim_charge"] = 23
    T["AllPlayers"][ability_id]["anim_cast"] = 57
    T["AllPlayers"][ability_id]["tooltip"] = "Drain Life"
    T["AllPlayers"][ability_id]["extented_tooltip"] = "Suck out the life of a targeted enemy"
    T["AllPlayers"][ability_id]["max_level"] = 3
    cooldown = 30
    for p = 1, 10 , 1 do
        T[ConvertedPlayer(p)][ability_id]["level"] = 0
        T[ConvertedPlayer(p)][ability_id]["ratio"] = 5 / cooldown
    end

    ability_id = FourCC("Acan")
    cooldown = 20
    T["AllPlayers"][ability_id]["path"] = "BTNCannibalize.blp"
    T["AllPlayers"][ability_id]["ability_type"] = "curse"
    T["AllPlayers"][ability_id]["casting_type"] = "instant"
    T["AllPlayers"][ability_id]["anim_charge"] = 23
    T["AllPlayers"][ability_id]["anim_cast"] = 57
    T["AllPlayers"][ability_id]["tooltip"] = "Cannibalize"
    T["AllPlayers"][ability_id]["extented_tooltip"] = "Ills the mind of an enemy into forcing him implatento Cannibalizing "
    T["AllPlayers"][ability_id]["max_level"] = 3
    cooldown = 30
    for p = 1, 10 , 1 do
        T[ConvertedPlayer(p)][ability_id]["level"] = 0
        T[ConvertedPlayer(p)][ability_id]["life_cost"] = 30
        T[ConvertedPlayer(p)][ability_id]["ratio"] = 5 / cooldown
    end

    ability_id = FourCC("modt")
    cooldown = 20
    T["AllPlayers"][ability_id]["path"] = "BTNMaskOfDeath.blp"
    T["AllPlayers"][ability_id]["ability_type"] = "damage"
    T["AllPlayers"][ability_id]["casting_type"] = "instant"
    T["AllPlayers"][ability_id]["anim_charge"] = 23
    T["AllPlayers"][ability_id]["anim_cast"] = 57
    T["AllPlayers"][ability_id]["tooltip"] = "Call of Death"
    T["AllPlayers"][ability_id]["extented_tooltip"] = "IF the Hero Dies while this power is activated, Death itself will avenge him"
    T["AllPlayers"][ability_id]["max_level"] = 3
    cooldown = 200
    for p = 1, 10 , 1 do
        T[ConvertedPlayer(p)][ability_id]["level"] = 0
        T[ConvertedPlayer(p)][ability_id]["life_cost"] = 30
        T[ConvertedPlayer(p)][ability_id]["ratio"] = 5 / cooldown
    end

end