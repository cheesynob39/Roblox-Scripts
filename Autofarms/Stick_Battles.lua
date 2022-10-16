local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Stick Battles | R2O ", HidePremium = true, SaveConfig = false,IntroEnabled = false, ConfigFolder = "R2O"})

local Tab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddToggle({
	Name = "Autofarm [ Default Glove ] ",
	Callback = function(bool)
	Default = false
	getgenv().Autofarm = bool
	
	if bool == true then
	    
	    Autofarm()
	    
	    end


  	end    
})

function Autofarm()
    while getgenv().Autofarm == true do
        wait(2)
for i,v in pairs(game.Players:GetPlayers()) do
    
   local args = {
    [1] = v.Character:FindFirstChild("Right Arm"),
    [2] = v.Character.Humanoid,
    [3] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
}

game:GetService("Players").LocalPlayer.Character[_G.Stick].HitBox.Remotes.HitEvent:FireServer(unpack(args))



end
end
end
