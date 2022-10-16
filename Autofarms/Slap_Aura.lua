while wait(0.001) do
for i,v in pairs(game.Players:GetPlayers()) do
 
 local args = {
    [1] = v.Character.Humanoid,
    [2] = 0,
    [3] = 0,
    [4] = Vector3.new(-44.86636734008789, 18.738971710205078, -14.794918060302734)
}

game:GetService("Players").LocalPlayer.Character.HitEvent:FireServer(unpack(args))



end
end
