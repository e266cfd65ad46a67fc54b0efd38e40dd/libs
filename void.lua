local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/drillygzzly/Roblox-UI-Libs/main/Void%20Lib/Void%20Lib%20Source.lua"))()

local watermark = library:Watermark("watermark | 60 fps | v4.20 | dev")
-- watermark:Set("Watermark Set")
-- watermark:Hide() -- toggles watermark

local main = library:Load{
    Name = "vozoid hax or something",
    SizeX = 600,
    SizeY = 650,
    Theme = "Midnight",
    Extension = "json", -- config file extension
    Folder = "vozoid ui or something" -- config folder name
}

-- library.Extension = "txt" (config file extension)
-- library.Folder = "config folder name"

local tab = main:Tab("Tab")

local section = tab:Section{
    Name = "Section",
    Side = "Left"
}

local label = section:Label("Label")

--label:Set("Label Set")

section:Button{
    Name = "Button",
    Callback  = function()
        print("Button clicked")
    end
}

local separator = section:Separator("Separator")
--separator:Set("Separator Set")

local toggle = section:Toggle{
    Name = "Toggle",
    Flag = "Toggle 1",
    --Default = true,
    Callback  = function(bool)
        print("Toggle 1 is now " .. (bool and "enabled" or "disabled"))
    end
}

local togglepicker1 = toggle:ColorPicker{
    Default = Color3.fromRGB(255, 0, 0), 
    Flag = "Toggle 1 Picker 1", 
    Callback = function(color)
        print("Toggle 1 Picker 1 is now " .. string.format("%s, %s, %s, %s", math.round(color.R * 255), math.round(color.G * 255), math.round(color.B * 255), math.floor(color.A * 100) / 100))
    end
}

--togglepicker1:Set(Color3.fromRGB(255, 255, 255))

local togglepicker2 = toggle:ColorPicker{
    Default = Color3.fromRGB(0, 255, 0), 
    Flag = "Toggle 1 Picker 2", 
    Callback = function(color)
        print("Toggle 1 Picker 2 is now " .. string.format("%s, %s, %s, %s", math.round(color.R * 255), math.round(color.G * 255), math.round(color.B * 255), math.floor(color.A * 100) / 100))
    end
}

--togglepicker2:Set(Color3.fromRGB(255, 255, 255))

--toggle:Toggle(true)

local toggle2 = section:Toggle{
    Name = "Toggle 2",
    Flag = "Toggle 2",
    --Default = true,
    Callback  = function(bool)
        print("Toggle 2 is now " .. (bool and "enabled" or "disabled"))
    end
}

toggle2:Keybind{
    --Default = Enum.KeyCode.A,
    Blacklist = {Enum.UserInputType.MouseButton1},
    Flag = "Toggle 2 Keybind 1",
    Mode = "Toggle", -- mode to nil if u dont want it to toggle the toggle
    Callback = function(key, fromsetting)
        if fromsetting then
            print("Toggle 2 Keybind 1 is now " .. tostring(key))
        else
            print("Toggle 2 Keybind 1 was pressed")
        end
    end
}

local toggle3 = section:Toggle{
    Name = "Toggle 3",
    Flag = "Toggle 3",
    --Default = true,
    Callback  = function(bool)
        print("Toggle 3 is now " .. (bool and "enabled" or "disabled"))
    end
}

toggle3:Slider{
    Text = "[value]/5",
    --Default = 5,
    Min = 0,
    Max = 5,
    Float = 0.5,
    Flag = "Slider 1",
    Callback = function(value)
        print("Toggle 3 Slider 1 is now " .. value)
    end
}

local toggle4 = section:Toggle{
    Name = "Toggle 4",
    Flag = "Toggle 4",
    --Default = true,
    Callback  = function(bool)
        print("Toggle 4 is now " .. (bool and "enabled" or "disabled"))
    end
}

toggle4:Dropdown{
    --Default = "Option 1",
    Content = {
        "Option 1",
        "Option 2",
        "Option 3"
    },
    --Max = 5, -- turns into multidropdown
    --Scrollable = true, -- makes it scrollable
    --ScrollingMax = 5, -- caps the amount it contains before scrolling
    Flag = "Dropdown 1",
    Callback = function(option)
        print("Dropdown 1 is now " .. tostring(option))
    end
}


local box = section:Box{
    Name = "Box",
    --Default = "hi",
    Placeholder = "Box Placeholder",
    Flag = "Box 1",
    Callback = function(text)
        print("Box 1 is now " .. text)
    end
}

--box:Set("New box text")

local slider = section:Slider{
    Name = "Slider",
    Text = "[value]/1",
    --Default = 0.1,
    Min = 0,
    Max = 1,
    Float = 0.1,
    Flag = "Slider 1",
    Callback = function(value)
        print("Slider 1 is now " .. value)
    end
}

--slider:Set(1)

local dropdown = section:Dropdown{
    Name = "Dropdown",
    --Default = "Option 1",
    Content = {
        "Option 1",
        "Option 2",
        "Option 3"
    },
    Flag = "Dropdown 1",
    Callback = function(option)
        print("Dropdown 1 is now " .. tostring(option))
    end
}


dropdown:Set() -- using this without any args or with wrong args will unset the dropdown
--dropdown:Set("option 6") wont work and will unset

dropdown:Refresh{
    "Refreshed option 1",
    "Refreshed option 2",
    "Refreshed option 3"
}

dropdown:Set("Refreshed option 1")

dropdown:Add("Option 4")

dropdown:Remove("Option 4")

local multidropdown = section:Dropdown{
    Name = "Multi dropdown",
    --Default = {"Option 1"},
    Max = 3, -- makes it multi
    Content = {
        "Option 1",
        "Option 2",
        "Option 3"
    },
    Flag = "Multi dropdown 1",
    Callback = function(option)
        print("Multi dropdown 1 is now " .. table.concat(option, ", "))
    end
}

multidropdown:Set() -- using this without any args or with wrong args will unset the dropdown
multidropdown:Set{} -- using this without any args or with wrong args will unset the dropdown
--multidropdown:Set{"option 12321313"} wont work and will unset
--multidropdown:Set("hello") wont work and will unset

multidropdown:Refresh{
    "Refreshed option 1",
    "Refreshed option 2",
    "Refreshed option 3",
    "Refreshed option 4"
}

multidropdown:Set{
    "Refreshed option 1",
    "Refreshed option 2"
}

multidropdown:Add("Option 5")

multidropdown:Remove("Option 5")

local dropdown = section:Dropdown{
    Name = "Scrolling Dropdown",
    --Default = "Option 1",
    Scrollable = true,
    ScrollingMax = 5,
    Content = {
        "Option 1",
        "Option 2",
        "Option 3",
        "Option 4",
        "Option 5",
        "Option 6",
        "Option 7"
    },
    Flag = "Scrolling Dropdown 1",
    Callback = function(option)
        print("Scrolling Dropdown 1 is now " .. tostring(option))
    end
}

local colorpicker = section:ColorPicker{
    Name = "Color picker",
    Default = Color3.fromRGB(0, 255, 0),
    Flag = "Color picker 1",
    Callback = function(color)
        print("Color picker 1 is now: " .. string.format("%s, %s, %s, %s", math.round(color.R * 255), math.round(color.G * 255), math.round(color.B * 255), math.floor(color.A * 100) / 100))
    end
}

--colorpicker:Set(Color3.fromRGB(255, 255, 255))

local colorpickerpicker1 = colorpicker:ColorPicker{
    Default = Color3.fromRGB(0, 255, 255),
    DefaultAlpha = 0.5,
    Flag = "Color picker picker 1",
    Callback = function(color)
        print("Color picker 1 picker 1 is now: " .. string.format("%s, %s, %s, %s", math.round(color.R * 255), math.round(color.G * 255), math.round(color.B * 255), math.floor(color.A * 100) / 100))
    end
}

--colorpickerpicker1:Set(Color3.fromRGB(255, 255, 255))

local colorpickerpicker2 = colorpicker:ColorPicker{
    Default = Color3.fromRGB(255, 255, 255),
    Flag = "Color picker picker 2",
    Callback = function(color)
        print("Color picker 1 picker 2 is now " .. string.format("%s, %s, %s, %s", math.round(color.R * 255), math.round(color.G * 255), math.round(color.B * 255), math.floor(color.A * 100) / 100))
    end
}

--colorpickerpicker2:Set(Color3.fromRGB(255, 255, 255))

local keybind = section:Keybind{
    Name = "Keybind",
    --Default = Enum.KeyCode.A,
    --Blacklist = {Enum.UserInputType.MouseButton1, Enum.UserInputType.MouseButton2},
    Flag = "Keybind 1",
    Callback = function(key, fromsetting)
        if fromsetting then
            print("Keybind 1 is now " .. tostring(key))
        else
            print("Keybind 1 was pressed")
        end
    end
}

local configs = main:Tab("Configuration")

local themes = configs:Section{Name = "Theme", Side = "Left"}

local themepickers = {}

local themelist = themes:Dropdown{
    Name = "Theme",
    Default = library.currenttheme,
    Content = library:GetThemes(),
    Flag = "Theme Dropdown",
    Callback = function(option)
        if option then
            library:SetTheme(option)

            for option, picker in next, themepickers do
                picker:Set(library.theme[option])
            end
        end
    end
}

library:ConfigIgnore("Theme Dropdown")

local namebox = themes:Box{
    Name = "Custom Theme Name",
    Placeholder = "Custom Theme",
    Flag = "Custom Theme"
}

library:ConfigIgnore("Custom Theme")

themes:Button{
    Name = "Save Custom Theme",
    Callback = function()
        if library:SaveCustomTheme(library.flags["Custom Theme"]) then
            themelist:Refresh(library:GetThemes())
            themelist:Set(library.flags["Custom Theme"])
            namebox:Set("")
        end
    end
}

local customtheme = configs:Section{Name = "Custom Theme", Side = "Right"}

themepickers["Accent"] = customtheme:ColorPicker{
    Name = "Accent",
    Default = library.theme["Accent"],
    Flag = "Accent",
    Callback = function(color)
        library:ChangeThemeOption("Accent", color)
    end
}

library:ConfigIgnore("Accent")

themepickers["Window Background"] = customtheme:ColorPicker{
    Name = "Window Background",
    Default = library.theme["Window Background"],
    Flag = "Window Background",
    Callback = function(color)
        library:ChangeThemeOption("Window Background", color)
    end
}

library:ConfigIgnore("Window Background")

themepickers["Window Border"] = customtheme:ColorPicker{
    Name = "Window Border",
    Default = library.theme["Window Border"],
    Flag = "Window Border",
    Callback = function(color)
        library:ChangeThemeOption("Window Border", color)
    end
}

library:ConfigIgnore("Window Border")

themepickers["Tab Background"] = customtheme:ColorPicker{
    Name = "Tab Background",
    Default = library.theme["Tab Background"],
    Flag = "Tab Background",
    Callback = function(color)
        library:ChangeThemeOption("Tab Background", color)
    end
}

library:ConfigIgnore("Tab Background")

themepickers["Tab Border"] = customtheme:ColorPicker{
    Name = "Tab Border",
    Default = library.theme["Tab Border"],
    Flag = "Tab Border",
    Callback = function(color)
        library:ChangeThemeOption("Tab Border", color)
    end
}

library:ConfigIgnore("Tab Border")

themepickers["Tab Toggle Background"] = customtheme:ColorPicker{
    Name = "Tab Toggle Background",
    Default = library.theme["Tab Toggle Background"],
    Flag = "Tab Toggle Background",
    Callback = function(color)
        library:ChangeThemeOption("Tab Toggle Background", color)
    end
}

library:ConfigIgnore("Tab Toggle Background")

themepickers["Section Background"] = customtheme:ColorPicker{
    Name = "Section Background",
    Default = library.theme["Section Background"],
    Flag = "Section Background",
    Callback = function(color)
        library:ChangeThemeOption("Section Background", color)
    end
}

library:ConfigIgnore("Section Background")

themepickers["Section Border"] = customtheme:ColorPicker{
    Name = "Section Border",
    Default = library.theme["Section Border"],
    Flag = "Section Border",
    Callback = function(color)
        library:ChangeThemeOption("Section Border", color)
    end
}

library:ConfigIgnore("Section Border")

themepickers["Text"] = customtheme:ColorPicker{
    Name = "Text",
    Default = library.theme["Text"],
    Flag = "Text",
    Callback = function(color)
        library:ChangeThemeOption("Text", color)
    end
}

library:ConfigIgnore("Text")

themepickers["Button Background"] = customtheme:ColorPicker{
    Name = "Button Background",
    Default = library.theme["Button Background"],
    Flag = "Button Background",
    Callback = function(color)
        library:ChangeThemeOption("Button Background", color)
    end
}

library:ConfigIgnore("Button Background")

themepickers["Button Border"] = customtheme:ColorPicker{
    Name = "Button Border",
    Default = library.theme["Button Border"],
    Flag = "Button Border",
    Callback = function(color)
        library:ChangeThemeOption("Button Border", color)
    end
}

library:ConfigIgnore("Button Border")

themepickers["Toggle Background"] = customtheme:ColorPicker{
    Name = "Toggle Background",
    Default = library.theme["Toggle Background"],
    Flag = "Toggle Background",
    Callback = function(color)
        library:ChangeThemeOption("Toggle Background", color)
    end
}

library:ConfigIgnore("Toggle Background")

themepickers["Toggle Border"] = customtheme:ColorPicker{
    Name = "Toggle Border",
    Default = library.theme["Toggle Border"],
    Flag = "Toggle Border",
    Callback = function(color)
        library:ChangeThemeOption("Toggle Border", color)
    end
}

library:ConfigIgnore("Toggle Border")

themepickers["Slider Background"] = customtheme:ColorPicker{
    Name = "Slider Background",
    Default = library.theme["Slider Background"],
    Flag = "Slider Background",
    Callback = function(color)
        library:ChangeThemeOption("Slider Background", color)
    end
}

library:ConfigIgnore("Slider Background")

themepickers["Slider Border"] = customtheme:ColorPicker{
    Name = "Slider Border",
    Default = library.theme["Slider Border"],
    Flag = "Slider Border",
    Callback = function(color)
        library:ChangeThemeOption("Slider Border", color)
    end
}

library:ConfigIgnore("Slider Border")

themepickers["Dropdown Background"] = customtheme:ColorPicker{
    Name = "Dropdown Background",
    Default = library.theme["Dropdown Background"],
    Flag = "Dropdown Background",
    Callback = function(color)
        library:ChangeThemeOption("Dropdown Background", color)
    end
}

library:ConfigIgnore("Dropdown Background")

themepickers["Dropdown Border"] = customtheme:ColorPicker{
    Name = "Dropdown Border",
    Default = library.theme["Dropdown Border"],
    Flag = "Dropdown Border",
    Callback = function(color)
        library:ChangeThemeOption("Dropdown Border", color)
    end
}

library:ConfigIgnore("Dropdown Border")

themepickers["Dropdown Item Background"] = customtheme:ColorPicker{
    Name = "Dropdown Item Background",
    Default = library.theme["Dropdown Item Background"],
    Flag = "Dropdown Item Background",
    Callback = function(color)
        library:ChangeThemeOption("Dropdown Item Background", color)
    end
}

library:ConfigIgnore("Dropdown Item Background")

themepickers["Dropdown Item Border"] = customtheme:ColorPicker{
    Name = "Dropdown Item Border",
    Default = library.theme["Dropdown Item Border"],
    Flag = "Dropdown Item Border",
    Callback = function(color)
        library:ChangeThemeOption("Dropdown Item Border", color)
    end
}

library:ConfigIgnore("Dropdown Item Border")

themepickers["Dropdown Item Text"] = customtheme:ColorPicker{
    Name = "Dropdown Item Text",
    Default = library.theme["Dropdown Item Text"],
    Flag = "Dropdown Item Text",
    Callback = function(color)
        library:ChangeThemeOption("Dropdown Item Text", color)
    end
}

library:ConfigIgnore("Dropdown Item Text")

themepickers["Box Background"] = customtheme:ColorPicker{
    Name = "Box Background",
    Default = library.theme["Box Background"],
    Flag = "Box Background",
    Callback = function(color)
        library:ChangeThemeOption("Box Background", color)
    end
}

library:ConfigIgnore("Box Background")

themepickers["Box Border"] = customtheme:ColorPicker{
    Name = "Box Border",
    Default = library.theme["Box Border"],
    Flag = "Box Border",
    Callback = function(color)
        library:ChangeThemeOption("Box Border", color)
    end
}

library:ConfigIgnore("Box Border")

themepickers["Text Button Background"] = customtheme:ColorPicker{
    Name = "Text Button Background",
    Default = library.theme["Text Button Background"],
    Flag = "Text Button Background",
    Callback = function(color)
        library:ChangeThemeOption("Text Button Background", color)
    end
}

library:ConfigIgnore("Text Button Background")

themepickers["Text Button Border"] = customtheme:ColorPicker{
    Name = "Text Button Border",
    Default = library.theme["Text Button Border"],
    Flag = "Text Button Border",
    Callback = function(color)
        library:ChangeThemeOption("Text Button Border", color)
    end
}

library:ConfigIgnore("Text Button Border")

themepickers["Scrolling Dropdown Background"] = customtheme:ColorPicker{
    Name = "Scrolling Dropdown Background",
    Default = library.theme["Scrolling Dropdown Background"],
    Flag = "Scrolling Dropdown Background",
    Callback = function(color)
        library:ChangeThemeOption("Scrolling Dropdown Background", color)
    end
}

library:ConfigIgnore("Scrolling Dropdown Background")

themepickers["Scrolling Dropdown Border"] = customtheme:ColorPicker{
    Name = "Scrolling Dropdown Border",
    Default = library.theme["Scrolling Dropdown Border"],
    Flag = "Scrolling Dropdown Border",
    Callback = function(color)
        library:ChangeThemeOption("Scrolling Dropdown Border", color)
    end
}

library:ConfigIgnore("Scrolling Dropdown Border")

themepickers["Scrolling Dropdown Item Background"] = customtheme:ColorPicker{
    Name = "Scrolling Dropdown Item Background",
    Default = library.theme["Scrolling Dropdown Item Background"],
    Flag = "Scrolling Dropdown Item Background",
    Callback = function(color)
        library:ChangeThemeOption("Scrolling Dropdown Item Background", color)
    end
}

library:ConfigIgnore("Scrolling Dropdown Item Background")

themepickers["Scrolling Dropdown Item Border"] = customtheme:ColorPicker{
    Name = "Scrolling Dropdown Item Border",
    Default = library.theme["Scrolling Dropdown Item Border"],
    Flag = "Scrolling Dropdown Item Border",
    Callback = function(color)
        library:ChangeThemeOption("Scrolling Dropdown Item Border", color)
    end
}

library:ConfigIgnore("Scrolling Dropdown Item Border")

themepickers["Scrolling Dropdown Item Text"] = customtheme:ColorPicker{
    Name = "Scrolling Dropdown Item Text",
    Default = library.theme["Scrolling Dropdown Item Text"],
    Flag = "Scrolling Dropdown Item Text",
    Callback = function(color)
        library:ChangeThemeOption("Scrolling Dropdown Item Text", color)
    end
}

library:ConfigIgnore("Scrolling Dropdown Item Text")

themepickers["Tooltip Background"] = customtheme:ColorPicker{
    Name = "Tooltip Background",
    Default = library.theme["Tooltip Background"],
    Flag = "Tooltip Background",
    Callback = function(color)
        library:ChangeThemeOption("Tooltip Background", color)
    end
}

library:ConfigIgnore("Tooltip Background")

themepickers["Tooltip Text"] = customtheme:ColorPicker{
    Name = "Tooltip Text",
    Default = library.theme["Tooltip Text"],
    Flag = "Tooltip Text",
    Callback = function(color)
        library:ChangeThemeOption("Tooltip Text", color)
    end
}

library:ConfigIgnore("Tooltip Text")

themepickers["Notification Background"] = customtheme:ColorPicker{
    Name = "Notification Background",
    Default = library.theme["Notification Background"],
    Flag = "Notification Background",
    Callback = function(color)
        library:ChangeThemeOption("Notification Background", color)
    end
}

library:ConfigIgnore("Notification Background")

themepickers["Notification Border"] = customtheme:ColorPicker{
    Name = "Notification Border",
    Default = library.theme["Notification Border"],
    Flag = "Notification Border",
    Callback = function(color)
        library:ChangeThemeOption("Notification Border", color)
    end
}

library:ConfigIgnore("Notification Border")

themepickers["Notification Text"] = customtheme:ColorPicker{
    Name = "Notification Text",
    Default = library.theme["Notification Text"],
    Flag = "Notification Text",
    Callback = function(color)
        library:ChangeThemeOption("Notification Text", color)
    end
}

library:ConfigIgnore("Notification Text")

themepickers["Scroll Bar Background"] = customtheme:ColorPicker{
    Name = "Scroll Bar Background",
    Default = library.theme["Scroll Bar Background"],
    Flag = "Scroll Bar Background",
    Callback = function(color)
        library:ChangeThemeOption("Scroll Bar Background", color)
    end
}

library:ConfigIgnore("Scroll Bar Background")

themepickers["Scroll Bar Border"] = customtheme:ColorPicker{
    Name = "Scroll Bar Border",
    Default = library.theme["Scroll Bar Border"],
    Flag = "Scroll Bar Border",
    Callback = function(color)
        library:ChangeThemeOption("Scroll Bar Border", color)
    end
}

library:ConfigIgnore("Scroll Bar Border")

themepickers["Scroll Bar Slider"] = customtheme:ColorPicker{
    Name = "Scroll Bar Slider",
    Default = library.theme["Scroll Bar Slider"],
    Flag = "Scroll Bar Slider",
    Callback = function(color)
        library:ChangeThemeOption("Scroll Bar Slider", color)
    end
}

library:ConfigIgnore("Scroll Bar Slider")

themepickers["Border"] = customtheme:ColorPicker{
    Name = "Border",
    Default = library.theme["Border"],
    Flag = "Border",
    Callback = function(color)
        library:ChangeThemeOption("Border", color)
    end
}

library:ConfigIgnore("Border")

themepickers["Placeholder Text"] = customtheme:ColorPicker{
    Name = "Placeholder Text",
    Default = library.theme["Placeholder Text"],
    Flag = "Placeholder Text",
    Callback = function(color)
        library:ChangeThemeOption("Placeholder Text", color)
    end
}

library:ConfigIgnore("Placeholder Text")

themepickers["Indicator"] = customtheme:ColorPicker{
    Name = "Indicator",
    Default = library.theme["Indicator"],
    Flag = "Indicator",
    Callback = function(color)
        library:ChangeThemeOption("Indicator", color)
    end
}

library:ConfigIgnore("Indicator")

themepickers["Tooltip Arrow"] = customtheme:ColorPicker{
    Name = "Tooltip Arrow",
    Default = library.theme["Tooltip Arrow"],
    Flag = "Tooltip Arrow",
    Callback = function(color)
        library:ChangeThemeOption("Tooltip Arrow", color)
    end
}

library:ConfigIgnore("Tooltip Arrow")

themepickers["Tooltip Border"] = customtheme:ColorPicker{
    Name = "Tooltip Border",
    Default = library.theme["Tooltip Border"],
    Flag = "Tooltip Border",
    Callback = function(color)
        library:ChangeThemeOption("Tooltip Border", color)
    end
}

library:ConfigIgnore("Tooltip Border")
