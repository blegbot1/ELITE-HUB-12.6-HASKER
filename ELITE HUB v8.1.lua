local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

-- Кастомная фиолетовая тема
local ThemeColors = {
    Main = Color3.fromRGB(30, 20, 50),
    Secondary = Color3.fromRGB(50, 35, 80),
    Accent = Color3.fromRGB(170, 0, 255),
    Text = Color3.fromRGB(240, 240, 240)
}

-- Создание окна с новой темой
local Window = Rayfield:CreateWindow({
    Name = "🌟 ELITE HUB v8.1 COMPLETE",
    LoadingTitle = "⚡ Полная версия...",
    LoadingSubtitle = "💜 by gl0vakartelr | Все функции ESP",
    Theme = {
        Background = ThemeColors.Main,
        Glow = ThemeColors.Accent,
        Text = ThemeColors.Text,
        Header = ThemeColors.Secondary,
        Button = ThemeColors.Secondary
    }
})

-- Основные вкладки
local MainTab = Window:CreateTab("🏠 ОСНОВНОЕ", 11286187172)
local ESPTab = Window:CreateTab("👁️ ESP", 6026568198)
local CombatTab = Window:CreateTab("🎯 AIMBOT", 7733960981)
local TeleportTab = Window:CreateTab("🌀 ТЕЛЕПОРТ", 6023426915)
local KillAllTab = Window:CreateTab("⚔️ УБИТЬ ВСЕХ", 0)

local Players = game:GetService("Players")
local player = Players.LocalPlayer

--[[
    ==============================
    РАЗДЕЛ ОСНОВНЫХ ФУНКЦИЙ
    ==============================
]]--
local AdventureSection = MainTab:CreateSection("🚀 ОСНОВНЫЕ ФУНКЦИИ")

-- Переменные состояния
local flyActive = false
local flyVelocity = nil
local noclipActive = false

-- Функция полёта
local function ToggleFlight()
    flyActive = not flyActive
    local character = game.Players.LocalPlayer.Character
    if not character or not character:FindFirstChild("HumanoidRootPart") then 
        Rayfield:Notify({
            Title = "❌ Ошибка",
            Content = "Персонаж не найден!",
            Duration = 3
        })
        return 
    end
    
    if flyActive then
        if flyVelocity then flyVelocity:Destroy() end
        flyVelocity = Instance.new("BodyVelocity")
        flyVelocity.Velocity = Vector3.new(0, 0, 0)
        flyVelocity.MaxForce = Vector3.new(0, math.huge, 0)
        flyVelocity.P = 10000
        flyVelocity.Parent = character.HumanoidRootPart
        
        Rayfield:Notify({
            Title = "🛩️ Полёт активирован!",
            Content = "WASD - движение\nПробел/Shift - высота",
            Duration = 5,
            Image = 6023426915
        })
    else
        if flyVelocity then flyVelocity:Destroy() end
        Rayfield:Notify({
            Title = "🛑 Полёт отключён",
            Content = "Режим полёта деактивирован",
            Duration = 3,
            Image = 6022668888
        })
    end
end

-- Функция Noclip
local function ToggleNoclip()
    noclipActive = not noclipActive
    Rayfield:Notify({
        Title = noclipActive and "👻 Noclip: ВКЛ" or "🚷 Noclip: ВЫКЛ",
        Content = noclipActive and "Вы можете проходить сквозь стены" or "Коллизии включены",
        Duration = 3,
        Image = noclipActive and 6023426915 or 6022668888
    })
end

-- Кнопки управления
MainTab:CreateButton({
    Name = "🛫 ВКЛ/ВЫКЛ Полёт",
    Callback = ToggleFlight
})

MainTab:CreateButton({
    Name = "👻 ВКЛ/ВЫКЛ Noclip",
    Callback = ToggleNoclip
})

-- Комбо-функция "Валхак"
MainTab:CreateButton({
    Name = "💥 АКТИВИРОВАТЬ ВАЛХАК (Полёт+Noclip)",
    Callback = function()
        ToggleFlight()
        ToggleNoclip()
        Rayfield:Notify({
            Title = "💣 ВАЛХАК АКТИВИРОВАН!",
            Content = "Все функции включены",
            Duration = 5,
            Image = 6023426915
        })
    end
})

--[[
    ==============================
    ИСПРАВЛЕННЫЙ ПЛАВНЫЙ AIMBOT
    ==============================
]]--
local AimbotSection = CombatTab:CreateSection("🎯 AIMBOT")

-- УЛУЧШЕННАЯ конфигурация аимбота
local AimbotConfig = {
    Enabled = false,
    TeamCheck = true,
    FOV = 100,
    ShowFOV = true,
    FOVColor = Color3.fromRGB(170, 0, 255),
    Smoothness = 0.3, -- УВЕЛИЧЕНО для плавности
    TargetPart = "Head",
    Keybind = "MouseButton2",
    ThirdPersonFix = true,
    VisibilityCheck = true,
    Prediction = 0.05, -- УМЕНЬШЕНО для точности
    AutoFire = false,
    FriendCheck = false,
    Sensitivity = 1.0,
    AutoFireRate = 0.1,
    AutoFireLastShot = 0,
    MaxAngle = math.rad(5) -- НОВОЕ: ограничение угла
}

-- Круг FOV
local FOVCircle = Drawing.new("Circle")
FOVCircle.Visible = false
FOVCircle.Radius = AimbotConfig.FOV
FOVCircle.Color = AimbotConfig.FOVColor
FOVCircle.Thickness = 2
FOVCircle.Filled = false
FOVCircle.Position = Vector2.new(workspace.CurrentCamera.ViewportSize.X / 2, workspace.CurrentCamera.ViewportSize.Y / 2)

-- Функция проверки команды
local function IsEnemy(targetPlayer)
    if not AimbotConfig.TeamCheck then return true end
    if not player.Team or not targetPlayer.Team then return true end
    return player.Team ~= targetPlayer.Team
end

-- Функция для проверки видимости
local function IsVisible(targetPart)
    if not AimbotConfig.VisibilityCheck then return true end
    
    local camera = workspace.CurrentCamera
    local origin = camera.CFrame.Position
    local direction = (targetPart.Position - origin).Unit * 1000
    local ray = Ray.new(origin, direction)
    
    local hit, position = workspace:FindPartOnRayWithIgnoreList(ray, {player.Character})
    return hit and hit:IsDescendantOf(targetPart.Parent)
end

-- Функция поиска цели
local function GetBestTarget()
    local bestTarget = nil
    local bestDistance = math.huge
    local localPlayer = player
    local camera = workspace.CurrentCamera
    
    if not camera or not localPlayer.Character then return nil end
    
    local cameraPos = camera.CFrame.Position
    local mousePos = Vector2.new(camera.ViewportSize.X / 2, camera.ViewportSize.Y / 2)
    
    for _, targetPlayer in ipairs(Players:GetPlayers()) do
        if targetPlayer == localPlayer then continue end
        if not IsEnemy(targetPlayer) then continue end
        if not targetPlayer.Character then continue end
        
        local character = targetPlayer.Character
        local humanoid = character:FindFirstChildOfClass("Humanoid")
        if not humanoid or humanoid.Health <= 0 then continue end
        
        local targetPart = character:FindFirstChild(AimbotConfig.TargetPart)
        if not targetPart then continue end
        
        if not IsVisible(targetPart) then continue end
        
        local screenPos, onScreen = camera:WorldToViewportPoint(targetPart.Position)
        if not onScreen then continue end
        
        local distance = (targetPart.Position - cameraPos).Magnitude
        local mouseDistance = (Vector2.new(screenPos.X, screenPos.Y) - mousePos).Magnitude
        
        if mouseDistance > AimbotConfig.FOV then continue end
        
        if distance < bestDistance then
            bestTarget = targetPart
            bestDistance = distance
        end
    end
    
    return bestTarget
end

-- НОВАЯ ПЛАВНАЯ функция прицеливания
local function SmoothAim(target)
    if not target then return end
    
    local camera = workspace.CurrentCamera
    local currentCFrame = camera.CFrame
    local targetPosition = target.Position
    
    -- Добавляем предсказание
    local velocity = target.AssemblyLinearVelocity or target.Velocity or Vector3.new(0, 0, 0)
    local predictedPosition = targetPosition + (velocity * AimbotConfig.Prediction)
    
    -- Ограничиваем максимальный угол поворота за кадр
    local maxAngle = AimbotConfig.MaxAngle
    
    local currentLook = currentCFrame.LookVector
    local desiredLook = (predictedPosition - currentCFrame.Position).Unit
    
    -- Вычисляем угол между текущим и желаемым направлением
    local dot = currentLook:Dot(desiredLook)
    local angle = math.acos(math.clamp(dot, -1, 1))
    
    -- Если угол слишком большой, плавно интерполируем
    if angle > maxAngle then
        local t = maxAngle / angle
        desiredLook = currentLook:Lerp(desiredLook, t)
    end
    
    -- Применяем плавность
    local smoothness = math.clamp(AimbotConfig.Smoothness, 0.05, 1.0)
    local finalLook = currentLook:Lerp(desiredLook, smoothness)
    
    camera.CFrame = CFrame.lookAt(currentCFrame.Position, currentCFrame.Position + finalLook)
end

-- Функция авто-огня
local function HandleAutoFire()
    if not AimbotConfig.AutoFire then return end
    if tick() - AimbotConfig.AutoFireLastShot < AimbotConfig.AutoFireRate then return end
    
    if not player.Character then return end
    
    local tool = player.Character:FindFirstChildOfClass("Tool")
    if not tool then return end
    
    local remoteEvent = tool:FindFirstChildWhichIsA("RemoteEvent")
    local remoteFunction = tool:FindFirstChildWhichIsA("RemoteFunction")
    
    if remoteEvent then
        pcall(function() remoteEvent:FireServer("left") end)
    elseif remoteFunction then
        pcall(function() remoteFunction:InvokeServer("left") end)
    end
    
    AimbotConfig.AutoFireLastShot = tick()
end

-- Основной цикл аимбота
task.spawn(function()
    while task.wait(0.03) do
        FOVCircle.Visible = AimbotConfig.Enabled and AimbotConfig.ShowFOV
        FOVCircle.Radius = AimbotConfig.FOV
        FOVCircle.Color = AimbotConfig.FOVColor
        FOVCircle.Position = Vector2.new(workspace.CurrentCamera.ViewportSize.X / 2, workspace.CurrentCamera.ViewportSize.Y / 2)
        
        if AimbotConfig.Enabled and (game:GetService("UserInputService"):IsMouseButtonPressed(Enum.UserInputType[AimbotConfig.Keybind]) or AimbotConfig.AutoFire) then
            local target = GetBestTarget()
            if target then
                SmoothAim(target) -- ИСПОЛЬЗУЕМ ПЛАВНЫЙ АИМБОТ
                HandleAutoFire()
            end
        end
    end
end)

-- Элементы управления аимботом
CombatTab:CreateToggle({
    Name = "🎯 Включить Aimbot",
    CurrentValue = AimbotConfig.Enabled,
    Callback = function(value)
        AimbotConfig.Enabled = value
    end
})

CombatTab:CreateToggle({
    Name = "👥 Игнорировать команду",
    CurrentValue = AimbotConfig.TeamCheck,
    Callback = function(value)
        AimbotConfig.TeamCheck = value
    end
})

CombatTab:CreateToggle({
    Name = "🔥 Авто-огонь",
    CurrentValue = AimbotConfig.AutoFire,
    Callback = function(value)
        AimbotConfig.AutoFire = value
    end
})

CombatTab:CreateSlider({
    Name = "🔘 Радиус поиска (FOV)",
    Range = {10, 500},
    Increment = 10,
    CurrentValue = AimbotConfig.FOV,
    Callback = function(value)
        AimbotConfig.FOV = value
    end
})

CombatTab:CreateSlider({
    Name = "🔄 Плавность наведения",
    Range = {0.05, 0.5},
    Increment = 0.01,
    CurrentValue = AimbotConfig.Smoothness,
    Callback = function(value)
        AimbotConfig.Smoothness = value
    end
})

CombatTab:CreateSlider({
    Name = "🔮 Предсказание",
    Range = {0.0, 0.5},
    Increment = 0.01,
    CurrentValue = AimbotConfig.Prediction,
    Callback = function(value)
        AimbotConfig.Prediction = value
    end
})

CombatTab:CreateSlider({
    Name = "📐 Макс. угол поворота",
    Range = {1, 15},
    Increment = 1,
    Suffix = "градусов",
    CurrentValue = math.deg(AimbotConfig.MaxAngle),
    Callback = function(value)
        AimbotConfig.MaxAngle = math.rad(value)
    end
})

CombatTab:CreateColorPicker({
    Name = "🎨 Цвет FOV круга",
    Color = AimbotConfig.FOVColor,
    Callback = function(value)
        AimbotConfig.FOVColor = value
    end
})

--[[
    ==============================
    ПОЛНЫЙ ESP С 3D BOX И ВСЕМИ ФУНКЦИЯМИ
    ==============================
]]--
local ESPConfig = {
    Enabled = false,
    TeamCheck = true,
    ShowTeammates = true,
    
    -- ВСЕ функции ESP
    Boxes = true,
    Names = true,
    Health = true,
    Distance = true,
    Tracers = true,
    TracersForTeammates = false,
    ShowDead = true,
    Box3DEnabled = true,
    Box3DFilled = false,
    
    UpdateFrequency = 0.05,
    EnemyColor = Color3.fromRGB(255, 50, 50),
    TeammateColor = Color3.fromRGB(50, 255, 50),
    OutlineColor = Color3.fromRGB(255, 255, 255),
    TextColor = Color3.fromRGB(255, 255, 255),
    TracerColor = Color3.fromRGB(255, 50, 255),
    Box3DColor = Color3.fromRGB(0, 255, 0),
    DeadColor = Color3.fromRGB(255, 0, 0),
    TextSize = 14,
    FillTransparency = 0.5,
    TracerThickness = 1,
    Box3DThickness = 1,
    Box3DSize = 2.0
}

local ESPObjects = {}
local TracerLines = {}
local Box3DObjects = {}

-- Функция проверки команды
local function IsTeammate(targetPlayer)
    if not ESPConfig.TeamCheck then return false end
    if not player.Team or not targetPlayer.Team then return false end
    return player.Team == targetPlayer.Team
end

-- Функция очистки ESP
local function ClearPlayerESP(targetPlayer)
    if ESPObjects[targetPlayer] then
        if ESPObjects[targetPlayer].Highlight then 
            ESPObjects[targetPlayer].Highlight:Destroy() 
        end
        if ESPObjects[targetPlayer].Billboard then 
            ESPObjects[targetPlayer].Billboard:Destroy() 
        end
        ESPObjects[targetPlayer] = nil
    end
    
    if TracerLines[targetPlayer] then
        TracerLines[targetPlayer]:Remove()
        TracerLines[targetPlayer] = nil
    end
    
    if Box3DObjects[targetPlayer] then
        for _, line in ipairs(Box3DObjects[targetPlayer]) do
            if line then
                line:Remove()
            end
        end
        Box3DObjects[targetPlayer] = nil
    end
end

-- Функция создания ESP с 3D боксами
local function CreatePlayerESP(targetPlayer)
    if targetPlayer == player then return end
    if IsTeammate(targetPlayer) and not ESPConfig.ShowTeammates then return end
    
    ClearPlayerESP(targetPlayer)
    if not targetPlayer.Character then return end
    
    local character = targetPlayer.Character
    local humanoid = character:FindFirstChildOfClass("Humanoid")
    local rootPart = character:FindFirstChild("HumanoidRootPart")
    
    if not rootPart then return end
    
    local espGroup = {}
    local isTeammate = IsTeammate(targetPlayer)
    local fillColor = isTeammate and ESPConfig.TeammateColor or ESPConfig.EnemyColor
    
    -- Box ESP
    if ESPConfig.Boxes then
        local highlight = Instance.new("Highlight")
        highlight.FillColor = fillColor
        highlight.OutlineColor = ESPConfig.OutlineColor
        highlight.FillTransparency = ESPConfig.FillTransparency
        highlight.Adornee = character
        highlight.Parent = character
        espGroup.Highlight = highlight
    end

    -- Text Label
    if ESPConfig.Names or ESPConfig.Health or ESPConfig.Distance then
        local billboard = Instance.new("BillboardGui")
        billboard.Name = "ESP_" .. targetPlayer.Name
        billboard.AlwaysOnTop = true
        billboard.ExtentsOffset = Vector3.new(0, 3, 0)
        billboard.Size = UDim2.new(0, 200, 0, 50)
        billboard.Adornee = rootPart
        billboard.Parent = rootPart

        local textLabel = Instance.new("TextLabel")
        textLabel.BackgroundTransparency = 1
        textLabel.Size = UDim2.new(1, 0, 1, 0)
        textLabel.TextColor3 = fillColor
        textLabel.TextSize = ESPConfig.TextSize
        textLabel.Font = Enum.Font.SourceSansBold
        textLabel.TextStrokeTransparency = 0
        textLabel.TextStrokeColor3 = Color3.new(0, 0, 0)
        textLabel.Parent = billboard
        espGroup.Billboard = billboard
        espGroup.TextLabel = textLabel
    end
    
    -- Трассеры
    if ESPConfig.Tracers and (not isTeammate or ESPConfig.TracersForTeammates) then
        local tracer = Drawing.new("Line")
        tracer.Visible = false
        tracer.Color = isTeammate and ESPConfig.TeammateColor or ESPConfig.TracerColor
        tracer.Thickness = ESPConfig.TracerThickness
        TracerLines[targetPlayer] = tracer
    end
    
    -- 3D Box ESP
    if ESPConfig.Box3DEnabled then
        local boxLines = {}
        for i = 1, 12 do
            local line = Drawing.new("Line")
            line.Visible = false
            line.Color = ESPConfig.Box3DColor
            line.Thickness = ESPConfig.Box3DThickness
            table.insert(boxLines, line)
        end
        Box3DObjects[targetPlayer] = boxLines
    end

    ESPObjects[targetPlayer] = espGroup
    
    -- Обработчики событий
    if character then
        character.AncestryChanged:Connect(function(_, parent)
            if not parent then ClearPlayerESP(targetPlayer) end
        end)
    end
    
    if humanoid then
        humanoid.Died:Connect(function()
            if not ESPConfig.ShowDead then
                ClearPlayerESP(targetPlayer)
            end
        end)
    end
    
    targetPlayer.CharacterAdded:Connect(function(newCharacter)
        task.wait(2)
        if ESPConfig.Enabled then
            CreatePlayerESP(targetPlayer)
        end
    end)
end

-- Обновление текста ESP
local function UpdateESPText()
    for targetPlayer, espGroup in pairs(ESPObjects) do
        if espGroup.TextLabel and targetPlayer.Character then
            local character = targetPlayer.Character
            local humanoid = character:FindFirstChildOfClass("Humanoid")
            local rootPart = character:FindFirstChild("HumanoidRootPart")
            
            if rootPart and espGroup.Billboard and espGroup.Billboard.Parent then
                local isDead = humanoid and humanoid.Health <= 0
                local isTeammate = IsTeammate(targetPlayer)
                local text = ""
                
                if ESPConfig.Names then
                    text = text .. targetPlayer.Name .. (isDead and " 💀" or "") .. "\n"
                end
                
                if not isDead or ESPConfig.ShowDead then
                    if ESPConfig.Health and humanoid then
                        text = text .. (isDead and "💀 МЕРТВ\n" or "❤ " .. math.floor(humanoid.Health) .. "/" .. math.floor(humanoid.MaxHealth) .. "\n")
                    end
                    
                    if ESPConfig.Distance and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                        local localRoot = player.Character.HumanoidRootPart
                        if localRoot then
                            local distance = (localRoot.Position - rootPart.Position).Magnitude
                            text = text .. "📏 " .. math.floor(distance) .. "m"
                        end
                    end
                end
                
                local fillColor = isTeammate and ESPConfig.TeammateColor or ESPConfig.EnemyColor
                if isDead then
                    espGroup.TextLabel.TextColor3 = ESPConfig.DeadColor
                    if espGroup.Highlight then 
                        espGroup.Highlight.FillColor = ESPConfig.DeadColor 
                    end
                else
                    espGroup.TextLabel.TextColor3 = fillColor
                    if espGroup.Highlight then 
                        espGroup.Highlight.FillColor = fillColor 
                    end
                end
                
                espGroup.TextLabel.Text = text
            end
        end
    end
end

-- Обновление трассеров
local function UpdateTracers()
    if not ESPConfig.Enabled or not ESPConfig.Tracers then return end
    
    local camera = workspace.CurrentCamera
    
    for targetPlayer, tracer in pairs(TracerLines) do
        if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
            local humanoid = targetPlayer.Character:FindFirstChildOfClass("Humanoid")
            local rootPart = targetPlayer.Character.HumanoidRootPart
            local isDead = humanoid and humanoid.Health <= 0
            local isTeammate = IsTeammate(targetPlayer)
            
            if isDead and not ESPConfig.ShowDead then
                tracer.Visible = false
                continue
            end
            
            local screenPos, onScreen = camera:WorldToViewportPoint(rootPart.Position)
            
            if onScreen then
                tracer.From = Vector2.new(camera.ViewportSize.X / 2, camera.ViewportSize.Y)
                tracer.To = Vector2.new(screenPos.X, screenPos.Y)
                tracer.Visible = true
                tracer.Color = isTeammate and ESPConfig.TeammateColor or ESPConfig.TracerColor
            else
                tracer.Visible = false
            end
        else
            tracer.Visible = false
        end
    end
end

-- Функция обновления 3D Box ESP
local function UpdateBox3DESP()
    if not ESPConfig.Enabled or not ESPConfig.Box3DEnabled then return end
    
    local camera = workspace.CurrentCamera
    
    for targetPlayer, lines in pairs(Box3DObjects) do
        if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
            local humanoid = targetPlayer.Character:FindFirstChildOfClass("Humanoid")
            local rootPart = targetPlayer.Character.HumanoidRootPart
            local head = targetPlayer.Character:FindFirstChild("Head")
            
            if not humanoid or not rootPart or not head then
                for _, line in ipairs(lines) do
                    line.Visible = false
                end
                continue
            end
            
            local isDead = humanoid.Health <= 0
            if isDead and not ESPConfig.ShowDead then
                for _, line in ipairs(lines) do
                    line.Visible = false
                end
                continue
            end
            
            -- Создаем 3D коробку вокруг игрока
            local size = Vector3.new(3, 5, 3) * ESPConfig.Box3DSize
            local corners = {
                rootPart.Position + Vector3.new(-size.X/2, -size.Y/2, -size.Z/2),
                rootPart.Position + Vector3.new(size.X/2, -size.Y/2, -size.Z/2),
                rootPart.Position + Vector3.new(size.X/2, size.Y/2, -size.Z/2),
                rootPart.Position + Vector3.new(-size.X/2, size.Y/2, -size.Z/2),
                rootPart.Position + Vector3.new(-size.X/2, -size.Y/2, size.Z/2),
                rootPart.Position + Vector3.new(size.X/2, -size.Y/2, size.Z/2),
                rootPart.Position + Vector3.new(size.X/2, size.Y/2, size.Z/2),
                rootPart.Position + Vector3.new(-size.X/2, size.Y/2, size.Z/2)
            }
            
            -- Преобразуем углы в 2D координаты
            local screenCorners = {}
            local allVisible = true
            
            for i, corner in ipairs(corners) do
                local screenPos, visible = camera:WorldToViewportPoint(corner)
                screenCorners[i] = Vector2.new(screenPos.X, screenPos.Y)
                if not visible then allVisible = false end
            end
            
            if not allVisible then
                for _, line in ipairs(lines) do
                    line.Visible = false
                end
                continue
            end
            
            -- Рисуем линии коробки
            local connections = {
                {1, 2}, {2, 3}, {3, 4}, {4, 1}, -- нижний квадрат
                {5, 6}, {6, 7}, {7, 8}, {8, 5}, -- верхний квадрат
                {1, 5}, {2, 6}, {3, 7}, {4, 8}  -- вертикальные линии
            }
            
            for i, connection in ipairs(connections) do
                if lines[i] then
                    lines[i].From = screenCorners[connection[1]]
                    lines[i].To = screenCorners[connection[2]]
                    lines[i].Visible = true
                    lines[i].Color = isDead and ESPConfig.DeadColor or ESPConfig.Box3DColor
                    lines[i].Thickness = ESPConfig.Box3DThickness
                end
            end
        else
            for _, line in ipairs(lines) do
                line.Visible = false
            end
        end
    end
end

-- Полное обновление ESP
local function UpdateESP()
    for targetPlayer, _ in pairs(ESPObjects) do
        ClearPlayerESP(targetPlayer)
    end
    
    if not ESPConfig.Enabled then return end

    for _, targetPlayer in ipairs(Players:GetPlayers()) do
        if targetPlayer ~= player then
            CreatePlayerESP(targetPlayer)
        end
    end
end

-- Инициализация ESP
local function InitializeESPHandlers()
    game.Players.PlayerAdded:Connect(function(targetPlayer)
        if ESPConfig.Enabled then
            task.wait(2)
            CreatePlayerESP(targetPlayer)
        end
    end)
    
    game.Players.PlayerRemoving:Connect(function(targetPlayer)
        ClearPlayerESP(targetPlayer)
    end)
    
    for _, targetPlayer in ipairs(Players:GetPlayers()) do
        if targetPlayer ~= player and ESPConfig.Enabled then
            task.wait(0.2)
            CreatePlayerESP(targetPlayer)
        end
    end
end

-- Цикл обновления ESP
task.spawn(function()
    while task.wait(ESPConfig.UpdateFrequency) do
        if ESPConfig.Enabled then
            pcall(function()
                UpdateESPText()
                UpdateTracers()
                if ESPConfig.Box3DEnabled then
                    UpdateBox3DESP()
                end
            end)
        end
    end
end)

-- Элементы управления ESP
ESPTab:CreateToggle({
    Name = "👁️ ВКЛ/ВЫКЛ ESP",
    CurrentValue = ESPConfig.Enabled,
    Callback = function(value)
        ESPConfig.Enabled = value
        if value then
            InitializeESPHandlers()
            Rayfield:Notify({
                Title = "👁️ ESP ВКЛЮЧЁН",
                Content = "Все функции ESP активированы",
                Duration = 3
            })
        else
            for targetPlayer, _ in pairs(ESPObjects) do
                ClearPlayerESP(targetPlayer)
            end
            Rayfield:Notify({
                Title = "👀 ESP ВЫКЛЮЧЕН",
                Content = "ESP деактивирован",
                Duration = 2
            })
        end
    end
})

ESPTab:CreateToggle({
    Name = "👥 Игнорировать команду",
    CurrentValue = ESPConfig.TeamCheck,
    Callback = function(value)
        ESPConfig.TeamCheck = value
        UpdateESP()
    end
})

ESPTab:CreateToggle({
    Name = "💚 Показывать тиммейтов",
    CurrentValue = ESPConfig.ShowTeammates,
    Callback = function(value)
        ESPConfig.ShowTeammates = value
        UpdateESP()
    end
})

ESPTab:CreateToggle({
    Name = "🟦 Рамки",
    CurrentValue = ESPConfig.Boxes,
    Callback = function(value)
        ESPConfig.Boxes = value
        UpdateESP()
    end
})

ESPTab:CreateToggle({
    Name = "📛 Имена",
    CurrentValue = ESPConfig.Names,
    Callback = function(value)
        ESPConfig.Names = value
        UpdateESP()
    end
})

ESPTab:CreateToggle({
    Name = "❤ Здоровье",
    CurrentValue = ESPConfig.Health,
    Callback = function(value)
        ESPConfig.Health = value
        UpdateESP()
    end
})

ESPTab:CreateToggle({
    Name = "📏 Расстояние",
    CurrentValue = ESPConfig.Distance,
    Callback = function(value)
        ESPConfig.Distance = value
        UpdateESP()
    end
})

ESPTab:CreateToggle({
    Name = "➖ Трассеры",
    CurrentValue = ESPConfig.Tracers,
    Callback = function(value)
        ESPConfig.Tracers = value
        UpdateESP()
    end
})

ESPTab:CreateToggle({
    Name = "🧵 Трассеры для тиммейтов",
    CurrentValue = ESPConfig.TracersForTeammates,
    Callback = function(value)
        ESPConfig.TracersForTeammates = value
        UpdateESP()
    end
})

ESPTab:CreateToggle({
    Name = "💀 Показывать мертвых",
    CurrentValue = ESPConfig.ShowDead,
    Callback = function(value)
        ESPConfig.ShowDead = value
        UpdateESP()
    end
})

ESPTab:CreateToggle({
    Name = "🎯 3D Box ESP",
    CurrentValue = ESPConfig.Box3DEnabled,
    Callback = function(value)
        ESPConfig.Box3DEnabled = value
        if not value then
            for targetPlayer, lines in pairs(Box3DObjects) do
                for _, line in ipairs(lines) do
                    line:Remove()
                end
            end
            Box3DObjects = {}
        else
            UpdateESP()
        end
    end
})

ESPTab:CreateColorPicker({
    Name = "🔴 Цвет врагов",
    Color = ESPConfig.EnemyColor,
    Callback = function(value)
        ESPConfig.EnemyColor = value
        UpdateESP()
    end
})

ESPTab:CreateColorPicker({
    Name = "💚 Цвет тиммейтов",
    Color = ESPConfig.TeammateColor,
    Callback = function(value)
        ESPConfig.TeammateColor = value
        UpdateESP()
    end
})

ESPTab:CreateColorPicker({
    Name = "💀 Цвет мертвых",
    Color = ESPConfig.DeadColor,
    Callback = function(value)
        ESPConfig.DeadColor = value
        UpdateESP()
    end
})

ESPTab:CreateColorPicker({
    Name = "🎯 Цвет 3D Box",
    Color = ESPConfig.Box3DColor,
    Callback = function(value)
        ESPConfig.Box3DColor = value
        for targetPlayer, lines in pairs(Box3DObjects) do
            for _, line in ipairs(lines) do
                line.Color = value
            end
        end
    end
})

ESPTab:CreateSlider({
    Name = "🔢 Размер текста",
    Range = {8, 24},
    Increment = 1,
    Suffix = "px",
    CurrentValue = ESPConfig.TextSize,
    Callback = function(value)
        ESPConfig.TextSize = value
        UpdateESP()
    end
})

ESPTab:CreateSlider({
    Name = "🌫️ Прозрачность",
    Range = {0, 1},
    Increment = 0.1,
    CurrentValue = ESPConfig.FillTransparency,
    Callback = function(value)
        ESPConfig.FillTransparency = value
        UpdateESP()
    end
})

ESPTab:CreateSlider({
    Name = "📏 Толщина линий",
    Range = {1, 5},
    Increment = 1,
    CurrentValue = ESPConfig.TracerThickness,
    Callback = function(value)
        ESPConfig.TracerThickness = value
        UpdateESP()
    end
})

ESPTab:CreateSlider({
    Name = "🎯 Толщина 3D Box",
    Range = {1, 5},
    Increment = 1,
    CurrentValue = ESPConfig.Box3DThickness,
    Callback = function(value)
        ESPConfig.Box3DThickness = value
        for targetPlayer, lines in pairs(Box3DObjects) do
            for _, line in ipairs(lines) do
                line.Thickness = value
            end
        end
    end
})

ESPTab:CreateSlider({
    Name = "📐 Размер 3D Box",
    Range = {0.5, 5.0},
    Increment = 0.1,
    Suffix = "x",
    CurrentValue = ESPConfig.Box3DSize,
    Callback = function(value)
        ESPConfig.Box3DSize = value
    end
})

ESPTab:CreateSlider({
    Name = "⚡ Частота обновления ESP",
    Range = {0.02, 0.1},
    Increment = 0.01,
    Suffix = "сек",
    CurrentValue = ESPConfig.UpdateFrequency,
    Callback = function(value)
        ESPConfig.UpdateFrequency = value
    end
})

--[[
    ==============================
    ТЕЛЕПОРТ (БЕЗ ИЗМЕНЕНИЙ)
    ==============================
]]--
local TeleportSection = TeleportTab:CreateSection("🌀 УЛУЧШЕННЫЙ ТЕЛЕПОРТ")

local teleporting = false
local teleportConnection
local TeleportConfig = {
    Distance = 10,
    Height = 0,
    MinDistance = 0,
    MaxDistance = 20,
    CurrentSpread = 0
}

local SelectedPlayer = nil
local PlayerList = {}

-- Функция обновления списка игроков
local function UpdatePlayerList()
    PlayerList = {}
    for _, targetPlayer in ipairs(Players:GetPlayers()) do
        if targetPlayer ~= player then
            table.insert(PlayerList, targetPlayer.Name)
        end
    end
    table.insert(PlayerList, "Все игроки")
    return PlayerList
end

-- Выпадающий список для выбора игрока
local PlayerDropdown = TeleportTab:CreateDropdown({
    Name = "👤 Выберите игрока",
    Options = UpdatePlayerList(),
    CurrentOption = "Все игроки",
    Callback = function(selected)
        if selected == "Все игроки" then
            SelectedPlayer = nil
        else
            SelectedPlayer = Players:FindFirstChild(selected)
        end
    end,
})

-- Обновление списка игроков при подключении/отключении
Players.PlayerAdded:Connect(function()
    PlayerDropdown:Refresh(UpdatePlayerList())
end)

Players.PlayerRemoving:Connect(function()
    PlayerDropdown:Refresh(UpdatePlayerList())
end)

-- Телепорт выбранного игрока или всех игроков
TeleportTab:CreateButton({
    Name = "🌀 Телепортировать выбранного",
    Callback = function()
        if not player.Character then return end
        
        local root = player.Character.HumanoidRootPart
        if not root then return end
        
        if SelectedPlayer then
            if not SelectedPlayer.Character then return end
            
            local targetRoot = SelectedPlayer.Character:FindFirstChild("HumanoidRootPart")
            local targetHumanoid = SelectedPlayer.Character:FindFirstChildOfClass("Humanoid")
            
            if targetRoot and targetHumanoid and targetHumanoid.Health > 0 then
                local lookVector = root.CFrame.LookVector
                local targetPos = root.Position + (lookVector * TeleportConfig.Distance) + Vector3.new(0, TeleportConfig.Height, 0)
                targetRoot.CFrame = CFrame.new(targetPos)
                
                Rayfield:Notify({
                    Title = "🌀 Телепорт",
                    Content = "Игрок " .. SelectedPlayer.Name .. " телепортирован",
                    Duration = 3
                })
            end
        else
            local playersToTeleport = {}
            for _, targetPlayer in ipairs(Players:GetPlayers()) do
                if targetPlayer ~= player and targetPlayer.Character then
                    table.insert(playersToTeleport, targetPlayer)
                end
            end
            
            local lookVector = root.CFrame.LookVector
            local rightVector = root.CFrame.RightVector
            local centerPos = root.Position + (lookVector * TeleportConfig.Distance)
            
            for i, targetPlayer in ipairs(playersToTeleport) do
                local targetRoot = targetPlayer.Character:FindFirstChild("HumanoidRootPart")
                local targetHumanoid = targetPlayer.Character:FindFirstChildOfClass("Humanoid")
                
                if targetRoot and targetHumanoid and targetHumanoid.Health > 0 then
                    pcall(function()
                        if TeleportConfig.CurrentSpread == 0 then
                            targetRoot.CFrame = CFrame.new(centerPos + Vector3.new(0, TeleportConfig.Height, 0))
                        else
                            local offset = rightVector * ((i - 1) - (#playersToTeleport - 1) / 2) * TeleportConfig.CurrentSpread
                            local targetPos = centerPos + offset + Vector3.new(0, TeleportConfig.Height, 0)
                            targetRoot.CFrame = CFrame.new(targetPos)
                        end
                    end)
                end
            end
            
            Rayfield:Notify({
                Title = "🌀 Телепорт",
                Content = "Все игроки телепортированы",
                Duration = 3
            })
        end
    end
})

-- Непрерывный телепорт
TeleportTab:CreateButton({
    Name = "🌀 ВКЛ/ВЫКЛ Непрерывный телепорт",
    Callback = function()
        teleporting = not teleporting
        
        if teleporting then
            if not player.Character then return end
            
            local root = player.Character.HumanoidRootPart
            if not root then return end
            
            teleportConnection = game:GetService("RunService").Heartbeat:Connect(function()
                if not player.Character or not root.Parent then
                    if teleportConnection then teleportConnection:Disconnect() end
                    return
                end
                
                local root = player.Character.HumanoidRootPart
                local lookVector = root.CFrame.LookVector
                local rightVector = root.CFrame.RightVector
                local centerPos = root.Position + (lookVector * TeleportConfig.Distance)
                
                local playersToTeleport = {}
                if SelectedPlayer then
                    if SelectedPlayer.Character then
                        table.insert(playersToTeleport, SelectedPlayer)
                    end
                else
                    for _, targetPlayer in ipairs(Players:GetPlayers()) do
                        if targetPlayer ~= player and targetPlayer.Character then
                            table.insert(playersToTeleport, targetPlayer)
                        end
                    end
                end
                
                for i, targetPlayer in ipairs(playersToTeleport) do
                    local targetRoot = targetPlayer.Character:FindFirstChild("HumanoidRootPart")
                    local targetHumanoid = targetPlayer.Character:FindFirstChildOfClass("Humanoid")
                    
                    if targetRoot and targetHumanoid and targetHumanoid.Health > 0 then
                        pcall(function()
                            if TeleportConfig.CurrentSpread == 0 then
                                targetRoot.CFrame = CFrame.new(centerPos + Vector3.new(0, TeleportConfig.Height, 0))
                            else
                                local offset = rightVector * ((i - 1) - (#playersToTeleport - 1) / 2) * TeleportConfig.CurrentSpread
                                local targetPos = centerPos + offset + Vector3.new(0, TeleportConfig.Height, 0)
                                targetRoot.CFrame = CFrame.new(targetPos)
                            end
                        end)
                    end
                end
            end)
            
            Rayfield:Notify({
                Title = "🌀 НЕПРЕРЫВНЫЙ ТЕЛЕПОРТ АКТИВИРОВАН",
                Content = SelectedPlayer and ("Игрок " .. SelectedPlayer.Name .. " телепортируется") or "Все игроки телепортируются",
                Duration = 3
            })
        else
            if teleportConnection then
                teleportConnection:Disconnect()
                teleportConnection = nil
                Rayfield:Notify({
                    Title = "🛑 ТЕЛЕПОРТ ОСТАНОВЛЕН",
                    Content = "Функция отключена",
                    Duration = 2
                })
            end
        end
    end
})

-- Настройки телепорта
TeleportTab:CreateSlider({
    Name = "📏 Дистанция телепортации",
    Range = {5, 50},
    Increment = 1,
    Suffix = "studs",
    CurrentValue = TeleportConfig.Distance,
    Callback = function(value)
        TeleportConfig.Distance = value
    end
})

TeleportTab:CreateSlider({
    Name = "📐 Расстояние между игроками",
    Range = {0, 20},
    Increment = 1,
    Suffix = "studs",
    CurrentValue = TeleportConfig.CurrentSpread,
    Callback = function(value)
        TeleportConfig.CurrentSpread = value
    end
})

TeleportTab:CreateLabel("0 = все в одном месте, >0 = в линию")

--[[
    ==============================
    РАЗДЕЛ УБИТЬ ВСЕХ
    ==============================
]]--
local KillAllSection = KillAllTab:CreateSection("⚔️ УБИТЬ ВСЕХ ВРАГОВ")

local safeZoneRadius = 20
local isActive = false
local killAllEnabled = true
local ignoreTeam = true

local zonePart = Instance.new("Part")
zonePart.Shape = Enum.PartType.Ball
zonePart.Anchored = true
zonePart.CanCollide = false
zonePart.Transparency = 0.7
zonePart.Color = Color3.fromRGB(0, 255, 0)
zonePart.Material = Enum.Material.Neon
zonePart.Name = "SafeZone"
zonePart.Parent = workspace

KillAllTab:CreateToggle({
   Name = "🛡️ Включить Safe Zone",
   CurrentValue = isActive,
   Callback = function(Value)
      isActive = Value
   end,
})

KillAllTab:CreateToggle({
   Name = "⚔️ Режим Kill All",
   CurrentValue = killAllEnabled,
   Callback = function(Value)
      killAllEnabled = Value
   end,
})

KillAllTab:CreateToggle({
   Name = "👥 Игнорировать команду",
   CurrentValue = ignoreTeam,
   Callback = function(Value)
      ignoreTeam = Value
   end,
})

KillAllTab:CreateSlider({
   Name = "📏 Радиус безопасной зоны",
   Range = {5, 100},
   Increment = 1,
   Suffix = "studs",
   CurrentValue = safeZoneRadius,
   Callback = function(Value)
      safeZoneRadius = Value
   end,
})

-- Цикл Kill All
task.spawn(function()
    while task.wait(0.1) do
        local myChar = player.Character
        if not myChar or not myChar:FindFirstChild("HumanoidRootPart") then continue end
        
        local root = myChar.HumanoidRootPart
        zonePart.Position = root.Position
        zonePart.Size = Vector3.new(safeZoneRadius * 2, safeZoneRadius * 2, safeZoneRadius * 2)
        
        if not isActive then 
            zonePart.Transparency = 1
            continue 
        else
            zonePart.Transparency = 0.7
        end
        
        local tool = myChar:FindFirstChildOfClass("Tool")
        if not tool or not tool:FindFirstChild("Handle") then continue end
        
        for _, other in ipairs(Players:GetPlayers()) do
            if other ~= player and other.Character and other.Character:FindFirstChild("HumanoidRootPart") then
                if ignoreTeam and player.Team and other.Team and player.Team == other.Team then
                    continue
                end
                
                local oRoot = other.Character.HumanoidRootPart
                local dist = (oRoot.Position - root.Position).Magnitude
                
                local shouldAttack = killAllEnabled or (dist > safeZoneRadius)
                
                if shouldAttack and dist <= 100 then
                    tool:Activate()
                    for _, part in pairs(other.Character:GetChildren()) do
                        if part:IsA("BasePart") then
                            firetouchinterest(tool.Handle, part, 0)
                            firetouchinterest(tool.Handle, part, 1)
                        end
                    end
                end
            end
        end
    end
end)

--[[
    ==============================
    ДОПОЛНИТЕЛЬНЫЕ СКРИПТЫ
    ==============================
]]--
local ScriptsSection = MainTab:CreateSection("📜 ДОПОЛНИТЕЛЬНЫЕ СКРИПТЫ")

local scriptUrls = {
    "https://pastefy.app/YsJgITXR/raw",
    "https://pastebin.com/raw/3Rnd9rHf", 
    "https://glot.io/snippets/gua2ntmbdm/raw/main.lua",
    "https://pastefy.app/JOWniO6o/raw",
    "https://pastebin.com/raw/LgZwZ7ZB",
    "https://pastefy.app/w7KnPY70/raw"
}

local scriptNames = {
    "👹 SCP-096 Режим",
    "👻 Невидимость PRO", 
    "🛡️ Бог-режим+",
    "🧟 Зомби хаки",
    "🏎️ флинг+",
    "🧟 Простой зомби-напарник"
}

for i = 1, 6 do
    MainTab:CreateButton({
        Name = scriptNames[i],
        Callback = function()
            Rayfield:Notify({
                Title = "⏳ Загрузка...",
                Content = "📥 "..scriptNames[i].." запускается",
                Duration = 3
            })
            
            local success, err = pcall(function()
                loadstring(game:HttpGet(scriptUrls[i], true))()
            end)
            
            if not success then
                Rayfield:Notify({
                    Title = "❌ Ошибка!",
                    Content = "⚠️ Не удалось загрузить:\n"..tostring(err),
                    Duration = 6
                })
            end
        end
    })
end

--[[
    ==============================
    ОСНОВНЫЕ ОБРАБОТЧИКИ
    ==============================
]]--
game:GetService("RunService").Stepped:Connect(function()
    if noclipActive and player.Character then
        for _, part in ipairs(player.Character:GetDescendants()) do
            if part:IsA("BasePart") then
                part.CanCollide = false
            end
        end
    end
end)

game:GetService("RunService").Heartbeat:Connect(function()
    if flyActive and flyVelocity and player.Character then
        local root = player.Character:FindFirstChild("HumanoidRootPart")
        if not root then return end
        
        local input = game:GetService("UserInputService")
        local newVelocity = Vector3.new(0, 0, 0)
        
        if input:IsKeyDown(Enum.KeyCode.W) then newVelocity = root.CFrame.LookVector * 50 end
        if input:IsKeyDown(Enum.KeyCode.S) then newVelocity = root.CFrame.LookVector * -50 end
        if input:IsKeyDown(Enum.KeyCode.A) then newVelocity = newVelocity - (root.CFrame.RightVector * 50) end
        if input:IsKeyDown(Enum.KeyCode.D) then newVelocity = newVelocity + (root.CFrame.RightVector * 50) end
        if input:IsKeyDown(Enum.KeyCode.Space) then newVelocity = newVelocity + Vector3.new(0, 50, 0) end
        if input:IsKeyDown(Enum.KeyCode.LeftShift) then newVelocity = newVelocity - Vector3.new(0, 50, 0) end
        
        if flyVelocity then
            flyVelocity.Velocity = newVelocity
        end
    end
end)

player.CharacterAdded:Connect(function(character)
    if flyActive then
        task.wait(1)
        ToggleFlight()
        ToggleFlight()
    end
    
    if ESPConfig.Enabled then
        task.wait(2)
        UpdateESP()
    end
end)

-- Уведомление о загрузке
Rayfield:Notify({
    Title = "💜 ELITE HUB v8.1 COMPLETE ЗАГРУЖЕН!",
    Content = "Плавный аимбот | Все функции ESP возвращены",
    Duration = 6,
    Image = 7733960981
})

print("🌟 ELITE HUB v8.1 COMPLETE успешно загружен!")