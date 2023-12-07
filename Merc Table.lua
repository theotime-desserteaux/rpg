function MercTable()
    -- Trader
    local cooldown
    local ability_id = FourCC("gold")
    T["AllPlayers"][ability_id]["path"] = "BTNChestOfGold.blp"
    T["AllPlayers"][ability_id]["ability_type"] = "passive"
    T["AllPlayers"][ability_id]["casting_type"] = "passive"
    T["AllPlayers"][ability_id]["anim_charge"] = 23
    T["AllPlayers"][ability_id]["anim_cast"] = 57
    T["AllPlayers"][ability_id]["tooltip"] = "Build Structure"
    T["AllPlayers"][ability_id]["extented_tooltip"] = "Each level unlocks a new building type"
    T["AllPlayers"][ability_id]["max_level"] = 5
    cooldown = 1
    for p = 1, 10 , 1 do
        T[ConvertedPlayer(p)][ability_id]["level"] = 0
        T[ConvertedPlayer(p)][ability_id]["ratio"] = 5 / cooldown
    end

    -- Engineer
    ability_id = FourCC("Aneg")
    T["AllPlayers"][ability_id]["path"] = "BTNEngineeringUpgrade.blp"
    T["AllPlayers"][ability_id]["ability_type"] = "build"
    T["AllPlayers"][ability_id]["casting_type"] = "build"
    T["AllPlayers"][ability_id]["anim_charge"] = 23
    T["AllPlayers"][ability_id]["anim_cast"] = 57
    T["AllPlayers"][ability_id]["tooltip"] = "Build Structure"
    T["AllPlayers"][ability_id]["extented_tooltip"] = "Each level unlocks a new building type"
    T["AllPlayers"][ability_id]["max_level"] = 5
    cooldown = 1
    for p = 1, 10 , 1 do
        T[ConvertedPlayer(p)][ability_id]["level"] = 0
        T[ConvertedPlayer(p)][ability_id]["ratio"] = 5 / cooldown
    end

    --Leader
    ability_id = FourCC("ANtm")
    T["AllPlayers"][ability_id]["path"] = "BTNTransmute.blp"
    T["AllPlayers"][ability_id]["ability_type"] = "buff"
    T["AllPlayers"][ability_id]["casting_type"] = "instant"
    T["AllPlayers"][ability_id]["anim_charge"] = 23
    T["AllPlayers"][ability_id]["anim_cast"] = 57
    T["AllPlayers"][ability_id]["tooltip"] = "Follow me!"
    T["AllPlayers"][ability_id]["extented_tooltip"] = "Military Units can be recruited to help at your side"
    T["AllPlayers"][ability_id]["max_level"] = 5
    cooldown = 1
    for p = 1, 10 , 1 do
        T[ConvertedPlayer(p)][ability_id]["level"] = 0
        T[ConvertedPlayer(p)][ability_id]["ratio"] = 5 / cooldown
    end
end