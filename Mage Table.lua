function MageTable()
    -- Fire
    local cooldown
    local ability_id = FourCC("ACfb")
    T["AllPlayers"][ability_id]["path"] = "BTNFireBolt.blp"
    T["AllPlayers"][ability_id]["ability_type"] = "targetAOE"
    T["AllPlayers"][ability_id]["casting_type"] = "charge"
    T["AllPlayers"][ability_id]["anim_charge"] = 23
    T["AllPlayers"][ability_id]["anim_cast"] = 57
    T["AllPlayers"][ability_id]["missile_model"] = "Abilities\\Weapons\\FireBallMissile\\FireBallMissile.mdl"
    T["AllPlayers"][ability_id]["missile_type"] = "bolt"
    T["AllPlayers"][ability_id]["missile_speed"] = 33
    T["AllPlayers"][ability_id]["tooltip"] = "Fireball"
    T["AllPlayers"][ability_id]["extented_tooltip"] = "Charges a fireball that will be thrown to the ennemy"
    T["AllPlayers"][ability_id]["arc"] = 10
    T["AllPlayers"][ability_id]["max_level"] = 5
    cooldown = 2.5
    for p = 1, 10 , 1 do
        T[ConvertedPlayer(p)][ability_id]["mana_cost"] = 50
        T[ConvertedPlayer(p)][ability_id]["level"] = 0
        T[ConvertedPlayer(p)][ability_id]["ratio"] = 5 / cooldown
    end

    ability_id = FourCC("AEim")
    T["AllPlayers"][ability_id]["path"] = "BTNImmolationOn.blp"
    T["AllPlayers"][ability_id]["ability_type"] = "buff"
    T["AllPlayers"][ability_id]["casting_type"] = "normal"
    T["AllPlayers"][ability_id]["anim_charge"] = 23
    T["AllPlayers"][ability_id]["anim_cast"] = 57
    T["AllPlayers"][ability_id]["tooltip"] = "Immolation"
    T["AllPlayers"][ability_id]["extented_tooltip"] = "Engulf yourself in flames damaging nearby enemies"
    T["AllPlayers"][ability_id]["arc"] = 10
    T["AllPlayers"][ability_id]["max_level"] = 5
    cooldown = 2.5
    for p = 1, 10 , 1 do
        T[ConvertedPlayer(p)][ability_id]["mana_cost"] = 50
        T[ConvertedPlayer(p)][ability_id]["level"] = 0
        T[ConvertedPlayer(p)][ability_id]["ratio"] = 5 / cooldown
    end


    ability_id = FourCC("AHfs")
    T["AllPlayers"][ability_id]["path"] = "BTNWallOfFire.blp"
    T["AllPlayers"][ability_id]["ability_type"] = "TargetAoE"
    T["AllPlayers"][ability_id]["casting_type"] = "charging"
    T["AllPlayers"][ability_id]["anim_charge"] = 23
    T["AllPlayers"][ability_id]["anim_cast"] = 57
    T["AllPlayers"][ability_id]["tooltip"] = "Pillars of Flames"
    T["AllPlayers"][ability_id]["extented_tooltip"] = "After 10 seconds of casting, scorches all the lands surrounding you"
    T["AllPlayers"][ability_id]["max_level"] = 1
    cooldown = 120
    for p = 1, 10 , 1 do
        T[ConvertedPlayer(p)][ability_id]["mana_cost"] = 200
        T[ConvertedPlayer(p)][ability_id]["level"] = 0
        T[ConvertedPlayer(p)][ability_id]["ratio"] = 5 / cooldown
    end

    ability_id = FourCC("AUin")
    T["AllPlayers"][ability_id]["path"] = "BTNFireRocks.blp"
    T["AllPlayers"][ability_id]["ability_type"] = "TargetAoE"
    T["AllPlayers"][ability_id]["casting_type"] = "instant"
    T["AllPlayers"][ability_id]["anim_charge"] = 23
    T["AllPlayers"][ability_id]["anim_cast"] = 57
    T["AllPlayers"][ability_id]["tooltip"] = "Meteor"
    T["AllPlayers"][ability_id]["extented_tooltip"] = "Calls a meteor from the sky"
    T["AllPlayers"][ability_id]["max_level"] = 3
    cooldown = 55
    for p = 1, 10 , 1 do
        T[ConvertedPlayer(p)][ability_id]["mana_cost"] = 25
        T[ConvertedPlayer(p)][ability_id]["level"] = 0
        T[ConvertedPlayer(p)][ability_id]["ratio"] = 5 / cooldown
    end

    -- Ice
    ability_id = FourCC("ACcb")
    T["AllPlayers"][ability_id]["path"] = "BTNFrostBolt.blp"
    T["AllPlayers"][ability_id]["ability_type"] = "linedamage"
    T["AllPlayers"][ability_id]["casting_type"] = "instant"
    T["AllPlayers"][ability_id]["anim_charge"] = 23
    T["AllPlayers"][ability_id]["anim_cast"] = 57
    T["AllPlayers"][ability_id]["missile_model"] = "Abilities\\Spells\\Other\\FrostBolt\\FrostBoltMissile.mdl"
    T["AllPlayers"][ability_id]["missile_type"] = "bolt"
    T["AllPlayers"][ability_id]["missile_speed"] = 33
    T["AllPlayers"][ability_id]["tooltip"] = "Ice Lance"
    T["AllPlayers"][ability_id]["extented_tooltip"] = "Throws an ice lance to an enemy piercing through its flesh"
    T["AllPlayers"][ability_id]["arc"] = 10
    T["AllPlayers"][ability_id]["max_level"] = 5
    cooldown = 2.5
    for p = 1, 10 , 1 do
        T[ConvertedPlayer(p)][ability_id]["mana_cost"] = 50
        T[ConvertedPlayer(p)][ability_id]["level"] = 0
        T[ConvertedPlayer(p)][ability_id]["ratio"] = 5 / cooldown
    end

    ability_id = FourCC("ACbz")
    T["AllPlayers"][ability_id]["path"] = "BTNBlizzard.blp"
    T["AllPlayers"][ability_id]["ability_type"] = "TargetAoE"
    T["AllPlayers"][ability_id]["casting_type"] = "point"
    T["AllPlayers"][ability_id]["order"] = "blizzard"
    T["AllPlayers"][ability_id]["anim_charge"] = 23
    T["AllPlayers"][ability_id]["anim_cast"] = 57
    T["AllPlayers"][ability_id]["tooltip"] = "Blizzard"
    T["AllPlayers"][ability_id]["extented_tooltip"] = "Call upon a ice storm to slow and damage targeted zone"
    T["AllPlayers"][ability_id]["max_level"] = 1
    T["AllPlayers"][ability_id]["damage"] = 3
    T["AllPlayers"][ability_id]["aoe"] = 200
    T["AllPlayers"][ability_id]["waves"] = 3
    T["AllPlayers"][ability_id]["shards"] = 3
    cooldown = 1
    for p = 1, 10 , 1 do
        T[ConvertedPlayer(p)][ability_id]["mana_cost"] = 0
        T[ConvertedPlayer(p)][ability_id]["level"] = 0
        T[ConvertedPlayer(p)][ability_id]["ratio"] = 5 / cooldown
    end

    ability_id = FourCC("ACbf")
    T["AllPlayers"][ability_id]["path"] = "BTNBreathOfFrost.blp"
    T["AllPlayers"][ability_id]["ability_type"] = "targetAOE"
    T["AllPlayers"][ability_id]["casting_type"] = "point"
    T["AllPlayers"][ability_id]["anim_charge"] = 23
    T["AllPlayers"][ability_id]["anim_cast"] = 57
    T["AllPlayers"][ability_id]["tooltip"] = "Frost Wave"
    T["AllPlayers"][ability_id]["extented_tooltip"] = "Create a cone of ice slowing incoming enemies"
    T["AllPlayers"][ability_id]["max_level"] = 5
    cooldown = 1
    for p = 1, 10 , 1 do
        T[ConvertedPlayer(p)][ability_id]["mana_cost"] = 50
        T[ConvertedPlayer(p)][ability_id]["level"] = 0
        T[ConvertedPlayer(p)][ability_id]["ratio"] = 5 / cooldown
    end

    ability_id = FourCC("Afrz")
    T["AllPlayers"][ability_id]["path"] = "BTNFreezingBreath.blp"
    T["AllPlayers"][ability_id]["ability_type"] = "buff"
    T["AllPlayers"][ability_id]["casting_type"] = "instant"
    T["AllPlayers"][ability_id]["anim_charge"] = 23
    T["AllPlayers"][ability_id]["anim_cast"] = 57
    T["AllPlayers"][ability_id]["tooltip"] = "Frost Armor"
    T["AllPlayers"][ability_id]["extented_tooltip"] = "Creates a strong armour that will slow any attacker"
    T["AllPlayers"][ability_id]["max_level"] = 3
    cooldown = 30
    for p = 1, 10 , 1 do
        T[ConvertedPlayer(p)][ability_id]["mana_cost"] = 30
        T[ConvertedPlayer(p)][ability_id]["level"] = 0
        T[ConvertedPlayer(p)][ability_id]["ratio"] = 5 / cooldown
    end

    ability_id = FourCC("Afra")
    T["AllPlayers"][ability_id]["path"] = "BTNFrost.blp"
    T["AllPlayers"][ability_id]["ability_type"] = "passive"
    T["AllPlayers"][ability_id]["casting_type"] = "passive"
    T["AllPlayers"][ability_id]["anim_charge"] = 23
    T["AllPlayers"][ability_id]["anim_cast"] = 57
    T["AllPlayers"][ability_id]["tooltip"] = "Cold Heart"
    T["AllPlayers"][ability_id]["extented_tooltip"] = "Now all you cold skills have a chance to freeze the enemy for 2 seconds"
    T["AllPlayers"][ability_id]["max_level"] = 1
    for p = 1, 10 , 1 do
        T[ConvertedPlayer(p)][ability_id]["level"] = 0
    end

    -- Lightning
    ability_id = FourCC("AOcl")
    T["AllPlayers"][ability_id]["path"] = "BTNChainLightning.blp"
    T["AllPlayers"][ability_id]["ability_type"] = "channel"
    T["AllPlayers"][ability_id]["casting_type"] = "channel"
    T["AllPlayers"][ability_id]["anim_charge"] = 23
    T["AllPlayers"][ability_id]["anim_cast"] = 57
    T["AllPlayers"][ability_id]["tooltip"] = "Lightning"
    T["AllPlayers"][ability_id]["extented_tooltip"] = "Electrocutes selected target"
    T["AllPlayers"][ability_id]["max_level"] = 5
    cooldown = 1
    for p = 1, 10 , 1 do
        T[ConvertedPlayer(p)][ability_id]["mana_cost"] = 5
        T[ConvertedPlayer(p)][ability_id]["level"] = 0
        T[ConvertedPlayer(p)][ability_id]["ratio"] = 5 / cooldown
    end

    ability_id = FourCC("AEbl")
    T["AllPlayers"][ability_id]["path"] = "BTNManaFlare.blp"
    T["AllPlayers"][ability_id]["ability_type"] = "teleport"
    T["AllPlayers"][ability_id]["casting_type"] = "instant"
    T["AllPlayers"][ability_id]["anim_charge"] = 23
    T["AllPlayers"][ability_id]["anim_cast"] = 57
    T["AllPlayers"][ability_id]["tooltip"] = "Blink"
    T["AllPlayers"][ability_id]["extented_tooltip"] = "Teleport to a short distance"
    T["AllPlayers"][ability_id]["max_level"] = 5
    cooldown = 15
    for p = 1, 10 , 1 do
        T[ConvertedPlayer(p)][ability_id]["mana_cost"] = 5
        T[ConvertedPlayer(p)][ability_id]["level"] = 0
        T[ConvertedPlayer(p)][ability_id]["ratio"] = 5 / cooldown
    end

end