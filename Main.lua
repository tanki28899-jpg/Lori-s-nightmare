local WindUI = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()

local Window = WindUI:CreateWindow({
    Title = "bongo hub Lori’s nightmare script",
    Icon = "door-open", -- lucide icon. optional
    Author = "by .ftgs and .ftgs", -- optional
})

local Tab = Window:Tab({
    Title = "main stuff",
    Icon = "bird", -- optional
    Locked = false,
})

local Tab2 = Window:Tab({
    Title = "LOCAL",
    Icon = "bird", -- optional
    Locked = false,
})

local Button = Tab:Button({
    Title = "PLAYER ESP",
    Desc = "esp that radars players",
    Locked = false,
    Callback = function() loadstring(game:HttpGet("https://pastebin.com/raw/gZ6ZWL1a"))()
        -- ...
    end
})

local Button = Tab:Button({
    Title = "auto coins",
    Desc = "gives money",
    Locked = false,
    Callback = function() loadstring(game:HttpGet("https://pastebin.com/raw/v9XwVysB"))()
        -- ...
    end
})

local Button = Tab:Button({
    Title = "teleport to tvs",
    Desc = "teleports to TVs",
    Locked = false,
    Callback = function() loadstring(game:HttpGet("https://pastebin.com/raw/5dNV11q3"))()
        -- ...
    end
})

local Button = Tab:Button({
    Title = "tv esp",
    Desc = "a esp that radars TVs",
    Locked = false,
    Callback = function() loadstring(game:HttpGet("https://pastebin.com/raw/6X7KdHwv"))()
        -- ...
    end
})

local Input = Tab2:Input({
    Title = "Input",
    Desc = "Input ",
    Value = "16",
    InputIcon = "bird",
    Type = "Input", -- or "Textarea"
    Placeholder = "Enter number...",
    Callback = function(input) getgenv().Enabled = true -- change to false then execute again to turn off
getgenv().Speed = input -- change speed to the number you want
loadstring(game:HttpGet("https://raw.githubusercontent.com/eclipsology/SimpleSpeed/main/SimpleSpeed.lua"))()
        print("text entered: " .. input)
    end
})
