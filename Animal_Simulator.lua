



for i,v in pairs(game.Workspace.Treasures:GetChildren()) do
if v.ClassName == "MeshPart" then
repeat
    wait(.5)

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
until nil
end
end
