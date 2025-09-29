-- Загрузка Rayfield
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
    Name = "🌟💎 ELITE HUB 12.6 HASKER 💎🌟",
    LoadingTitle = "⚡🔥 Hasker Edition загружается... 🔥⚡",
    LoadingSubtitle = "💜👑 by gerkylesichakes | Версия 12.6 | Все функции включены 👑💜",
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
local GameHubTab = Window:CreateTab("🎮 GAME HUB", 62668888)
local FEScriptsTab = Window:CreateTab("🎭 FE СКРИПТЫ", 7733960981)
local HubsTab = Window:CreateTab("🚀 ХАБЫ", 6022668888)
local GameScriptsTab = Window:CreateTab("🎯 СКРИПТЫ ДЛЯ ИГР", 7733960981)

local Players = game:GetService("Players")
local player = Players.LocalPlayer

-- Вспомогательная функция для безопасного выполнения Callback
local function SafeCallback(func)
    return function(...)
        local success, err = pcall(func, ...)
        if not success then
            Rayfield:Notify({
                Title = "❌ Ошибка",
                Content = "Произошла ошибка при выполнении: " .. tostring(err),
                Duration = 5,
                Image = 4483362458
            })
            warn("Callback Error:", err)
        end
    end
end

-- Функция для загрузки скриптов с уведомлениями
local function LoadScript(name, url)
    task.spawn(function()
        Rayfield:Notify({
            Title = "⏳ Загрузка...",
            Content = name .. " запускается",
            Duration = 2
        })
        
        task.wait(0.5)
        
        local success, err = pcall(function()
            loadstring(game:HttpGet(url))()
        end)
        
        task.wait(0.5)
        
        if success then
            Rayfield:Notify({
                Title = "✅ Успешно!",
                Content = name .. " загружен",
                Duration = 3
            })
        else
            Rayfield:Notify({
                Title = "❌ Ошибка!",
                Content = "Не удалось загрузить " .. name,
                Duration = 5
            })
            warn("Script Load Error:", name, err)
        end
    end)
end

--[[
    ==============================
    ВКЛАДКА ХАБОВ
    ==============================
]]--
local HubsSection = HubsTab:CreateSection("🎮 УНИВЕРСАЛЬНЫЕ ХАБЫ")

HubsTab:CreateButton({
    Name = "🎮 Ghub V15",
    Callback = function()
        LoadScript("🎮 Ghub V15", "https://raw.githubusercontent.com/gclich/GHUBV15_X_ZENXOS-MAINLOADER/refs/heads/main/GHUB-X-ZENXOS-V15.txt")
    end
})

HubsTab:CreateButton({
    Name = "❄️ Blizzard Hub V2",
    Callback = function()
        LoadScript("❄️ Blizzard Hub V2", "https://raw.githubusercontent.com/uaahjajajqoqiqkqhwhwhw/Blizzard-Hub-Official/main/Blizzard%20Hub%20V2.lua")
    end
})

HubsTab:CreateButton({
    Name = "🎯 Game Hub",
    Callback = function()
        LoadScript("🎯 Game Hub", "https://raw.githubusercontent.com/GamerScripter/Game-Hub/main/loader")
    end
})

HubsTab:CreateButton({
    Name = "🐯 Tiger X",
    Callback = function()
        LoadScript("🐯 Tiger X", "https://raw.githubusercontent.com/balintTheDevX/Tiger-X-V3/main/Tiger%20X%20V3.5%20Fixed")
    end
})

HubsTab:CreateButton({
    Name = "🎨 Bido Skins V1.8",
    Callback = function()
        LoadScript("🎨 Bido Skins V1.8", "https://raw.githubusercontent.com/BidoSkinsYT/BidoSkinsYT/main/Bido%20Skins%20V1.8")
    end
})

HubsTab:CreateButton({
    Name = "🌀 Draught Hub V5",
    Callback = function()
        LoadScript("🌀 Draught Hub V5", "https://raw.githubusercontent.com/SabrXH/Draught-Hub-V5/refs/heads/main/Script.lua")
    end
})

HubsTab:CreateButton({
    Name = "🍊 OrangeX Hub",
    Callback = function()
        LoadScript("🍊 OrangeX Hub", "https://raw.githubusercontent.com/ImJosh66/Ab2rW/main/ORANGEX%20V5%20RELEASED%20ORANGEX%20ON%20TOP%20.txt")
    end
})

HubsTab:CreateButton({
    Name = "💪 GigaChad Hub V7",
    Callback = function()
        LoadScript("💪 GigaChad Hub V7", "https://raw.githubusercontent.com/LolPrivate/Side/main/Gigachad%20Hub%20V7.lua")
    end
})

HubsTab:CreateButton({
    Name = "👻 Ghost Hub",
    Callback = function()
        LoadScript("👻 Ghost Hub", "https://raw.githubusercontent.com/GhostPlayer352/Test4/main/GhostHub")
    end
})

HubsTab:CreateButton({
    Name = "⚡ Nullware Hub V3",
    Callback = function()
        getgenv().Theme = "Blue"
        LoadScript("⚡ Nullware Hub V3", "https://gist.githubusercontent.com/M6HqVBcddw2qaN4s/2d722888a388017c18028cd434c43a25/raw/dcccf1027fe4b90780e47767aaf584389c9d7771/EULma3fU90PUOKUn?identifier=".. (function()local a=""for b=1,256 do local c=math.random(1,3)a=a..string.char(c==1 and math.random(48,57)or c==2 and math.random(97,122)or c==3 and math.random(65,90))end;return a end)())
    end
})

HubsTab:CreateButton({
    Name = "🔧 Haxker_6666666 Hub",
    Callback = function()
        LoadScript("🔧 Haxker_6666666 Hub", "https://raw.githubusercontent.com/FreeRobloxScripts1/Haxker_6666666-Hub/main/loader")
    end
})

HubsTab:CreateButton({
    Name = "🌙 Moon UI",
    Callback = function()
        LoadScript("🌙 Moon UI", "https://raw.githubusercontent.com/IlikeyocutgHAH12/MoonUI-v10-/main/MoonUI%20v10")
    end
})

HubsTab:CreateButton({
    Name = "💪 GigaChad Hub v3.5",
    Callback = function()
        LoadScript("💪 GigaChad Hub v3.5", "https://raw.githubusercontent.com/OWJBWKQLAISH/GigaChad-Hub/main/Version%20V3.5")
    end
})

HubsTab:CreateButton({
    Name = "🚀 Frixon Hub",
    Callback = function()
        LoadScript("🚀 Frixon Hub", "https://gist.githubusercontent.com/RedoGaming/459eb467f3df927b07ca398a68f3b053/raw/6d1f7a2c8fefd072dc53ebbbec38c6f93c7de1ad/Frixon%2520Hub!%2520New%2520OP%2520Exploit%2520Hub%2520for%2520Roblox!")
    end
})

HubsTab:CreateButton({
    Name = "💎 Mega Hub",
    Callback = function()
        LoadScript("💎 Mega Hub", "https://raw.githubusercontent.com/WholeF00ds/Mega/main/Obfuscated%20Loader")
    end
})

HubsTab:CreateButton({
    Name = "🔰 Mini Hub",
    Callback = function()
        LoadScript("🔰 Mini Hub", "https://raw.githubusercontent.com/MiniNoobie/MINI-HUB-V2/main/FINALLY%20UPDATED%20MINI%20HUB")
    end
})

HubsTab:CreateButton({
    Name = "🎨 Davi GUI",
    Callback = function()
        LoadScript("🎨 Davi GUI", "https://raw.githubusercontent.com/Davicoderliner/davigui/main/Daviguiv2loader.lua")
    end
})

HubsTab:CreateButton({
    Name = "🅱️ B Hub",
    Callback = function()
        LoadScript("🅱️ B Hub", "https://raw.githubusercontent.com/YourLocalNzi/Ye/main/BHob6")
    end
})

HubsTab:CreateButton({
    Name = "👑 Legon X",
    Callback = function()
        LoadScript("👑 Legon X", "https://raw.githubusercontent.com/YellowGreg/Loadstring/main/LegonX")
    end
})

HubsTab:CreateButton({
    Name = "🌊 Orca Hub",
    Callback = function()
        LoadScript("🌊 Orca Hub", "https://raw.githubusercontent.com/richie0866/orca/master/public/snapshot.lua")
    end
})

HubsTab:CreateButton({
    Name = "🎯 AirHub (Aimbot/ESP)",
    Callback = function()
        LoadScript("🎯 AirHub", "https://raw.githubusercontent.com/Exunys/AirHub/main/AirHub.lua")
    end
})

HubsTab:CreateButton({
    Name = "🔫 Parvus Hub (Shooter)",
    Callback = function()
        LoadScript("🔫 Parvus Hub", "https://raw.githubusercontent.com/AlexR32/Parvus/main/Parvus.lua")
    end
})

HubsTab:CreateButton({
    Name = "🌟 Comet Hub",
    Callback = function()
        LoadScript("🌟 Comet Hub", "https://raw.githubusercontent.com/AokijiFlame/Hubs/Squid/CometHub.lua")
    end
})

HubsTab:CreateButton({
    Name = "🏠 CarpetHack Hub",
    Callback = function()
        LoadScript("🏠 CarpetHack Hub", "https://raw.githubusercontent.com/RobloxHackingProject/CHHub/main/CHHub.lua")
    end
})

HubsTab:CreateButton({
    Name = "⚡ Vynixu Hub",
    Callback = function()
        LoadScript("⚡ Vynixu Hub", "https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/Loader.lua")
    end
})

HubsTab:CreateButton({
    Name = "🎮 Hydroxide Hub",
    Callback = function()
        LoadScript("🎮 Hydroxide Hub", "https://raw.githubusercontent.com/Upbolt/Hydroxide/revision/init.lua")
    end
})

HubsTab:CreateButton({
    Name = "🔥 Owl Hub",
    Callback = function()
        LoadScript("🔥 Owl Hub", "https://raw.githubusercontent.com/CriShoux/OwlHub/master/OwlHub.txt")
    end
})

HubsTab:CreateButton({
    Name = "💫 Nebula Hub",
    Callback = function()
        LoadScript("💫 Nebula Hub", "https://raw.githubusercontent.com/Nebula-Softworks/Nebula-Hub/main/Main")
    end
})

HubsTab:CreateButton({
    Name = "🌈 Spectrum Hub",
    Callback = function()
        LoadScript("🌈 Spectrum Hub", "https://raw.githubusercontent.com/SpectrumScripts/Spectrum/main/Main.lua")
    end
})

HubsTab:CreateButton({
    Name = "⭐ Stellar Hub",
    Callback = function()
        LoadScript("⭐ Stellar Hub", "https://raw.githubusercontent.com/StellarScripts/Stellar-Hub/main/Main")
    end
})

HubsTab:CreateButton({
    Name = "🎪 Circus Hub",
    Callback = function()
        LoadScript("🎪 Circus Hub", "https://raw.githubusercontent.com/CircusScripts/CircusHub/main/source")
    end
})

HubsTab:CreateButton({
    Name = "🌙 Eclipse Hub",
    Callback = function()
        LoadScript("🌙 Eclipse Hub", "https://raw.githubusercontent.com/EclipseHub/Eclipse/main/Loader")
    end
})

HubsTab:CreateButton({
    Name = "🔮 Mystic Hub",
    Callback = function()
        LoadScript("🔮 Mystic Hub", "https://raw.githubusercontent.com/MysticScripts/MysticHub/main/Main.lua")
    end
})

HubsTab:CreateButton({
    Name = "⚔️ Gladiator Hub",
    Callback = function()
        LoadScript("⚔️ Gladiator Hub", "https://raw.githubusercontent.com/GladiatorScripts/Gladiator/main/Hub")
    end
})

HubsTab:CreateButton({
    Name = "🎭 Phantom Hub",
    Callback = function()
        LoadScript("🎭 Phantom Hub", "https://raw.githubusercontent.com/PhantomScripts/PhantomHub/main/Main")
    end
})

HubsTab:CreateButton({
    Name = "🌪️ Vortex Hub",
    Callback = function()
        LoadScript("🌪️ Vortex Hub", "https://raw.githubusercontent.com/VortexScripts/VortexHub/main/Source")
    end
})

HubsTab:CreateButton({
    Name = "💎 Diamond Hub",
    Callback = function()
        LoadScript("💎 Diamond Hub", "https://raw.githubusercontent.com/DiamondScripts/DiamondHub/main/Main.lua")
    end
})

HubsTab:CreateButton({
    Name = "🦅 Falcon Hub",
    Callback = function()
        LoadScript("🦅 Falcon Hub", "https://raw.githubusercontent.com/FalconScripts/FalconHub/main/Loader")
    end
})

HubsTab:CreateButton({
    Name = "🌟 Nova Hub",
    Callback = function()
        LoadScript("🌟 Nova Hub", "https://raw.githubusercontent.com/NovaScripts/NovaHub/main/Main")
    end
})

--[[
    ==============================
    НОВАЯ ВКЛАДКА FE СКРИПТЫ
    ==============================
]]--
local FEBasicSection = FEScriptsTab:CreateSection("🎭 ОСНОВНЫЕ FE СКРИПТЫ")

FEScriptsTab:CreateButton({
    Name = "🥊 Fe Punch (R15/R6)",
    Callback = function()
        LoadScript("🥊 Fe Punch", "https://raw.githubusercontent.com/0Ben1/fe/main/obf_rf6iQURzu1fqrytcnLBAvW34C9N55kS9g9G3CKz086rC47M6632sEd4ZZYB0AYgV.lua.txt")
    end
})

FEScriptsTab:CreateButton({
    Name = "🐱 Fe Neko (R6 only)",
    Callback = function()
        LoadScript("🐱 Fe Neko", "https://raw.githubusercontent.com/Gazer-Ha/Neko-v1/main/Extremely%20Broken")
    end
})

FEScriptsTab:CreateButton({
    Name = "⚔️ Fe Ender (R6 only)",
    Callback = function()
        LoadScript("⚔️ Fe Ender", "https://pastebin.com/raw/9BtJhHrp")
    end
})

FEScriptsTab:CreateButton({
    Name = "🌀 Fe Glios (R6 only)",
    Callback = function()
        LoadScript("🌀 Fe Glios", "https://glot.io/snippets/gua2ntmbdm/raw/main.lua")
    end
})

FEScriptsTab:CreateButton({
    Name = "💨 Fe Gale Fighter (R6 only)",
    Callback = function()
        LoadScript("💨 Fe Gale Fighter", "https://pastebin.com/raw/XPGSMEw9")
    end
})

FEScriptsTab:CreateButton({
    Name = "💃 Fe Griddy (R6 only)",
    Callback = function()
        LoadScript("💃 Fe Griddy", "https://raw.githubusercontent.com/MelonsStuff/hub/main/Griddy.txt")
    end
})

FEScriptsTab:CreateButton({
    Name = "👊 Fe KJ (R6 only)",
    Callback = function()
        LoadScript("👊 Fe KJ", "https://pastefy.app/sdAujywd/raw")
    end
})

FEScriptsTab:CreateButton({
    Name = "🔮 Fe Caducus (R6 only)",
    Callback = function()
        LoadScript("🔮 Fe Caducus", "https://pastebin.com/raw/LDL9AyQ4")
    end
})

FEScriptsTab:CreateButton({
    Name = "⚡ Fe Sonic (R6 only)",
    Callback = function()
        LoadScript("⚡ Fe Sonic", "https://pastebin.com/raw/uacVtsWe")
    end
})

FEScriptsTab:CreateButton({
    Name = "😢 Fe Sad Boy (R6 only)",
    Callback = function()
        LoadScript("😢 Fe Sad Boy", "https://pastebin.com/raw/hgPJbwF0")
    end
})

-- Раздел FE Утилиты
local FEUtilitiesSection = FEScriptsTab:CreateSection("🛠️ FE УТИЛИТЫ")

FEScriptsTab:CreateButton({
    Name = "👨‍💼 Fe G-Man (R6 only)",
    Callback = function()
        _G.clientsidedeffect = true
        LoadScript("👨‍💼 Fe G-Man", "https://raw.githubusercontent.com/randomstring0/Qwerty/refs/heads/main/qwerty18.lua")
    end
})

FEScriptsTab:CreateButton({
    Name = "🚗 Fe Car (R15/R6)",
    Callback = function()
        LoadScript("🚗 Fe Car", "https://raw.githubusercontent.com/AlexCr4sh/FeScripts/main/FeCarScript.lua")
    end
})

FEScriptsTab:CreateButton({
    Name = "🥊 Fe Fighter (R6 only)",
    Callback = function()
        LoadScript("🥊 Fe Fighter", "https://rawscripts.net/raw/Universal-Script-FE-Fighter-inspired-by-Gale-21557")
    end
})

FEScriptsTab:CreateButton({
    Name = "🤗 Fe Hug (All Games)",
    Callback = function()
        LoadScript("🤗 Fe Hug", "https://rawscripts.net/raw/Universal-Script-Hug-Gui-R6-17818")
    end
})

FEScriptsTab:CreateButton({
    Name = "👑 Fe Honored (R6 only)",
    Callback = function()
        LoadScript("👑 Fe Honored", "https://raw.githubusercontent.com/Cortzalno666/NectoVerse-Industries-Data/master/Scripts%20Folder/Honored.lua")
    end
})

FEScriptsTab:CreateButton({
    Name = "👻 Fe Invisible (All Games)",
    Callback = function()
        LoadScript("👻 Fe Invisible", "https://pastebin.com/raw/3Rnd9rHf")
    end
})

FEScriptsTab:CreateButton({
    Name = "🤖 Fe NPC Control (R6 only)",
    Callback = function()
        LoadScript("🤖 Fe NPC Control", "https://raw.githubusercontent.com/randomstring0/Qwerty/refs/heads/main/qwerty13.lua")
    end
})

FEScriptsTab:CreateButton({
    Name = "🌀 Fe Telekinesis V5",
    Callback = function()
        LoadScript("🌀 Fe Telekinesis V5", "https://raw.githubusercontent.com/randomstring0/Qwerty/refs/heads/main/qwerty11.lua")
    end
})

FEScriptsTab:CreateButton({
    Name = "🎨 Fe Tool Draw",
    Callback = function()
        LoadScript("🎨 Fe Tool Draw", "https://raw.githubusercontent.com/Affexter/Programs/refs/heads/main/scripts/tooldrawFE.lua")
    end
})

FEScriptsTab:CreateButton({
    Name = "🧟 Fe Zombie (R6/R15)",
    Callback = function()
        LoadScript("🧟 Fe Zombie", "https://pastefy.app/w7KnPY70/raw")
    end
})

-- Раздел FE Эффекты
local FEEffectsSection = FEScriptsTab:CreateSection("✨ FE ЭФФЕКТЫ")

FEScriptsTab:CreateButton({
    Name = "🕳️ Fe Blackhole",
    Callback = function()
        LoadScript("🕳️ Fe Blackhole", "https://raw.githubusercontent.com/Bac0nHck/Scripts/main/BringFlingPlayers")
    end
})

FEScriptsTab:CreateButton({
    Name = "🌀 Fe Radius Blackhole",
    Callback = function()
        LoadScript("🌀 Fe Radius Blackhole", "https://pastebin.com/raw/RkWYLL5t")
    end
})

FEScriptsTab:CreateButton({
    Name = "💍 Fe Super Ring V4",
    Callback = function()
        LoadScript("💍 Fe Super Ring V4", "https://rawscripts.net/raw/Natural-Disaster-Survival-Super-ring-V4-24296")
    end
})

FEScriptsTab:CreateButton({
    Name = "🔊 Fe Audio Spam",
    Callback = function()
        LoadScript("🔊 Fe Audio Spam", "https://pastebin.com/raw/kmXCTkBt")
    end
})

FEScriptsTab:CreateButton({
    Name = "⚔️ Fe Goner Divine Edge (R6 only)",
    Callback = function()
        LoadScript("⚔️ Fe Goner Divine Edge", "https://pastebin.com/raw/sFf9MeBE")
    end
})

FEScriptsTab:CreateButton({
    Name = "💎 Fe Crystal Dance (R6 only)",
    Callback = function()
        LoadScript("💎 Fe Crystal Dance", "https://pastebin.com/raw/vT1URaRJ")
    end
})

FEScriptsTab:CreateButton({
    Name = "💪 Fe Jerk (R15/R6)",
    Callback = function()
        LoadScript("💪 Fe Jerk", "https://pastefy.app/YZoglOyJ/raw")
    end
})

-- Раздел Genesis FE
local GenesisFESection = FEScriptsTab:CreateSection("🌟 GENESIS FE СКРИПТЫ")

FEScriptsTab:CreateButton({
    Name = "🔨 Fe Ban Hammer",
    Callback = function()
        LoadScript("🔨 Fe Ban Hammer", "https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Ban%20Hammer")
    end
})

FEScriptsTab:CreateButton({
    Name = "🌊 FE Neptunian V",
    Callback = function()
        LoadScript("🌊 FE Neptunian V", "https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Neptunian%20V")
    end
})

FEScriptsTab:CreateButton({
    Name = "⚔️ Fe Linked Sword",
    Callback = function()
        LoadScript("⚔️ Fe Linked Sword", "https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Linked%20Sword")
    end
})

FEScriptsTab:CreateButton({
    Name = "⭐ Fe Star Glicher",
    Callback = function()
        LoadScript("⭐ Fe Star Glicher", "https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Star%20Glitcher")
    end
})

FEScriptsTab:CreateButton({
    Name = "🔫 FE AK-47 (Da Hood)",
    Callback = function()
        LoadScript("🔫 FE AK-47", "https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/AK-47")
    end
})

FEScriptsTab:CreateButton({
    Name = "💎 Fe Krystal Dance",
    Callback = function()
        LoadScript("💎 Fe Krystal Dance", "https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Krystal%20Dance")
    end
})

FEScriptsTab:CreateButton({
    Name = "👮 Fe Good Cop Bad Cop",
    Callback = function()
        LoadScript("👮 Fe Good Cop Bad Cop", "https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Good%20Cop%20Bad%20Cop")
    end
})

FEScriptsTab:CreateButton({
    Name = "💨 Fe Gale Fighter",
    Callback = function()
        LoadScript("💨 Fe Gale Fighter", "https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Gale%20Fighter")
    end
})

FEScriptsTab:CreateButton({
    Name = "🔫 FE Dearsister Pistol",
    Callback = function()
        LoadScript("🔫 FE Dearsister Pistol", "https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Dearsister")
    end
})

-- Раздел FE Анимации
local FEAnimationsSection = FEScriptsTab:CreateSection("💃 FE АНИМАЦИИ")

FEScriptsTab:CreateButton({
    Name = "👨 Fe Animation Man (R6 only)",
    Callback = function()
        LoadScript("👨 Fe Animation Man", "https://pastefy.app/ZWgckZdU/raw")
    end
})

FEScriptsTab:CreateButton({
    Name = "🕺 Fe R6 Animations (R6 only)",
    Callback = function()
        LoadScript("🕺 Fe R6 Animations", "https://raw.githubusercontent.com/ocfi/Animations-obfus/refs/heads/main/obfus")
    end
})

FEScriptsTab:CreateButton({
    Name = "👟 Fe Adidas Walk (R15)",
    Callback = function()
        LoadScript("👟 Fe Adidas Walk", "https://pastebin.com/raw/VFBVQ6zb")
    end
})

FEScriptsTab:CreateButton({
    Name = "🚶 Fe Animation Walk (R15)",
    Callback = function()
        LoadScript("🚶 Fe Animation Walk", "https://pastebin.com/raw/T7kdfUmG")
    end
})

FEScriptsTab:CreateButton({
    Name = "🕺 Fe Get Sturdy (Baseplate)",
    Callback = function()
        LoadScript("🕺 Fe Get Sturdy", "https://pastebin.com/raw/xAHFn1hh")
    end
})

FEScriptsTab:CreateButton({
    Name = "🦸 Fe Superman (R15)",
    Callback = function()
        LoadScript("🦸 Fe Superman", "https://raw.githubusercontent.com/H20CalibreYT/SystemBroken/main/script")
    end
})

FEScriptsTab:CreateButton({
    Name = "🎭 Fe Emotes (R15 only)",
    Callback = function()
        LoadScript("🎭 Fe Emotes", "https://pastebin.com/raw/eCpipCTH")
    end
})

-- Дополнительные FE скрипты
local AdditionalFESection = FEScriptsTab:CreateSection("✨ ДОПОЛНИТЕЛЬНЫЕ FE СКРИПТЫ")

FEScriptsTab:CreateButton({
    Name = "🎸 Fe Guitar (R6 only)",
    Callback = function()
        LoadScript("🎸 Fe Guitar", "https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Fe%20Guitar")
    end
})

FEScriptsTab:CreateButton({
    Name = "🎤 Fe Microphone (R6 only)",
    Callback = function()
        LoadScript("🎤 Fe Microphone", "https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Fe%20Microphone")
    end
})

FEScriptsTab:CreateButton({
    Name = "🎺 Fe Trumpet (R6 only)",
    Callback = function()
        LoadScript("🎺 Fe Trumpet", "https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Fe%20Trumpet")
    end
})

FEScriptsTab:CreateButton({
    Name = "🎹 Fe Piano (R6 only)",
    Callback = function()
        LoadScript("🎹 Fe Piano", "https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Fe%20Piano")
    end
})

FEScriptsTab:CreateButton({
    Name = "🏀 Fe Basketball (R15/R6)",
    Callback = function()
        LoadScript("🏀 Fe Basketball", "https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Fe%20Basketball")
    end
})

FEScriptsTab:CreateButton({
    Name = "⚽ Fe Soccer (R15/R6)",
    Callback = function()
        LoadScript("⚽ Fe Soccer", "https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Fe%20Soccer")
    end
})

FEScriptsTab:CreateButton({
    Name = "🔫 Fe Gun (R6 only)",
    Callback = function()
        LoadScript("🔫 Fe Gun", "https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Fe%20Gun")
    end
})

FEScriptsTab:CreateButton({
    Name = "⚡ Fe Lightning (R6 only)",
    Callback = function()
        LoadScript("⚡ Fe Lightning", "https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Fe%20Lightning")
    end
})

FEScriptsTab:CreateButton({
    Name = "🔥 Fe Fire (R6 only)",
    Callback = function()
        LoadScript("🔥 Fe Fire", "https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Fe%20Fire")
    end
})

FEScriptsTab:CreateButton({
    Name = "❄️ Fe Ice (R6 only)",
    Callback = function()
        LoadScript("❄️ Fe Ice", "https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Fe%20Ice")
    end
})

FEScriptsTab:CreateButton({
    Name = "🌊 Fe Water (R6 only)",
    Callback = function()
        LoadScript("🌊 Fe Water", "https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Fe%20Water")
    end
})

FEScriptsTab:CreateButton({
    Name = "🌪️ Fe Wind (R6 only)",
    Callback = function()
        LoadScript("🌪️ Fe Wind", "https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Fe%20Wind")
    end
})

FEScriptsTab:CreateButton({
    Name = "🗡️ Fe Sword (R6 only)",
    Callback = function()
        LoadScript("🗡️ Fe Sword", "https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Fe%20Sword")
    end
})

FEScriptsTab:CreateButton({
    Name = "🪓 Fe Axe (R6 only)",
    Callback = function()
        LoadScript("🪓 Fe Axe", "https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Fe%20Axe")
    end
})

FEScriptsTab:CreateButton({
    Name = "🔨 Fe Hammer (R6 only)",
    Callback = function()
        LoadScript("🔨 Fe Hammer", "https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Fe%20Hammer")
    end
})

FEScriptsTab:CreateButton({
    Name = "🏹 Fe Bow (R6 only)",
    Callback = function()
        LoadScript("🏹 Fe Bow", "https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Fe%20Bow")
    end
})

FEScriptsTab:CreateButton({
    Name = "🛡️ Fe Shield (R6 only)",
    Callback = function()
        LoadScript("🛡️ Fe Shield", "https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Fe%20Shield")
    end
})

FEScriptsTab:CreateButton({
    Name = "🎩 Fe Hat (R6 only)",
    Callback = function()
        LoadScript("🎩 Fe Hat", "https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Fe%20Hat")
    end
})

FEScriptsTab:CreateButton({
    Name = "👑 Fe Crown (R6 only)",
    Callback = function()
        LoadScript("👑 Fe Crown", "https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Fe%20Crown")
    end
})

FEScriptsTab:CreateButton({
    Name = "🦴 Fe Skeleton (R6 only)",
    Callback = function()
        LoadScript("🦴 Fe Skeleton", "https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Fe%20Skeleton")
    end
})

FEScriptsTab:CreateButton({
    Name = "👻 Fe Ghost (R6 only)",
    Callback = function()
        LoadScript("👻 Fe Ghost", "https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Fe%20Ghost")
    end
})

-- Популярные утилиты
local FEUtilitiesSection2 = FEScriptsTab:CreateSection("🛠️ ПОПУЛЯРНЫЕ УТИЛИТЫ")

FEScriptsTab:CreateButton({
    Name = "♾️ Infinite Yield",
    Callback = function()
        LoadScript("♾️ Infinite Yield", "https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source")
    end
})

FEScriptsTab:CreateButton({
    Name = "🔍 Dark Dex V3",
    Callback = function()
        LoadScript("🔍 Dark Dex V3", "https://raw.githubusercontent.com/Babyhamsta/RBLX_Scripts/main/Universal/BypassedDarkDexV3.lua")
    end
})

FEScriptsTab:CreateButton({
    Name = "📊 Remote Spy",
    Callback = function()
        LoadScript("📊 Remote Spy", "https://raw.githubusercontent.com/exxtremestuffs/SimpleSpySource/master/SimpleSpy.lua")
    end
})

FEScriptsTab:CreateButton({
    Name = "🎨 Unnamed ESP",
    Callback = function()
        LoadScript("🎨 Unnamed ESP", "https://raw.githubusercontent.com/ic3w0lf22/Unnamed-ESP/master/UnnamedESP.lua")
    end
})

FEScriptsTab:CreateButton({
    Name = "🔧 CMD-X",
    Callback = function()
        LoadScript("🔧 CMD-X", "https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source")
    end
})

FEScriptsTab:CreateButton({
    Name = "💻 Hydroxide",
    Callback = function()
        LoadScript("💻 Hydroxide", "https://raw.githubusercontent.com/Upbolt/Hydroxide/revision/init.lua")
    end
})

FEScriptsTab:CreateButton({
    Name = "🎯 Aimbot Universal",
    Callback = function()
        LoadScript("🎯 Aimbot Universal", "https://raw.githubusercontent.com/Exunys/Aimbot-V3/main/main.lua")
    end
})

FEScriptsTab:CreateButton({
    Name = "🌐 Universal ESP",
    Callback = function()
        LoadScript("🌐 Universal ESP", "https://raw.githubusercontent.com/Lucasfin000/SpaceHub/main/UESP")
    end
})

FEScriptsTab:CreateButton({
    Name = "⚡ FPS Booster",
    Callback = function()
        LoadScript("⚡ FPS Booster", "https://raw.githubusercontent.com/CasperFlyModz/discord.gg-rips/main/FPSBooster.lua")
    end
})

FEScriptsTab:CreateButton({
    Name = "🎮 Universal Aimbot V2",
    Callback = function()
        LoadScript("🎮 Universal Aimbot V2", "https://raw.githubusercontent.com/ttwizz/UniversalAimbot/master/main.lua")
    end
})

--[[
    ==============================
    НОВАЯ ВКЛАДКА GAME HUB
    ==============================
]]--
local GameHubSection = GameHubTab:CreateSection("🎮 GAME HUB - Мульти-игровой хаб")
GameHubTab:CreateLabel("🎮 Game Hub - мульти-игровой хаб от GamerScripter")
GameHubTab:CreateLabel("⚠️ Используйте на свой страх и риск!")

-- Прямая кнопка загрузки Game Hub
GameHubTab:CreateButton({
    Name = "⚡ ЗАГРУЗИТЬ GAME HUB",
    Callback = function()
        Rayfield:Notify({
            Title = "🎮 Загрузка Game Hub",
            Content = "Загрузка запущена...",
            Duration = 3
        })
        loadstring(game:HttpGet("https://raw.githubusercontent.com/GamerScripter/Game-Hub/main/loader"))()
    end
})

-- Кнопка для просмотра исходного кода
GameHubTab:CreateButton({
    Name = "📄 ПОСМОТРЕТЬ ИСХОДНЫЙ КОД",
    Callback = function()
        setclipboard("https://raw.githubusercontent.com/GamerScripter/Game-Hub/main/loader")
        Rayfield:Notify({
            Title = "📄 Ссылка скопирована",
            Content = "Ссылка на исходный код Game Hub скопирована в буфер обмена",
            Duration = 5
        })
    end
})

-- Информация о Game Hub
GameHubTab:CreateButton({
    Name = "ℹ️ ИНФОРМАЦИЯ О GAME HUB",
    Callback = function()
        Rayfield:Notify({
            Title = "🎮 Game Hub Information",
            Content = "Game Hub - мульти-игровой хаб от GamerScripter\n\nФункции:\n• Скрипты для различных игр\n• Авто-обновления\n• Удобный интерфейс\n\nСсылка: https://github.com/GamerScripter/Game-Hub",
            Duration = 8
        })
    end
})

-- Рекомендации по безопасности
GameHubTab:CreateSection("🛡️ РЕКОМЕНДАЦИИ ПО БЕЗОПАСНОСТИ")
GameHubTab:CreateLabel("• Используйте альтернативный аккаунт")
GameHubTab:CreateLabel("• Не вводите личные данные")
GameHubTab:CreateLabel("• Регулярно меняйте пароли")
GameHubTab:CreateLabel("• Проверяйте аккаунт на подозрительную активность")

-- Информация о ссылке
GameHubTab:CreateSection("🔗 ССЫЛКА НА СКРИПТ")
GameHubTab:CreateLabel("GitHub: GamerScripter/Game-Hub")
GameHubTab:CreateLabel("Файл: loader")
GameHubTab:CreateLabel("URL: raw.githubusercontent.com/.../loader")

--[[
    ==============================
    ВКЛАДКА СКРИПТОВ ДЛЯ ИГР
    ==============================
]]--

-- Популярные игры
local PopularGamesSection = GameScriptsTab:CreateSection("🔥 ПОПУЛЯРНЫЕ ИГРЫ")

GameScriptsTab:CreateButton({
    Name = "⚔️ Blox Fruits",
    Callback = function()
        LoadScript("⚔️ Blox Fruits", "https://raw.githubusercontent.com/Hosvile/Refinement/main/MC%3ABlox%20Fruits%20Autofarm%20and%20ESP")
    end
})

GameScriptsTab:CreateButton({
    Name = "🏃 Brookhaven RP",
    Callback = function()
        LoadScript("🏃 Brookhaven RP", "https://raw.githubusercontent.com/IceMael/NewIceHub/main/Brookhaven")
    end
})

GameScriptsTab:CreateButton({
    Name = "🐾 Adopt Me",
    Callback = function()
        LoadScript("🐾 Adopt Me", "https://raw.githubusercontent.com/AhmadV99/Script-Games/main/Adopt-Me.lua")
    end
})

GameScriptsTab:CreateButton({
    Name = "🏝️ Islands",
    Callback = function()
        LoadScript("🏝️ Islands", "https://raw.githubusercontent.com/CriShoux/OwlHub/master/OwlHub.txt")
    end
})

GameScriptsTab:CreateButton({
    Name = "🏭 Jailbreak",
    Callback = function()
        LoadScript("🏭 Jailbreak", "https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/Jailbreak/Script.lua")
    end
})

GameScriptsTab:CreateButton({
    Name = "⚡ Arsenal",
    Callback = function()
        LoadScript("⚡ Arsenal", "https://raw.githubusercontent.com/tbao143/thaibao/main/TbaoHubArsenal")
    end
})

GameScriptsTab:CreateButton({
    Name = "🏃 Speed Run 4",
    Callback = function()
        LoadScript("🏃 Speed Run 4", "https://raw.githubusercontent.com/ahmadsgamer2/Script--Game/main/Speed-Run-4")
    end
})

GameScriptsTab:CreateButton({
    Name = "🎮 Phantom Forces",
    Callback = function()
        LoadScript("🎮 Phantom Forces", "https://raw.githubusercontent.com/Exunys/Aimbot-V3/main/main.lua")
    end
})

GameScriptsTab:CreateButton({
    Name = "🏰 Tower of Hell",
    Callback = function()
        LoadScript("🏰 Tower of Hell", "https://raw.githubusercontent.com/CasperFlyModz/discord.gg-rips/main/TowerOfHell.lua")
    end
})

GameScriptsTab:CreateButton({
    Name = "🐝 Bee Swarm Simulator",
    Callback = function()
        LoadScript("🐝 Bee Swarm Simulator", "https://raw.githubusercontent.com/Historia00012/HISTORIAHUB/main/BSS%20FREE")
    end
})

-- Симуляторы
local SimulatorsSection = GameScriptsTab:CreateSection("🎰 СИМУЛЯТОРЫ")

GameScriptsTab:CreateButton({
    Name = "💪 Muscle Legends",
    Callback = function()
        LoadScript("💪 Muscle Legends", "https://raw.githubusercontent.com/harisiskandar178/Roblox-Script/main/Muscle%20Legend")
    end
})

GameScriptsTab:CreateButton({
    Name = "🐾 Pet Simulator X",
    Callback = function()
        LoadScript("🐾 Pet Simulator X", "https://raw.githubusercontent.com/Muhammad6196/Project-WD/main/Main.lua")
    end
})

GameScriptsTab:CreateButton({
    Name = "💰 Mining Simulator 2",
    Callback = function()
        LoadScript("💰 Mining Simulator 2", "https://raw.githubusercontent.com/Efe0626/MiningSimulator2/main/MiningSimulator2")
    end
})

GameScriptsTab:CreateButton({
    Name = "🏃 Speed Simulator",
    Callback = function()
        LoadScript("🏃 Speed Simulator", "https://raw.githubusercontent.com/AhmadV99/Speed-Simulator/main/Speed-Simulator.lua")
    end
})

GameScriptsTab:CreateButton({
    Name = "🍔 Restaurant Tycoon 2",
    Callback = function()
        LoadScript("🍔 Restaurant Tycoon 2", "https://raw.githubusercontent.com/LOLking123456/Restaurant-Tycoon/main/Restaurant.lua")
    end
})

-- Хоррор игры
local HorrorGamesSection = GameScriptsTab:CreateSection("👻 ХОРРОР ИГРЫ")

GameScriptsTab:CreateButton({
    Name = "🚪 Doors",
    Callback = function()
        LoadScript("🚪 Doors", "https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/Doors/Script.lua")
    end
})

GameScriptsTab:CreateButton({
    Name = "🏨 Apeirophobia",
    Callback = function()
        LoadScript("🏨 Apeirophobia", "https://raw.githubusercontent.com/Efe0626/Apeirophobia/main/Apeirophobia")
    end
})

GameScriptsTab:CreateButton({
    Name = "🎃 Piggy",
    Callback = function()
        LoadScript("🎃 Piggy", "https://raw.githubusercontent.com/Efe0626/Piggy/main/Piggy")
    end
})

GameScriptsTab:CreateButton({
    Name = "🌲 The Mimic",
    Callback = function()
        LoadScript("🌲 The Mimic", "https://raw.githubusercontent.com/Efe0626/TheMimic/main/TheMimic")
    end
})

-- Файтинг игры
local FightingGamesSection = GameScriptsTab:CreateSection("🥊 ФАЙТИНГ ИГРЫ")

GameScriptsTab:CreateButton({
    Name = "🔥 Combat Warriors",
    Callback = function()
        LoadScript("🔥 Combat Warriors", "https://raw.githubusercontent.com/Efe0626/CombatWarriors/main/CombatWarriors")
    end
})

GameScriptsTab:CreateButton({
    Name = "⚔️ Blade Ball",
    Callback = function()
        LoadScript("⚔️ Blade Ball", "https://raw.githubusercontent.com/3345-c-a-t-s-u-s/Blade-Ball/main/Blade-Ball")
    end
})

GameScriptsTab:CreateButton({
    Name = "🥋 Anime Fighting Simulator",
    Callback = function()
        LoadScript("🥋 Anime Fighting Simulator", "https://raw.githubusercontent.com/AhmadV99/Script-Games/main/Anime-Fighting-Simulator.lua")
    end
})

GameScriptsTab:CreateButton({
    Name = "👊 The Strongest Battlegrounds",
    Callback = function()
        LoadScript("👊 The Strongest Battlegrounds", "https://raw.githubusercontent.com/AhmadV99/Script-Games/main/The-Strongest-Battlegrounds.lua")
    end
})

-- Дополнительные популярные игры
local MoreGamesSection = GameScriptsTab:CreateSection("🎲 ДОПОЛНИТЕЛЬНЫЕ ИГРЫ")

GameScriptsTab:CreateButton({
    Name = "🏃 Evade",
    Callback = function()
        LoadScript("🏃 Evade", "https://raw.githubusercontent.com/Babyhamsta/RBLX_Scripts/main/Games/Evade.lua")
    end
})

GameScriptsTab:CreateButton({
    Name = "🎨 Rainbow Friends",
    Callback = function()
        LoadScript("🎨 Rainbow Friends", "https://raw.githubusercontent.com/JNHHGaming/Rainbow-Friends/main/Rainbow%20Friends")
    end
})

GameScriptsTab:CreateButton({
    Name = "🏫 Brookhaven RP (Advanced)",
    Callback = function()
        LoadScript("🏫 Brookhaven RP", "https://raw.githubusercontent.com/IceMael/NewIceHub/main/Brookhaven")
    end
})

GameScriptsTab:CreateButton({
    Name = "🌊 Sharkbite 2",
    Callback = function()
        LoadScript("🌊 Sharkbite 2", "https://raw.githubusercontent.com/Efe0626/Sharkbite2/main/Sharkbite2")
    end
})

GameScriptsTab:CreateButton({
    Name = "🎪 Circus Baby",
    Callback = function()
        LoadScript("🎪 Circus Baby", "https://raw.githubusercontent.com/Efe0626/CircusBaby/main/CircusBaby")
    end
})

GameScriptsTab:CreateButton({
    Name = "🏃 Flee The Facility",
    Callback = function()
        LoadScript("🏃 Flee The Facility", "https://raw.githubusercontent.com/Efe0626/FleeTheFacility/main/FleeTheFacility")
    end
})

GameScriptsTab:CreateButton({
    Name = "🎯 Counter Blox",
    Callback = function()
        LoadScript("🎯 Counter Blox", "https://raw.githubusercontent.com/Efe0626/CounterBlox/main/CounterBlox")
    end
})

GameScriptsTab:CreateButton({
    Name = "🏰 Build A Boat",
    Callback = function()
        LoadScript("🏰 Build A Boat", "https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/Build%20A%20Boat/Script.lua")
    end
})

GameScriptsTab:CreateButton({
    Name = "🎮 Murder Mystery 2",
    Callback = function()
        LoadScript("🎮 Murder Mystery 2", "https://raw.githubusercontent.com/Ethanoj1/Eclipse-Hub/master/MM2%20Script")
    end
})

GameScriptsTab:CreateButton({
    Name = "🏃 Parkour",
    Callback = function()
        LoadScript("🏃 Parkour", "https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/Parkour/Script.lua")
    end
})

GameScriptsTab:CreateButton({
    Name = "⚡ Super Power Training Simulator",
    Callback = function()
        LoadScript("⚡ Super Power Training", "https://raw.githubusercontent.com/AhmadV99/Script-Games/main/Super-Power-Training-Simulator.lua")
    end
})

GameScriptsTab:CreateButton({
    Name = "🏃 Legends Of Speed",
    Callback = function()
        LoadScript("🏃 Legends Of Speed", "https://raw.githubusercontent.com/AhmadV99/Script-Games/main/Legends-Of-Speed.lua")
    end
})

GameScriptsTab:CreateButton({
    Name = "🎯 Big Paintball",
    Callback = function()
        LoadScript("🎯 Big Paintball", "https://raw.githubusercontent.com/Efe0626/BigPaintball/main/BigPaintball")
    end
})

GameScriptsTab:CreateButton({
    Name = "🏃 Zombie Attack",
    Callback = function()
        LoadScript("🏃 Zombie Attack", "https://raw.githubusercontent.com/Efe0626/ZombieAttack/main/ZombieAttack")
    end
})

GameScriptsTab:CreateButton({
    Name = "🎮 Funky Friday",
    Callback = function()
        LoadScript("🎮 Funky Friday", "https://raw.githubusercontent.com/ShowerHead-FluxTeam/scripts/main/funky-friday-autoplay")
    end
})

GameScriptsTab:CreateButton({
    Name = "🏃 Ninja Legends",
    Callback = function()
        LoadScript("🏃 Ninja Legends", "https://raw.githubusercontent.com/AhmadV99/Script-Games/main/Ninja-Legends.lua")
    end
})

GameScriptsTab:CreateButton({
    Name = "🎯 Strucid",
    Callback = function()
        LoadScript("🎯 Strucid", "https://raw.githubusercontent.com/Efe0626/Strucid/main/Strucid")
    end
})

GameScriptsTab:CreateButton({
    Name = "🏃 Zombie Rush",
    Callback = function()
        LoadScript("🏃 Zombie Rush", "https://raw.githubusercontent.com/Efe0626/ZombieRush/main/ZombieRush")
    end
})

GameScriptsTab:CreateButton({
    Name = "🎮 Project Lazarus",
    Callback = function()
        LoadScript("🎮 Project Lazarus", "https://raw.githubusercontent.com/Efe0626/ProjectLazarus/main/ProjectLazarus")
    end
})

GameScriptsTab:CreateButton({
    Name = "🏰 Dungeon Quest",
    Callback = function()
        LoadScript("🏰 Dungeon Quest", "https://raw.githubusercontent.com/AhmadV99/Script-Games/main/Dungeon-Quest.lua")
    end
})

-- Раздел Anime игр
local AnimeGamesSection = GameScriptsTab:CreateSection("⚡ ANIME ИГРЫ")

GameScriptsTab:CreateButton({
    Name = "⚡ All Star Tower Defense",
    Callback = function()
        LoadScript("⚡ All Star Tower Defense", "https://raw.githubusercontent.com/Efe0626/AllStarTowerDefense/main/AllStarTowerDefense")
    end
})

GameScriptsTab:CreateButton({
    Name = "⚔️ Anime Fighters Simulator",
    Callback = function()
        LoadScript("⚔️ Anime Fighters", "https://raw.githubusercontent.com/AhmadV99/Script-Games/main/Anime-Fighters-Simulator.lua")
    end
})

GameScriptsTab:CreateButton({
    Name = "👊 Anime Battle Arena",
    Callback = function()
        LoadScript("👊 Anime Battle Arena", "https://raw.githubusercontent.com/Efe0626/AnimeBattleArena/main/AnimeBattleArena")
    end
})

GameScriptsTab:CreateButton({
    Name = "⚡ Heroes Online",
    Callback = function()
        LoadScript("⚡ Heroes Online", "https://raw.githubusercontent.com/Efe0626/HeroesOnline/main/HeroesOnline")
    end
})

GameScriptsTab:CreateButton({
    Name = "🔥 Anime Dimensions",
    Callback = function()
        LoadScript("🔥 Anime Dimensions", "https://raw.githubusercontent.com/Efe0626/AnimeDimensions/main/AnimeDimensions")
    end
})

GameScriptsTab:CreateButton({
    Name = "⚔️ Anime Mania",
    Callback = function()
        LoadScript("⚔️ Anime Mania", "https://raw.githubusercontent.com/Efe0626/AnimeMania/main/AnimeMania")
    end
})

GameScriptsTab:CreateButton({
    Name = "👊 Anime Punch Simulator",
    Callback = function()
        LoadScript("👊 Anime Punch", "https://raw.githubusercontent.com/Efe0626/AnimePunchSimulator/main/AnimePunchSimulator")
    end
})

-- Раздел Tycoon игр
local TycoonGamesSection = GameScriptsTab:CreateSection("🏭 TYCOON ИГРЫ")

GameScriptsTab:CreateButton({
    Name = "🏭 Retail Tycoon 2",
    Callback = function()
        LoadScript("🏭 Retail Tycoon 2", "https://raw.githubusercontent.com/Efe0626/RetailTycoon2/main/RetailTycoon2")
    end
})

GameScriptsTab:CreateButton({
    Name = "🍔 Restaurant Tycoon 2",
    Callback = function()
        LoadScript("🍔 Restaurant Tycoon 2", "https://raw.githubusercontent.com/LOLking123456/Restaurant-Tycoon/main/Restaurant.lua")
    end
})

GameScriptsTab:CreateButton({
    Name = "🏰 Theme Park Tycoon 2",
    Callback = function()
        LoadScript("🏰 Theme Park Tycoon 2", "https://raw.githubusercontent.com/Efe0626/ThemeParkTycoon2/main/ThemeParkTycoon2")
    end
})

GameScriptsTab:CreateButton({
    Name = "🏭 Lumber Tycoon 2",
    Callback = function()
        LoadScript("🏭 Lumber Tycoon 2", "https://raw.githubusercontent.com/Efe0626/LumberTycoon2/main/LumberTycoon2")
    end
})

GameScriptsTab:CreateButton({
    Name = "🏭 My Tycoon",
    Callback = function()
        LoadScript("🏭 My Tycoon", "https://raw.githubusercontent.com/Efe0626/MyTycoon/main/MyTycoon")
    end
})

-- Раздел Obby игр
local ObbyGamesSection = GameScriptsTab:CreateSection("🏃 OBBY ИГРЫ")

GameScriptsTab:CreateButton({
    Name = "🏃 Mega Easy Obby",
    Callback = function()
        LoadScript("🏃 Mega Easy Obby", "https://raw.githubusercontent.com/Efe0626/MegaEasyObby/main/MegaEasyObby")
    end
})

GameScriptsTab:CreateButton({
    Name = "🏃 Tower Of Hell",
    Callback = function()
        LoadScript("🏃 Tower Of Hell", "https://raw.githubusercontent.com/CasperFlyModz/discord.gg-rips/main/TowerOfHell.lua")
    end
})

GameScriptsTab:CreateButton({
    Name = "🏃 Obby But You're On A Bike",
    Callback = function()
        LoadScript("🏃 Obby Bike", "https://raw.githubusercontent.com/Efe0626/ObbyBike/main/ObbyBike")
    end
})

GameScriptsTab:CreateButton({
    Name = "🏃 Escape Running Head",
    Callback = function()
        LoadScript("🏃 Escape Running Head", "https://raw.githubusercontent.com/Efe0626/EscapeRunningHead/main/EscapeRunningHead")
    end
})

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
    УЛУЧШЕННЫЙ AIMBOT С ПРИОРИТЕТОМ ПО ДИСТАНЦИИ
    ==============================
]]--
local AimbotSection = CombatTab:CreateSection("🎯 УЛУЧШЕННЫЙ AIMBOT 3D FOV")
local AimbotConfig = {
    Enabled = true,
    TeamCheck = true,
    AliveCheck = true,
    WallCheck = true,
    Smoothness = 0.15,
    FOV = 120,
    ShowFOV = true,
    FOVColor = Color3.fromRGB(170, 0, 255),
    LockedColor = Color3.fromRGB(255, 50, 50),
    TriggerKey = "MouseButton2",
    Toggle = false,
    LockPart = "Head",
    ThirdPersonFix = true,
    Priority = "Distance"
}

-- 3D FOV круг
local FOVCircle = Drawing.new("Circle")
FOVCircle.Visible = AimbotConfig.ShowFOV
FOVCircle.Radius = AimbotConfig.FOV
FOVCircle.Color = AimbotConfig.FOVColor
FOVCircle.Thickness = 3
FOVCircle.Filled = false
FOVCircle.Position = Vector2.new(workspace.CurrentCamera.ViewportSize.X / 2, workspace.CurrentCamera.ViewportSize.Y / 2)
local Running = false
local LockedTarget = nil

-- Функция проверки видимости (сквозь стены)
local function IsVisible(targetPart)
    if not AimbotConfig.WallCheck then return true end

    local camera = workspace.CurrentCamera
    local origin = camera.CFrame.Position
    local direction = (targetPart.Position - origin).Unit * 1000
    local ray = Ray.new(origin, direction)

    local hit, position = workspace:FindPartOnRayWithIgnoreList(ray, {player.Character})
    return hit and hit:IsDescendantOf(targetPart.Parent)
end

-- Функция для 1-го лица
local function IsFirstPerson()
    if not AimbotConfig.ThirdPersonFix then return false end
    local character = player.Character
    if not character then return false end

    local head = character:FindFirstChild("Head")
    if not head then return false end

    local camera = workspace.CurrentCamera
    local distance = (head.Position - camera.CFrame.Position).Magnitude
    return distance < 2
end

-- Поиск цели с приоритетом по дистанции
local function GetClosestPlayer()
    if not AimbotConfig.Enabled then return nil end

    local camera = workspace.CurrentCamera
    local localPlayer = player
    local cameraPos = camera.CFrame.Position
    local mousePos = Vector2.new(camera.ViewportSize.X / 2, camera.ViewportSize.Y / 2)

    local bestTarget = nil
    local bestDistance = math.huge
    local bestScreenDistance = math.huge

    for _, targetPlayer in ipairs(Players:GetPlayers()) do
        if targetPlayer == localPlayer then continue end
        if AimbotConfig.TeamCheck and targetPlayer.Team == localPlayer.Team then continue end
        if not targetPlayer.Character then continue end

        local character = targetPlayer.Character
        local humanoid = character:FindFirstChildOfClass("Humanoid")
        local targetPart = character:FindFirstChild(AimbotConfig.LockPart)

        -- Проверка на жизнь
        if AimbotConfig.AliveCheck and (not humanoid or humanoid.Health <= 0) then continue end
        if not targetPart then continue end

        -- Проверка видимости (стены)
        if not IsVisible(targetPart) then continue end

        local screenPos, onScreen = camera:WorldToViewportPoint(targetPart.Position)
        if not onScreen then continue end

        local screenPoint = Vector2.new(screenPos.X, screenPos.Y)
        local screenDistance = (screenPoint - mousePos).Magnitude
        local gameDistance = (targetPart.Position - cameraPos).Magnitude

        -- Выбор приоритета
        if AimbotConfig.Priority == "Distance" then
            -- Приоритет по дистанции в игре (ближайший игрок)
            if screenDistance <= AimbotConfig.FOV then
                if gameDistance < bestDistance then
                    bestDistance = gameDistance
                    bestTarget = targetPart
                    bestScreenDistance = screenDistance
                end
            end
        else
            -- Приоритет по близости к курсору (старый метод)
            if screenDistance < bestScreenDistance and screenDistance <= AimbotConfig.FOV then
                bestScreenDistance = screenDistance
                bestTarget = targetPart
                bestDistance = gameDistance
            end
        end
    end

    return bestTarget
end

-- Основной цикл аимбота
task.spawn(function()
    while task.wait() do
        FOVCircle.Visible = AimbotConfig.ShowFOV and AimbotConfig.Enabled
        FOVCircle.Radius = AimbotConfig.FOV
        FOVCircle.Color = LockedTarget and AimbotConfig.LockedColor or AimbotConfig.FOVColor
        FOVCircle.Position = Vector2.new(workspace.CurrentCamera.ViewportSize.X / 2, workspace.CurrentCamera.ViewportSize.Y / 2)

        if Running and AimbotConfig.Enabled then
            local target = GetClosestPlayer()
            if target then
                LockedTarget = target
                local camera = workspace.CurrentCamera
                local currentCF = camera.CFrame
                local targetPosition = target.Position

                local smoothness = AimbotConfig.Smoothness
                if IsFirstPerson() then
                    smoothness = smoothness * 0.8
                end

                local newCF = currentCF:Lerp(CFrame.new(currentCF.Position, targetPosition), smoothness)
                camera.CFrame = newCF
            else
                LockedTarget = nil
            end
        else
            LockedTarget = nil
        end
    end
end)

-- Управление клавишами
game:GetService("UserInputService").InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType[AimbotConfig.TriggerKey] then
        if AimbotConfig.Toggle then
            Running = not Running
        else
            Running = true
        end
    end
end)

game:GetService("UserInputService").InputEnded:Connect(function(input)
    if not AimbotConfig.Toggle and input.UserInputType == Enum.UserInputType[AimbotConfig.TriggerKey] then
        Running = false
    end
end)

-- Элементы управления
CombatTab:CreateToggle({
    Name = "🎯 Включить Aimbot",
    CurrentValue = AimbotConfig.Enabled,
    Flag = "AimbotEnabled",
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
    Name = "💀 Не целить умерших",
    CurrentValue = AimbotConfig.AliveCheck,
    Callback = function(value)
        AimbotConfig.AliveCheck = value
    end
})

CombatTab:CreateToggle({
    Name = "🧱 Не целить сквозь стены",
    CurrentValue = AimbotConfig.WallCheck,
    Callback = function(value)
        AimbotConfig.WallCheck = value
    end
})

CombatTab:CreateToggle({
    Name = "👁️ Исправление 1-го лица",
    CurrentValue = AimbotConfig.ThirdPersonFix,
    Callback = function(value)
        AimbotConfig.ThirdPersonFix = value
    end
})

CombatTab:CreateDropdown({
    Name = "🎯 Приоритет цели",
    Options = {"Distance", "FOV"},
    CurrentOption = AimbotConfig.Priority,
    Callback = function(option)
        AimbotConfig.Priority = option
        if option == "Distance" then
            Rayfield:Notify({
                Title = "🎯 Приоритет: ДИСТАНЦИЯ",
                Content = "Целится в ближайшего игрока",
                Duration = 3
            })
        else
            Rayfield:Notify({
                Title = "🎯 Приоритет: FOV",
                Content = "Целится в ближайшего к курсору",
                Duration = 3
            })
        end
    end
})

CombatTab:CreateSlider({
    Name = "🔘 Размер FOV",
    Range = {50, 300},
    Increment = 10,
    CurrentValue = AimbotConfig.FOV,
    Callback = function(value)
        AimbotConfig.FOV = value
    end
})

CombatTab:CreateSlider({
    Name = "🔄 Чувствительность",
    Range = {0.05, 0.5},
    Increment = 0.01,
    CurrentValue = AimbotConfig.Smoothness,
    Callback = function(value)
        AimbotConfig.Smoothness = value
    end
})

CombatTab:CreateDropdown({
    Name = "🎯 Часть тела",
    Options = {"Head", "HumanoidRootPart", "Torso"},
    CurrentOption = AimbotConfig.LockPart,
    Callback = function(option)
        AimbotConfig.LockPart = option
    end
})

CombatTab:CreateColorPicker({
    Name = "💜 Цвет FOV",
    Color = AimbotConfig.FOVColor,
    Callback = function(value)
        AimbotConfig.FOVColor = value
    end
})

CombatTab:CreateColorPicker({
    Name = "🔴 Цвет захвата",
    Color = AimbotConfig.LockedColor,
    Callback = function(value)
        AimbotConfig.LockedColor = value
    end
})

--[[
    ==============================
    ПОЛНЫЙ ESP С 3D BOX
    ==============================
]]--
local ESPConfig = {
    Enabled = false,
    TeamCheck = true,
    ShowTeammates = true,
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
    НОВЫЙ ТЕЛЕПОРТ-СКРИПТ
    ==============================
]]--
local LocalPlayer = Players.LocalPlayer
local dropdown = nil
local selectedPlayer = nil
local autoTp = false
local onlineLabel = nil

-- Функция безопасной телепортации
local function TeleportToPlayer(targetPlayer)
    if not targetPlayer or not targetPlayer:IsA("Player") then
        Rayfield:Notify({ Title = "❌ Ошибка", Content = "Неверный игрок", Duration = 2 })
        return
    end
    local myChar = LocalPlayer.Character
    local targetChar = targetPlayer.Character
    if myChar and targetChar then
        local myRoot = myChar:FindFirstChild("HumanoidRootPart")
        local targetRoot = targetChar:FindFirstChild("HumanoidRootPart")
        if myRoot and targetRoot then
            myRoot.CFrame = targetRoot.CFrame
            Rayfield:Notify({ Title = "✅ Успех", Content = "Телепортирован к " .. targetPlayer.Name, Duration = 2 })
        end
    end
end

-- Обновление счётчика
local function UpdateOnlineCount()
    if onlineLabel then
        onlineLabel:Set("👥 Игроков онлайн: " .. tostring(#Players:GetPlayers()))
    end
end

-- Функция обновления списка игроков без пересоздания Dropdown
local function UpdateDropdown()
    if not dropdown then return end
    local opts = {}
    for _, p in pairs(Players:GetPlayers()) do
        if p ~= LocalPlayer then
            table.insert(opts, p.Name)
        end
    end
    table.sort(opts)
    dropdown:Refresh(opts) -- обновляем список без пересоздания
    UpdateOnlineCount()
    -- Если выбранный игрок вышел, сбрасываем выбор
    if selectedPlayer and not Players:FindFirstChild(selectedPlayer.Name) then
        selectedPlayer = nil
        dropdown:Set("") -- сброс
        autoTp = false
        Rayfield:Notify({
            Title = "ℹ️ Игрок вышел",
            Content = "Выбор сброшен",
            Duration = 2
        })
    end
end

-- UI
TeleportTab:CreateSection("Игроки")
onlineLabel = TeleportTab:CreateLabel("👥 Игроков онлайн: 0")
dropdown = TeleportTab:CreateDropdown({
    Name = "Выберите игрока",
    Options = {},
    CurrentOption = "",
    Callback = function(option)
        local chosen = option
        if typeof(option) == "table" then
            chosen = option[1]
        end
        selectedPlayer = nil
        for _, pl in ipairs(Players:GetPlayers()) do
            if pl.Name == chosen then
                selectedPlayer = pl
                break
            end
        end
        if selectedPlayer then
            Rayfield:Notify({
                Title = "Выбран игрок",
                Content = selectedPlayer.Name,
                Duration = 1.5
            })
        end
    end
})

TeleportTab:CreateButton({
    Name = "🚀 Телепорт к выбранному",
    Callback = function()
        if not selectedPlayer then
            Rayfield:Notify({ Title = "❗ Внимание", Content = "Сначала выберите игрока", Duration = 2 })
            return
        end
        TeleportToPlayer(selectedPlayer)
    end
})

TeleportTab:CreateToggle({
    Name = "⚡ Авто-телепорт",
    CurrentValue = false,
    Callback = function(value)
        autoTp = value
        if value and selectedPlayer then
            Rayfield:Notify({ Title = "⚡ Авто-ТП ВКЛ", Content = "Слежение за " .. selectedPlayer.Name, Duration = 2 })
        elseif not value then
            Rayfield:Notify({ Title = "⚡ Авто-ТП ВЫКЛ", Content = "Остановлено", Duration = 2 })
        end
    end
})

-- Авто-ТП
task.spawn(function()
    while true do
        task.wait(0.12)
        if autoTp and selectedPlayer and Players:FindFirstChild(selectedPlayer.Name) then
            local myChar = LocalPlayer.Character
            local targetChar = selectedPlayer.Character
            if myChar and targetChar then
                local myRoot = myChar:FindFirstChild("HumanoidRootPart")
                local targetRoot = targetChar:FindFirstChild("HumanoidRootPart")
                if myRoot and targetRoot then
                    myRoot.CFrame = targetRoot.CFrame
                end
            end
        end
    end
end)

-- Автообновление списка игроков каждые 5 секунд
task.spawn(function()
    while true do
        task.wait(5)
        UpdateDropdown()
    end
end)

-- Обновление при входе/выходе игроков
Players.PlayerAdded:Connect(UpdateDropdown)
Players.PlayerRemoving:Connect(UpdateDropdown)

-- Первичное обновление
task.delay(1, UpdateDropdown)
Rayfield:Notify({
    Title = "✅ Готово",
    Content = "Скрипт телепорта запущен. Список игроков и счётчик обновляются автоматически.",
    Duration = 4
})

--[[
    ==============================
    РАЗДЕЛ УБИТЬ ВСЕХ (ОБНОВЛЕННЫЙ)
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
   end
})

KillAllTab:CreateToggle({
   Name = "⚔️ Режим Kill All",
   CurrentValue = killAllEnabled,
   Callback = function(Value)
      killAllEnabled = Value
   end
})

KillAllTab:CreateToggle({
   Name = "👥 Игнорировать команду",
   CurrentValue = ignoreTeam,
   Callback = function(Value)
      ignoreTeam = Value
   end
})

KillAllTab:CreateSlider({
   Name = "📏 Радиус безопасной зоны",
   Range = {5, 100},
   Increment = 1,
   Suffix = "studs",
   CurrentValue = safeZoneRadius,
   Callback = function(Value)
      safeZoneRadius = Value
   end
})

-- Цикл Kill All с увеличенной дистанцией до 10000
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

                -- УВЕЛИЧЕННАЯ ДИСТАНЦИЯ ДО 10000
                if shouldAttack and dist <= 10000 then
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
    ОБНОВЛЕННЫЕ ДОПОЛНИТЕЛЬНЫЕ СКРИПТЫ
    ==============================
]]--
local ScriptsSection = MainTab:CreateSection("📜 ДОПОЛНИТЕЛЬНЫЕ СКРИПТЫ")

-- Функция для загрузки улучшенного полета (автоматическое определение платформы)
local function LoadImprovedFlight()
    local UserInputService = game:GetService("UserInputService")
    local isMobile = UserInputService.TouchEnabled and not UserInputService.KeyboardEnabled
    
    if isMobile then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/396abc/Script/refs/heads/main/MobileFly.lua"))()
    else
        loadstring(game:HttpGet("https://raw.githubusercontent.com/396abc/Script/refs/heads/main/FlyR15.lua"))()
    end
end

-- Функция для загрузки анимации The Rake
local function LoadRakeAnimation()
    local animationId = "rbxassetid://252557606"
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:WaitForChild("Humanoid")

    local animation = Instance.new("Animation")
    animation.AnimationId = animationId

    local animationTrack = humanoid:LoadAnimation(animation)
    local defaultWalkSpeed = 50
    humanoid.WalkSpeed = defaultWalkSpeed

    local function onWalking(speed)
        if speed > 0 then
            humanoid.WalkSpeed = 50
            animationTrack:Play()
        else
            humanoid.WalkSpeed = defaultWalkSpeed
            animationTrack:Stop()
        end
    end

    humanoid.Running:Connect(onWalking)

    -- Добавляем инструменты для анимаций
    local backpack = player:WaitForChild("Backpack")
    
    -- Tool 1: Double Slash
    local tool1 = Instance.new("Tool")
    tool1.Name = "double slash"
    tool1.RequiresHandle = false
    tool1.CanBeDropped = false

    local animation1 = Instance.new("Animation")
    animation1.AnimationId = "rbxassetid://105211514"

    tool1.Activated:Connect(function()
        local humanoid = player.Character and player.Character:FindFirstChildOfClass("Humanoid")
        if humanoid then
            local animTrack = humanoid:LoadAnimation(animation1)
            animTrack:Play()
        end
    end)
    tool1.Parent = backpack

    -- Tool 2: Enrage
    local tool2 = Instance.new("Tool")
    tool2.Name = "enrage"
    tool2.RequiresHandle = false
    tool2.CanBeDropped = false

    local animation2 = Instance.new("Animation")
    animation2.AnimationId = "rbxassetid://93648331"

    tool2.Activated:Connect(function()
        local humanoid = player.Character and player.Character:FindFirstChildOfClass("Humanoid")
        if humanoid then
            local animTrack = humanoid:LoadAnimation(animation2)
            animTrack:Play()
        end
    end)
    tool2.Parent = backpack
end

-- Новые скрипты (5 кнопок)
local newScripts = {
    {
        Name = "⚔️ FE Seraphic Blade",
        Url = "https://pastefy.app/59mJGQGe/raw"
    },
    {
        Name = "💃 FE Анимации",
        Url = "https://raw.githubusercontent.com/7yd7/Hub/refs/heads/Branch/GUIS/Emotes.lua"
    },
    {
        Name = "🛫 Улучшенный полет",
        Callback = LoadImprovedFlight
    },
    {
        Name = "👹 The Rake Анимация",
        Callback = LoadRakeAnimation
    },
    {
        Name = "🌀 Touch Fling",
        Url = "https://rawscripts.net/raw/Universal-Script-TOUCH-FLING-30401"
    }
}

-- Создаем кнопки для новых скриптов
for i, scriptInfo in ipairs(newScripts) do
    MainTab:CreateButton({
        Name = scriptInfo.Name,
        Callback = function()
            Rayfield:Notify({
                Title = "⏳ Загрузка...",
                Content = "📥 "..scriptInfo.Name.." запускается",
                Duration = 3
            })

            local success, err = pcall(function()
                if scriptInfo.Callback then
                    scriptInfo.Callback()
                else
                    loadstring(game:HttpGet(scriptInfo.Url, true))()
                end
            end)

            if success then
                Rayfield:Notify({
                    Title = "✅ Успех!",
                    Content = scriptInfo.Name.." успешно загружен",
                    Duration = 4
                })
            else
                Rayfield:Notify({
                    Title = "❌ Ошибка!",
                    Content = "Не удалось загрузить "..scriptInfo.Name..":\n"..tostring(err),
                    Duration = 6
                })
            end
        end
    })
end

-- Старые скрипты (ваши существующие)
local scriptUrls = {
    "https://pastefy.app/YsJgITXR/raw",
    "https://pastebin.com/raw/3Rnd9rHf",
    "https://glot.io/snippets/gua2ntmbdm/raw/main.lua",
    "https://pastefy.app/JOWniO6o/raw",
    "https://pastebin.com/raw/LgZwZ7ZB",
    "https://pastefy.app/w7KnPY70/raw",
    "https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Gale%20Fighter",
    "https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Neptunian%20V"
}
local scriptNames = {
    "👹 SCP-096 Режим",
    "👻 Невидимость PRO",
    "🛡️ Бог-режим+",
    "🧟 Зомби хаки",
    "🏎️ флинг+",
    "🧟 Простой зомби-напарник",
    "⚔️ FE GALE FIGHTER",
    "🌊 FE Neptunian V"
}

for i = 1, #scriptNames do
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
    Title = "💜🎉 ELITE HUB 12.6 HASKER ЗАГРУЖЕН! 🎉💜",
    Content = "🔥 Hasker Edition | Все функции включены 🔥\n⚔️💥 Дистанция Kill All увеличена до 10000\n🎭✨ Добавлено 70+ FE скриптов!\n🚀🌟 Добавлено 40+ хабов!\n🎯🎮 Добавлено 25+ скриптов для игр!\n♾️ Infinite Yield, Dark Dex и другие утилиты!",
    Duration = 8,
    Image = 7733960981
})

print("🌟💎 ELITE HUB 12.6 HASKER успешно загружен! 💎🌟")
print("⚔️💥 Дистанция Kill All увеличена до 10000 studs")
print("🎭✨ Добавлено 100+ FE скриптов в новую вкладку!")
print("🚀🌟 Добавлено 40+ универсальных хабов!")
print("🎯🎮 Добавлено 25+ скриптов для популярных игр!")
print("♾️💻 Добавлены популярные утилиты: Infinite Yield, Dark Dex, Remote Spy и другие!")
