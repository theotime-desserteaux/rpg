function TableSkills()

-- Equation example: y = 2x + 5
local equation = function(x)
    return 2 * x + 5
end

T.equation = equation

--------------------------------------------------------------
    current_skill = CategoryName[2] -- WARFARE
    T[MoreText[1]][current_skill]["name"] = "Fury"
    T[MoreText[2]][current_skill]["name"] = "Tank"
    T[MoreText[3]][current_skill]["name"] = "Bruiser"

    -- Fury
    local ability_id = FourCC("ACfb")
    T[TreeButton[1]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[2]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[3]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[4]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[5]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[6]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[7]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[8]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[9]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[10]][current_skill]["ability_id"] = ability_id

    --Tank
    ability_id = FourCC("ACfb")
    T[TreeButton[11]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[12]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[13]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[14]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[15]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[16]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[17]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[18]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[19]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[20]][current_skill]["ability_id"] = ability_id

    -- Bruiser
    ability_id = FourCC("ACfb")
    T[TreeButton[21]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[22]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[23]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[24]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[25]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[26]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[27]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[28]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[29]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[30]][current_skill]["ability_id"] = ability_id

    --------------------------------------------------------------
    current_skill = CategoryName[3] -- HUNTSMAN
    T[MoreText[1]][current_skill]["name"] = "Ranger"
    T[MoreText[2]][current_skill]["name"] = "Thief"
    T[MoreText[3]][current_skill]["name"] = "Assassin"

    -- Ranger
    ability_id = FourCC("AEar")
    T[TreeButton[1]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("Aemk")
    T[TreeButton[2]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[3]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[4]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[5]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[6]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[7]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[8]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[9]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[10]][current_skill]["ability_id"] = ability_id

    -- Thief
    ability_id = FourCC("kymn")
    T[TreeButton[11]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("Alam")
    T[TreeButton[12]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ANsi")
    T[TreeButton[13]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACam")
    T[TreeButton[14]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("AUsl")
    T[TreeButton[15]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACen")
    T[TreeButton[16]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[17]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[18]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[19]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[20]][current_skill]["ability_id"] = ability_id

    -- Assassin
    ability_id = FourCC("Ashm")
    T[TreeButton[21]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("Asac")
    T[TreeButton[22]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("AEfk")
    T[TreeButton[23]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("AEsh")
    T[TreeButton[24]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[25]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[26]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[27]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[28]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[29]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[30]][current_skill]["ability_id"] = ability_id

    --------------------------------------------------------------
    current_skill = CategoryName[4] -- SORCERY
    T[MoreText[1]][current_skill]["name"] = "Fire"
    T[MoreText[2]][current_skill]["name"] = "Ice"
    T[MoreText[3]][current_skill]["name"] = "Lightning"

    -- Fire
    ability_id = FourCC("ACfb")
    T[TreeButton[1]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("AEim")
    T[TreeButton[2]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[3]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[4]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[5]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("AUin")
    T[TreeButton[6]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[7]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[8]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[9]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("AHfs")
    T[TreeButton[10]][current_skill]["ability_id"] = ability_id

    -- Ice
    ability_id = FourCC("ACcb")
    T[TreeButton[11]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACbz")
    T[TreeButton[12]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("Afrz")
    T[TreeButton[13]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("Afra")
    T[TreeButton[14]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[15]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[16]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[17]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[18]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[19]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACbz")
    T[TreeButton[20]][current_skill]["ability_id"] = ability_id

    --Lightning
    ability_id = FourCC("AOcl")
    T[TreeButton[21]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("AEbl")
    T[TreeButton[22]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[23]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[24]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[25]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[26]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[27]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[28]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[29]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[30]][current_skill]["ability_id"] = ability_id

    --------------------------------------------------------------
    current_skill = CategoryName[5] -- DRUID
    T[MoreText[1]][current_skill]["name"] = "Wild"
    T[MoreText[2]][current_skill]["name"] = "Guardian"
    T[MoreText[3]][current_skill]["name"] = "Storm Caller"

    -- Wild
    ability_id = FourCC("ACfb")
    T[TreeButton[1]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("nqb1")
    T[TreeButton[2]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[3]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("osw2")
    T[TreeButton[4]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[5]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[6]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("nmsh")
    T[TreeButton[7]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[8]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[9]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[10]][current_skill]["ability_id"] = ability_id

    -- Guardian
    ability_id = FourCC("ntrh")
    T[TreeButton[11]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("Arej")
    T[TreeButton[12]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("Aenr")
    T[TreeButton[13]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfr")
    T[TreeButton[14]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("Reec")
    T[TreeButton[15]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("AEah")
    T[TreeButton[16]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("Reeb")
    T[TreeButton[17]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("AEtq")
    T[TreeButton[18]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[19]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[20]][current_skill]["ability_id"] = ability_id

    -- Storm Caller
    ability_id = FourCC("ACfb")
    T[TreeButton[21]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[22]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[23]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[24]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[25]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[26]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[27]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("Acyc")
    T[TreeButton[28]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[29]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[30]][current_skill]["ability_id"] = ability_id

    --------------------------------------------------------------
    current_skill = CategoryName[6] -- NECROMANCER
    T[MoreText[1]][current_skill]["name"] = "Legions of Death"
    T[MoreText[2]][current_skill]["name"] = "Cursed"
    T[MoreText[3]][current_skill]["name"] = "Blood Lord"

    -- Legions of Death
    ability_id = FourCC("Arai")
    T[TreeButton[1]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[2]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("Auhf")
    T[TreeButton[3]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("AUfu")
    T[TreeButton[4]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("uabo")
    T[TreeButton[5]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[6]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[7]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[8]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[9]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[10]][current_skill]["ability_id"] = ability_id

    -- Cursed
    ability_id = FourCC("ACfb")
    T[TreeButton[11]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[12]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[13]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[14]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[15]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[16]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[17]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[18]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[19]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[20]][current_skill]["ability_id"] = ability_id

    -- Blood Lord
    ability_id = FourCC("Amel")
    T[TreeButton[21]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("AUim")
    T[TreeButton[22]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACdr")
    T[TreeButton[23]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("AUav")
    T[TreeButton[24]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("Acan")
    T[TreeButton[25]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[26]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[27]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[28]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[29]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("modt")
    T[TreeButton[30]][current_skill]["ability_id"] = ability_id

--------------------------------------------------------------
    current_skill = CategoryName[7] -- HOLY POWERS
    T[MoreText[1]][current_skill]["name"] = "Honor"
    T[MoreText[2]][current_skill]["name"] = "Retribution"
    T[MoreText[3]][current_skill]["name"] = "Justice"

    -- Honor
    ability_id = FourCC("AHhb")
    T[TreeButton[1]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("Ahea")
    T[TreeButton[2]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("AItp")
    T[TreeButton[3]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("AHbh")
    T[TreeButton[4]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[5]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[6]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[7]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[8]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[9]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("AHmt")
    T[TreeButton[10]][current_skill]["ability_id"] = ability_id

    --Retribution
    ability_id = FourCC("AHds")
    T[TreeButton[11]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("Ainf")
    T[TreeButton[12]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("Asps")
    T[TreeButton[13]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("AUau")
    T[TreeButton[14]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[15]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[16]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[17]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[18]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[19]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("AOhw")
    T[TreeButton[20]][current_skill]["ability_id"] = ability_id

    -- Justice
    ability_id = FourCC("Asth")
    T[TreeButton[21]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("AHad")
    T[TreeButton[22]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("AHtc")
    T[TreeButton[23]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("AHav")
    T[TreeButton[24]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("Acmg")
    T[TreeButton[25]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[26]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ANch")
    T[TreeButton[27]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[28]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[29]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("AHre")
    T[TreeButton[30]][current_skill]["ability_id"] = ability_id

--------------------------------------------------------------
    current_skill = CategoryName[8] -- MERCENARY
    T[MoreText[1]][current_skill]["name"] = "Trader"
    T[MoreText[2]][current_skill]["name"] = "Engineer"
    T[MoreText[3]][current_skill]["name"] = "Leader"

    -- Trader
    ability_id = FourCC("ACfb")
    T[TreeButton[1]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[2]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[3]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[4]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[5]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[6]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[7]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[8]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[9]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[10]][current_skill]["ability_id"] = ability_id

    -- Engineer
    ability_id = FourCC("Aneg")
    T[TreeButton[11]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[12]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[13]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[14]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[15]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[16]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[17]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[18]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[19]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[20]][current_skill]["ability_id"] = ability_id

    --Leader
    ability_id = FourCC("ACfb")
    T[TreeButton[21]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[22]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ANtm")
    T[TreeButton[23]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[24]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[25]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[26]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[27]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[28]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[29]][current_skill]["ability_id"] = ability_id
    ability_id = FourCC("ACfb")
    T[TreeButton[30]][current_skill]["ability_id"] = ability_id
end
