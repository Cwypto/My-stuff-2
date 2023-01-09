local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "cwyptoware [Fortress Sim]", HidePremium = false, IntroEnabled = enabled, IntroText = "CWYPTOWARE", SaveConfig = false, ConfigFolder = "OrionTest"})


--Values
_G.WallFucker = true
_G.Add5000 = true
_G.Add10000 = true
_G.TankTurret = true



--Functions

function WallFucker()
    while _G.WallFucker == true do
            game:GetService("ReplicatedStorage").Walls:FireServer(workspace.Plates.Orange)
            game:GetService("ReplicatedStorage").Walls:FireServer(workspace.Plates.Blue)
            game:GetService("ReplicatedStorage").Walls:FireServer(workspace.Plates.Red)
            game:GetService("ReplicatedStorage").Walls:FireServer(workspace.Plates.Green)
            game:GetService("ReplicatedStorage").Walls:FireServer(workspace.Plates.Purple)
            game:GetService("ReplicatedStorage").Walls:FireServer(workspace.Plates.Yellow)
        wait(0.001)
     end
    end

function Add5000()
    while _G.Add5000 == true do
        game:GetService("ReplicatedStorage").AddGold:FireServer(5000)
        wait(0.5)
     end
    end

function Add10000()
        while _G.Add10000 == true do
            game:GetService("ReplicatedStorage").AddGold:FireServer(10000)
            wait(0.5)
         end
        end

function TankTurret()
    game:GetService("ReplicatedStorage").AddItems:FireServer("Tank Turret",10)
end

function SuperTurret()
    game:GetService("ReplicatedStorage").AddItems:FireServer("Super Turret",10)
end

function PlasmaCannon()
    game:GetService("ReplicatedStorage").AddItems:FireServer("Plasma Cannon",10)
end
        --Tabs
local Tab1 = Window:MakeTab({
	Name = "Walls",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Tab2 = Window:MakeTab({
	Name = "Money",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Tab3 = Window:MakeTab({
	Name = "Cannons",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
--Toggles
Tab1:AddToggle({
	Name = "Wall Fucker",
	Default = false,
	Callback = function(Value)
		_G.WallFucker = Value
        WallFucker()
	end    
})

Tab2:AddToggle({
	Name = "Add 5000 (0.5)",
	Default = false,
	Callback = function(Value)
		_G.Add5000 = Value
       Add5000()
	end
        
})

Tab2:AddToggle({
	Name = "Add 10000 (0.5)",
	Default = false,
	Callback = function(Value)
		_G.Add10000 = Value
        Add10000()
	end

})    

--Buttons

Tab3:AddButton({
	Name = "10 Tank Turret",
	Callback = function()
        TankTurret()
        
      		
  	end    
})

Tab3:AddButton({
	Name = "10 Golden Turret",
	Callback = function()
        SuperTurret()
        
      		
  	end    
})

Tab3:AddButton({
	Name = "10 Plasma Cannon",
	Callback = function()
        PlasmaCannon()
        
      		
  	end    
})




OrionLib:Init()