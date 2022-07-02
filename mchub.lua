-- init
local library =
    loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()
local venyx = library.new("MC Hub", 5013109572)

-- themes
local themes = {
    Background = Color3.fromRGB(24, 24, 24),
    Glow = Color3.fromRGB(0, 0, 0),
    Accent = Color3.fromRGB(10, 10, 10),
    LightContrast = Color3.fromRGB(20, 20, 20),
    DarkContrast = Color3.fromRGB(14, 14, 14),
    TextColor = Color3.fromRGB(255, 255, 255)
}

-- first page
local page = venyx:addPage("Player Config", 5012544693)
local section1 = page:addSection("Tools")
local section2 = page:addSection("Player Settings")

section1:addButton(
    "Give Builder Tools",
    function()
        local tool1 = Instance.new("HopperBin", game.Players.LocalPlayer.Backpack)
        local tool2 = Instance.new("HopperBin", game.Players.LocalPlayer.Backpack)
        local tool3 = Instance.new("HopperBin", game.Players.LocalPlayer.Backpack)
        local tool4 = Instance.new("HopperBin", game.Players.LocalPlayer.Backpack)
        local tool5 = Instance.new("HopperBin", game.Players.LocalPlayer.Backpack)
        tool1.BinType = "Clone"
        tool2.BinType = "GameTool"
        tool3.BinType = "Hammer"
        tool4.BinType = "Script"
        tool5.BinType = "Grab"
        venyx:Notify("Run it one time only", "You can get builder tools only 1 time", callback)
    end
)

section1:addButton(
    "Give delete tool (useful for tycoons)",
    function()
        local tool1 = Instance.new("HopperBin", game.Players.LocalPlayer.Backpack)
        tool1.BinType = "Hammer"
    end
)

section1:addButton(
    "Rejoin Place",
    function()
        local ts = game:GetService("TeleportService")
        local p = game:GetService("Players").LocalPlayer
        ts:Teleport(game.PlaceId, p)
    end
)

section2:addButton(
    "Sonic Speed",
    function()
        local player = game.Players.LocalPlayer
        local char = player.CharacterAdded:wait()
        local h = char.Humanoid

        h.WalkSpeed = 100
    end
)


section2:addButton(
    "Default Speed",
    function()
        local player = game.Players.LocalPlayer
        local char = player.CharacterAdded:wait()
        local h = char.Humanoid

        h.WalkSpeed = 32
    end
)

-- second page
local config = venyx:addPage("Config", 5012544693)
local section3 = config:addSection("Keybind")

section3:addKeybind(
    "Open/Close Gui",
    Enum.KeyCode.RightShift,
    function()
        print("Activated Keybind")
        venyx:toggle()
    end,
    function()
        print("Changed Keybind")
    end
)

local section41 = config:addSection("Gui Settings")

section41:addColorPicker("ColorPicker", Color3.fromRGB(50, 50, 50))
section41:addColorPicker("ColorPicker2")


-- Scripts Page
local scripts = venyx:addPage("Scripts Hub", 5012544693)
local scriptsui = scripts:addSection("Universal Scripts")
local gamesui = scripts:addSection("Game-Specific Scripts")
local lt2 = scripts:addSection("Lumber Tycoon 2")

scriptsui:addButton(
    "InfiniteYield",
    function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
    end
)

scriptsui:addButton(
    "DomainHub",
    function()
        loadstring(game:HttpGet(("https://shlex.dev/domain_v2"), true))()
    end
)

scriptsui:addButton(
    "DomainX",
    function()
        loadstring(game:HttpGet('https://shlex.dev/release/domainx/latest.lua',true))()
    end
)

scriptsui:addButton(
    "EzHub",
    function()
        loadstring(
            game:HttpGet(
                ("https://raw.githubusercontent.com/debug420/Ez-Industries-Launcher-Data/master/Launcher.lua"),
                true
            )
        )()
    end
)

gamesui:addButton(
    "Piggy Script",
    function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/Piggy/Piggy"))()
    end
)

gamesui:addButton(
    "Broken Bone Script",
    function()
        loadstring(game:HttpGet("https://pastebin.com/raw/5rEAVmcC"))()
    end
)


lt2:addButton(
"LT 2 Scipt",
    function()
        loadstring(game:HttpGet("https://pastebin.com/raw/5rEAVmcC"))()
    end
	)
-- credits page
local about = venyx:addPage("About", 5012544693)
local aboutsc = about:addSection("Who made this shit")

aboutsc:addButton(
    "Coder/UI: Mustafa Çillioğlu",
    function()
        print("Mc Was Here :D")
    end
)

aboutsc:addButton(
    "UI Library: Venyx UI",
    function()
        print("Mc Was Here :D")
    end
)

aboutsc:addButton(
    "Exploits: A lot of them are just skids from InfiniteYield",
    function()
        print("Mc Was Here :D")
    end
)

-- load
venyx:SelectPage(venyx.pages[1], true)
