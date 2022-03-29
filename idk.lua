--Fly Gui, Toggle is E
local ScreenGui = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local FlyButton = Instance.new("TextButton")
local PressE = Instance.new("TextLabel")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.ResetOnSpawn = false

Main.Name = "Main"
Main.Parent = ScreenGui
Main.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
Main.BorderColor3 = Color3.fromRGB(72, 72, 72)
Main.Position = UDim2.new(0.686114371, 0, 0.65773201, 0)
Main.Size = UDim2.new(0, 175, 0, 90)
Main.Active = true
Main.Draggable = true

FlyButton.Name = "FlyButton"
FlyButton.Parent = Main
FlyButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
FlyButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
FlyButton.Position = UDim2.new(0.102857143, 0, 0.133333355, 0)
FlyButton.Size = UDim2.new(0, 139, 0, 37)
FlyButton.Font = Enum.Font.Gotham
FlyButton.Text = "Fly"
FlyButton.TextColor3 = Color3.fromRGB(255, 170, 0)
FlyButton.TextScaled = true
FlyButton.TextSize = 14.000
FlyButton.TextWrapped = true
FlyButton.MouseButton1Down:connect(function()
	repeat wait() 
	until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:findFirstChild("Torso") and game.Players.LocalPlayer.Character:findFirstChild("Humanoid") 
	local mouse = game.Players.LocalPlayer:GetMouse() 
	repeat wait() until mouse
	local plr = game.Players.LocalPlayer 
	local torso = plr.Character.Torso 
	local flying = true
	local deb = true 
	local ctrl = {f = 0, b = 0, l = 0, r = 0} 
	local lastctrl = {f = 0, b = 0, l = 0, r = 0} 
	local maxspeed = 100 
	local speed = 0 

	function Fly() 
		local bg = Instance.new("BodyGyro", torso) 
		bg.P = 9e4 
		bg.maxTorque = Vector3.new(9e9, 9e9, 9e9) 
		bg.cframe = torso.CFrame 
		local bv = Instance.new("BodyVelocity", torso) 
		bv.velocity = Vector3.new(0,0.1,0) 
		bv.maxForce = Vector3.new(9e9, 9e9, 9e9) 
		repeat wait() 
			plr.Character.Humanoid.PlatformStand = true 
			if ctrl.l + ctrl.r = 0 or ctrl.f + ctrl.b = 0 then 
				speed = speed+.5+(speed/maxspeed) 
				if speed > maxspeed then 
					speed = maxspeed 
				end 
			elseif not (ctrl.l + ctrl.r = 0 or ctrl.f + ctrl.b = 0) and speed ~= 0 then 
				speed = speed-1 
				if speed < 0 then 
					speed = 0 
				end 
			end 
			if (ctrl.l + ctrl.r) = 0 or (ctrl.f + ctrl.b) = 0 then 
				bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector  (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame  CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed 
				lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r} 
			elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then 
				bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector  (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame  CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed 
			else 
				bv.velocity = Vector3.new(0,0.1,0) 
			end 
			bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0) 
		until not flying 
		ctrl = {f = 0, b = 0, l = 0, r = 0} 
		lastctrl = {f = 0, b = 0, l = 0, r = 0} 
		speed = 0 
		bg:Destroy() 
		bv:Destroy() 
		plr.Character.Humanoid.PlatformStand = false 
	end 
	mouse.KeyDown:connect(function(key) 
		if key:lower() == "e" then 
			if flying then flying = false 
			else 
				flying = true 
				Fly() 
			end 
		elseif key:lower() == "w" then 
			ctrl.f = 1 
		elseif key:lower() == "s" then 
			ctrl.b = -1 
		elseif key:lower() == "a" then 
			ctrl.l = -1 
		elseif key:lower() == "d" then 
			ctrl.r = 1 
		end 
	end) 
	mouse.KeyUp:connect(function(key) 
		if key:lower() == "w" then 
			ctrl.f = 0 
		elseif key:lower() == "s" then 
			ctrl.b = 0 
		elseif key:lower() == "a" then 
			ctrl.l = 0 
		elseif key:lower() == "d" then 
			ctrl.r = 0 
		end 
	end)
	Fly()
end)

PressE.Name = "PressE"
PressE.Parent = Main
PressE.BackgroundColor3 = Color3.fromRGB(255, 170, 0)
PressE.BorderColor3 = Color3.fromRGB(0, 0, 0)
PressE.Position = UDim2.new(0.205714226, 0, 0.611111104, 0)
PressE.Size = UDim2.new(0, 103, 0, 35)
PressE.Font = Enum.Font.TitilliumWeb
PressE.Text = "Press E to toggle"
PressE.TextColor3 = Color3.fromRGB(0, 0, 0)
PressE.TextSize = 14.000
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local TextBox = Instance.new("TextBox")
local TextButton = Instance.new("TextButton")
local TextButton_2 = Instance.new("TextButton")
local TextButton_3 = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BorderColor3 = Color3.fromRGB(255, 255, 255)
Frame.Position = UDim2.new(0.54492414, 0, 0.490721643, 0)
Frame.Size = UDim2.new(0, 337, 0, 202)
Frame.Active = true
Frame.Draggable = true

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Position = UDim2.new(-0.00296735903, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 337, 0, 50)
TextLabel.Font = Enum.Font.GothamSemibold
TextLabel.Text = "JJsploit"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 24.000
TextLabel.TextWrapped = true

TextLabel_2.Parent = Frame
TextLabel_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.Position = UDim2.new(0.64985162, 0, 0, 0)
TextLabel_2.Size = UDim2.new(0, 118, 0, 50)
TextLabel_2.Font = Enum.Font.GothamBlack
TextLabel_2.Text = "Premium 👑"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 127)
TextLabel_2.TextSize = 18.000
TextLabel_2.TextWrapped = true

TextBox.Parent = Frame
TextBox.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
TextBox.BorderColor3 = Color3.fromRGB(255, 255, 255)
TextBox.Position = UDim2.new(0.0415430255, 0, 0.287128717, 0)
TextBox.Size = UDim2.new(0, 308, 0, 81)
TextBox.Font = Enum.Font.Gotham
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(0, 255, 0)
TextBox.TextSize = 14.000
TextBox.TextWrapped = true
TextBox.TextXAlignment = Enum.TextXAlignment.Left
TextBox.TextYAlignment = Enum.TextYAlignment.Top

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextButton.Position = UDim2.new(0.0415430255, 0, 0.717821777, 0)
TextButton.Size = UDim2.new(0, 147, 0, 50)
TextButton.Font = Enum.Font.Gotham
TextButton.Text = "Execute"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 0)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true

TextButton_2.Parent = Frame
TextButton_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.Position = UDim2.new(0.519287825, 0, 0.717821777, 0)
TextButton_2.Size = UDim2.new(0, 147, 0, 50)
TextButton_2.Font = Enum.Font.Gotham
TextButton_2.Text = "Inject"
TextButton_2.TextColor3 = Color3.fromRGB(255, 255, 0)
TextButton_2.TextScaled = true
TextButton_2.TextSize = 14.000
TextButton_2.TextWrapped = true
TextButton_2.MouseButton1Down:connect(function()
	local ScreenGui = Instance.new("ScreenGui")
	local Frame = Instance.new("Frame")
	local TextLabel = Instance.new("TextLabel")

	--Properties:

	ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	Frame.Parent = ScreenGui
	Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Frame.Size = UDim2.new(0, 857, 0, 485)

	TextLabel.Parent = Frame
	TextLabel.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
	TextLabel.BorderColor3 = Color3.fromRGB(255, 0, 0)
	TextLabel.Position = UDim2.new(-0.0070011667, 0, 0, 0)
	TextLabel.Size = UDim2.new(0, 863, 0, 485)
	TextLabel.Font = Enum.Font.Gotham
	TextLabel.Text = "You actually thought, LMAO!"
	TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
	TextLabel.TextScaled = true
	TextLabel.TextSize = 14.000
	TextLabel.TextWrapped = true
end)

TextButton_3.Parent = Frame
TextButton_3.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
TextButton_3.BorderColor3 = Color3.fromRGB(255, 0, 0)
TextButton_3.Size = UDim2.new(0, 34, 0, 28)
TextButton_3.Font = Enum.Font.GothamBlack
TextButton_3.Text = "X"
TextButton_3.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_3.TextSize = 14.000
--[[
Redwood Prison GUI Created By Nameless & 001

 / Join Our Discord For Vip Info: https://discordapp.com/invite/JgMREGp
 / Please Read The TOS before using: https://pastebin.com/rGfVUegA

]]--

--// GUI & Settings (You Can Edit)
_G.WALKSPEED = 100
_G.JUMPPOWER = 100
_G.GUICLICKID = "903267862"
_G.TOGGLE = Enum.KeyCode.F
_G.toolsonspawn = {""}
_G.CustomThemeText = Color3.fromRGB(255, 170, 0)
_G.CustomThemeBack = Color3.fromRGB(0, 0, 0)
loadstring(game:GetObjects('rbxassetid://5671578245')[1].Source)() --// Main Script