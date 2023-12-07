function Skills_Menu()
    local p = GetConvertedPlayerId(GetTriggerPlayer())
    DisplayTimedTextToForce(GetPlayersAll(), 1, "Skills " .. I2S(p))
    if (not (BlzGetTriggerPlayerIsKeyDown()) or ForcedKey) then
        if not (SkillOpen[p]) then
            if ZoomDist[p] ~= 100 then
                ZoomDist[p] = 100.0
                BlzFrameSetVisible(InventoryUI[11], false)
            end
            SkillOpen[p] = true
            if UsingItem[p] then
                UsingItem[p] = false
            end
            if CombatEnabled[p] then
                ForcedP = p
                TriggerExecute(Combat)
                CombatWasEnabled[p] = true
            end
            if not (Camera2Enabled[p]) then
                Camera2Enabled[p] = true
                Set_Camera2(p)
            end
            local temp_frame = BlzFrameGetChild(InventoryUI[8], 1)
            if GetLocalPlayer() == GetTriggerPlayer() then
                BlzFrameSetText(temp_frame, "Available Points: " .. tostring(AvailablePoints[p]))
                for j = 1, 7, 1 do
                    BlzFrameSetVisible(SkillButton[j], true)
                end
                for j = 37, 43, 1 do
                    if (j > 43) then break end
                    local attribute = tostring(T[Hero[p]]["stats"][j - 2])
                    BlzFrameSetVisible(StatValue[j], true)
                    BlzFrameSetVisible(StatText[j], true)
                    BlzFrameSetText(StatValue[j], attribute)
                end
                BlzFrameSetVisible(BlzGetOriginFrame(ORIGIN_FRAME_ITEM_BUTTON, 0), false)
                BlzFrameSetVisible(InventoryUI[0], false)
                BlzFrameSetVisible(InventoryUI[1], false)
                BlzFrameSetVisible(InventoryUI[2], false)
                BlzFrameSetVisible(InventoryUI[3], false)
                BlzFrameSetVisible(InventoryUI[4], false)
                BlzFrameSetVisible(InventoryUI[5], false)
                BlzFrameSetVisible(InventoryUI[6], false)
                BlzFrameSetVisible(InventoryUI[9], false)
                BlzFrameSetVisible(InventoryUI[8], true)
                BlzFrameSetVisible(InventoryUI[10], true)
            end
            Close_Inv_and_Char(p)
            Close_Quest(p)
            Close_Map(p)
            MvtSpeedZero[p] = 0.0
        else
            Close_Skill(p)
            Camera2Enabled[p] = false
            Set_Camera2(p)
            if CombatWasEnabled[p] then
                ForcedP = p
                TriggerExecute(Combat)
                CombatWasEnabled[p] = false
            end
        end
    end
    if ForcedKey then
        ForcedKey = false
    end
end

function TreeClick()
    local p = GetConvertedPlayerId(GetTriggerPlayer())
    local last_point_spent = false
    local opened_skill = LastOpenedSkill[p]
    local current_skill = CategoryName[opened_skill]
    local full
    if GetLocalPlayer() == GetTriggerPlayer() then
        BlzFrameSetEnable(BlzGetTriggerFrame(), false)
        BlzFrameSetEnable(BlzGetTriggerFrame(), true)
    end
    for i = 1, 30, 1 do
        if BlzGetTriggerFrame() == TreeButton[i] then
            local temp_frame = {}
            temp_frame[1] = BlzFrameGetChild(TreeButton[i], 2)
            temp_frame[2] = BlzFrameGetChild(InventoryUI[8], 1)
            local ability_id = T[TreeButton[i]][current_skill]["ability_id"]
            local current_lvl = T[ConvertedPlayer(p)][ability_id]["level"]
            local max_lvl = T["AllPlayers"][ability_id]["max_level"]
            if current_lvl + 1 <= max_lvl then
                if current_lvl == 0 then
                    local mana_cost = T[ConvertedPlayer(p)][ability_id]["mana_cost"]
                    if mana_cost ~= nil then
                        for j = 1, 6, 1 do
                            local assigned_frame = ButtonFrame[j]
                            local destination_ability_id = T[ConvertedPlayer(p)][assigned_frame]["ability_id"]
                            if destination_ability_id == nil or destination_ability_id == 0 then
                                full = false
                                AssignAbility(p, j, ability_id)
                                break
                            end
                            full = true
                        end
                    end
                end
                if full == false then
                    current_lvl = current_lvl + 1
                    if AvailablePoints[p] == 1 then
                        last_point_spent = true
                    end
                    AvailablePoints[p] = AvailablePoints[p] - 1
                    T[ConvertedPlayer(p)][ability_id]["level"] = current_lvl
                    local temp_string = "|cffffcc00" .. tostring(current_lvl) .. "/" .. tostring(max_lvl) .. "|r"
                    if GetLocalPlayer() == GetTriggerPlayer() then
                        BlzFrameSetText(temp_frame[1], temp_string)
                        BlzFrameSetText(temp_frame[2], "Available Points: " .. tostring(AvailablePoints[p]))
                    end
                    if current_lvl == max_lvl and GetLocalPlayer() == GetTriggerPlayer() then
                        BlzFrameSetEnable(BlzGetTriggerFrame(), false)
                    end
                end
            end
            break
        end
    end
    if AvailablePoints[p] == 0 and GetLocalPlayer() == GetTriggerPlayer() then
        for i = 1, 30, 1 do
            BlzFrameSetEnable(TreeButton[i], false)
            if last_point_spent == true then
                local path_status = "ReplaceableTextures\\CommandButtonsDisabled\\DIS"
                local ability_id = T[TreeButton[i]][current_skill]["ability_id"]
                local path = path_status .. T["AllPlayers"][ability_id]["path"]
                local temp_frame = BlzFrameGetChild(TreeButton[i], 0)
                BlzFrameSetTexture(temp_frame, path, 0, true)
            end
        end
    end
end

function NavigateMenu(i, p)
    local current_skill = CategoryName[i]
    local temp_frame = {}
    temp_frame[1] = BlzFrameGetChild(InventoryUI[8], 0)
    temp_frame[2] = BlzFrameGetChild(InventoryUI[8], 1)
    if GetLocalPlayer() == ConvertedPlayer(p) then
        BlzFrameSetSize(SkillButton[i], 0.075, 0.03)
        BlzFrameSetText(temp_frame[2], "Available Points: " .. tostring(AvailablePoints[p]))
    end
    if i == 1 then -- Summary
        for k = 1, 30, 1 do
            if GetLocalPlayer() == ConvertedPlayer(p) then
                BlzFrameSetVisible(TreeButton[k], false)
            end
        end
        for k = 37, 43, 1 do
            if GetLocalPlayer() == ConvertedPlayer(p) then
                local attribute = tostring(T[Hero[p]]["stats"][k - 2])
                BlzFrameSetVisible(StatValue[k], true)
                BlzFrameSetVisible(StatText[k], true)
                BlzFrameSetText(StatValue[k], attribute)
            end
        end
        if GetLocalPlayer() == ConvertedPlayer(p) then
            BlzFrameSetVisible(MoreText[1], false)
            BlzFrameSetVisible(MoreText[2], false)
            BlzFrameSetVisible(MoreText[3], false)
            BlzFrameSetVisible(InventoryUI[10], true)
            BlzFrameSetText(temp_frame[1], "Skills")
        end
    else
        local path_status
        if AvailablePoints[p] == 0 and GetLocalPlayer() == GetTriggerPlayer() then
            path_status = "ReplaceableTextures\\CommandButtonsDisabled\\DIS"
            for k = 1, 30, 1 do
                BlzFrameSetEnable(TreeButton[k], false)
            end
        else
            path_status = "ReplaceableTextures\\CommandButtons\\"
        end
        for k = 1, 30, 1 do
            temp_frame[2] = BlzFrameGetChild(TreeButton[k], 0)
            temp_frame[3] = BlzFrameGetChild(TreeButton[k], 2)
            if GetLocalPlayer() == ConvertedPlayer(p) then
                if LastOpenedSkill[p] ~= i then
                    local ability_id = T[TreeButton[k]][current_skill]["ability_id"]
                    local path = path_status .. T["AllPlayers"][ability_id]["path"]
                    local current_lvl = T[ConvertedPlayer(p)][ability_id]["level"]
                    local mana_cost = T[ConvertedPlayer(p)][ability_id]["mana_cost"]
                    local max_lvl = T["AllPlayers"][ability_id]["max_level"]
                    local tooltip = T["AllPlayers"][ability_id]["tooltip"]
                    local extented_tooltip = T["AllPlayers"][ability_id]["extented_tooltip"]
                    BlzFrameSetTexture(temp_frame[2], path, 0, true)
                    local temp_string = "|cffffcc00" .. tostring(current_lvl) .. "/" .. tostring(max_lvl) .. "|r"
                    BlzFrameSetText(temp_frame[3], temp_string)
                    BlzFrameSetText(BlzFrameGetChild(TreeTooltip[k], 0), tooltip)
                    temp_frame[4] = BlzFrameGetChild(TreeTooltip[k], 2)
                    temp_frame[5] = BlzFrameGetChild(TreeTooltip[k], 1)
                    temp_frame[6] = BlzFrameGetChild(TreeTooltip[k], 4)
                    if mana_cost == nil then
                        BlzFrameSetVisible(temp_frame[4], false)
                        BlzFrameSetVisible(temp_frame[5], false)
                        BlzFrameSetVisible(temp_frame[6], true)
                    elseif mana_cost == 0 then
                        BlzFrameSetVisible(temp_frame[4], false)
                        BlzFrameSetVisible(temp_frame[5], false)
                        BlzFrameSetVisible(temp_frame[6], false)
                    else
                        BlzFrameSetVisible(temp_frame[4], true)
                        BlzFrameSetText(temp_frame[4], tostring(mana_cost))
                        BlzFrameSetVisible(temp_frame[5], true)
                        BlzFrameSetVisible(temp_frame[6], false)
                    end

                    BlzFrameSetText(BlzFrameGetChild(TreeTooltip[k], 3), extented_tooltip)
                end
                BlzFrameSetVisible(TreeButton[k], true)
            end
        end
        if GetLocalPlayer() == ConvertedPlayer(p) then
            local text = T[MoreText[1]][current_skill]["name"]
            BlzFrameSetText(MoreText[1], text)
            text = T[MoreText[2]][current_skill]["name"]
            BlzFrameSetText(MoreText[2], text)
            text = T[MoreText[3]][current_skill]["name"]
            BlzFrameSetText(MoreText[3], text)
            BlzFrameSetVisible(MoreText[1], true)
            BlzFrameSetVisible(MoreText[2], true)
            BlzFrameSetVisible(MoreText[3], true)
        end
        LastOpenedSkill[p] = i
        for k = 37, 43, 1 do
            if GetLocalPlayer() == ConvertedPlayer(p) then
                BlzFrameSetVisible(StatValue[k], false)
                BlzFrameSetVisible(StatText[k], false)
            end
        end
        if GetLocalPlayer() == ConvertedPlayer(p) then
            BlzFrameSetVisible(InventoryUI[10], false)
            BlzFrameSetText(temp_frame[1], CategoryColoredName[i])
        end
    end
end
