-- https://discord.gg/GFkuVAmHvQ
-- more scripts: t.me/arceusxcommunity
local Players = game:GetService("Players")
local player = Players.LocalPlayer

local char = player.Character or player.CharacterAdded:Wait()
local hrp = char:WaitForChild("HumanoidRootPart")

local presents = workspace.Game.LiveOpsPersistent.Christmas2025.Spawners.PresentHunt:GetChildren()

for i = 1, #presents do
    local present = presents[i]
    
    if present:IsA("Model") then
        if present.PrimaryPart then
            hrp.CFrame = CFrame.new(present.PrimaryPart.Position + Vector3.new(0, 5, 0))
        else
            for _, part in pairs(present:GetChildren()) do
                if part:IsA("BasePart") then
                    hrp.CFrame = CFrame.new(part.Position + Vector3.new(0, 5, 0))
                    break
                end
            end
        end
    elseif present:IsA("BasePart") then
        hrp.CFrame = CFrame.new(present.Position + Vector3.new(0, 5, 0))
    end
    
    task.wait(0.3)
end
