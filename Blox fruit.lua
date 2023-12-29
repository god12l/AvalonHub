local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "Avalon Hub Blox fruits(beta 0.1)" .. Fluent.Version,
    SubTitle = "by peerlessgod ",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = false,
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl
})

local Tabs = {
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" }),
    Home = Window:AddTab({ Title = "Home", Icon = "home" }),
    Combat = Window:AddTab({ Title = "Combat", Icon = "swords" }),
    Stats = Window:AddTab({ Title = "Stats", Icon = "bar-chart" }),
    Teleport = Window:AddTab({ Title = "Teleport", Icon = "map-pin" }),
    Dungeon = Window:AddTab({ Title = "Dungeon", Icon = "skull" }),
    DevilFruit = Window:AddTab({ Title = "Devil Fruit", Icon = "apple" }),
    Shop = Window:AddTab({ Title = "Shop", Icon = "shopping-cart" }),
    SettingsUi = Window:AddTab({ Title = "Settings UI", Icon = "settings" }),
    Race = Window:AddTab({ Title = "Auto Race", Icon = "users" }),
    Miscs = Window:AddTab({ Title = "Miscellaneous", Icon = "scroll" })
}

local Options = Fluent.Options

Fluent:Notify({
    Title = "Notification",
    Content = "This is a notification",
    SubContent = "SubContent",
    Duration = 5
})

Tabs.Home:AddParagraph({
    Title = "Paragraph",
    Content = "This is a paragraph.\nSecond line!"
})

Tabs.Home:AddButton({
    Title = "Button",
    Description = "Very important button",
    Callback = function()
        Window:Dialog({
            Title = "Title",
            Content = "This is a dialog",
            Buttons = {
                {
                    Title = "Confirm",
                    Callback = function()
                        print("Confirmed the dialog.")
                    end
                },
                {
                    Title = "Cancel",
                    Callback = function()
                        print("Cancelled the dialog.")
                    end
                }
            }
        })
    end
})

-- Create a button with a dropdown menu
local DropdownButton = Tabs.Home:AddButton({
    Title = "Dropdown Button",
    Description = "Click me for options",
    Callback = function()
        print("Dropdown button clicked!")
    end
})

-- Create a dropdown menu
local DropdownMenu = Fluent:CreateDropdown({
    Options = {
        "Option 1",
        "Option 2",
        "Option 3"
    },
    Callback = function(selectedOption)
        print("Selected option:", selectedOption)
    end
})

-- Attach the dropdown menu to the button
DropdownButton:SetDropdown(DropdownMenu)

local Toggle = Tabs.Home:AddToggle("MyToggle", { Title = "Toggle", Default = false })

Toggle:OnChanged(function()
    print("Toggle changed:", Options.MyToggle.Value)
end)

Options.MyToggle:SetValue(false)

SaveManager:SetLibrary(Fluent)
InterfaceManager:SetLibrary(Fluent)
