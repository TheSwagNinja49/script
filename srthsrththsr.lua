-- Farewell Infortality. 
-- Version: 2.82 
-- Instances: 
local ScreenGui = Instance.new("ScreenGui") 
local OpenFrame = Instance.new("Frame") 
local Open = Instance.new("TextButton") 
local Main = Instance.new("Frame") 
local TextLabel = Instance.new("TextLabel") 
local RealsimAnime = Instance.new("TextButton") 
local Brick = Instance.new("TextButton") 
local Reach = Instance.new("TextButton") 
local Invisible = Instance.new("TextButton") 
local Close = Instance.new("TextButton") 
local TextLabel_2 = Instance.new("TextLabel") 
--Properties: 
ScreenGui.Name = "ScreenGui" 
ScreenGui.Parent = game.CoreGui 
 
OpenFrame.Name = "OpenFrame" 
OpenFrame.Parent = ScreenGui 
OpenFrame.BackgroundColor3 = Color3.new(0.513726, 0.560784, 1) 
OpenFrame.Position = UDim2.new(0.936265111, 0, 0.837837815, 0) 
OpenFrame.Size = UDim2.new(0, 100, 0, 45) 
 
Open.Name = "Open" 
Open.Parent = OpenFrame 
Open.BackgroundColor3 = Color3.new(0, 0.0666667, 1) 
Open.Position = UDim2.new(-0.0299999714, 0, -0.111111112, 0) 
Open.Size = UDim2.new(0, 103, 0, 50) 
Open.Font = Enum.Font.Cartoon 
Open.Text = "X" 
Open.TextColor3 = Color3.new(0, 0, 0) 
Open.TextSize = 50 
Open.MouseButton1Down:connect(function() 
Main.Visible = true 
OpenFrame.Visible = false  
end) 
 
Main.Name = "Main" 
Main.Parent = ScreenGui 
Main.Active = true 
Main.BackgroundColor3 = Color3.new(0.364706, 0.352941, 0.352941) 
Main.Position = UDim2.new(0.23008287, 0, 0.226044238, 0) 
Main.Size = UDim2.new(0, 648, 0, 366) 
Main.Visible = false 
Main.Draggable = true 
 
TextLabel.Parent = Main 
TextLabel.BackgroundColor3 = Color3.new(0, 0, 0) 
TextLabel.Size = UDim2.new(0, 648, 0, 50) 
TextLabel.Font = Enum.Font.Cartoon 
TextLabel.Text = "FENCING FUCKER V1" 
TextLabel.TextColor3 = Color3.new(0.807843, 0.266667, 0.807843) 
TextLabel.TextSize = 30 
TextLabel.TextStrokeTransparency = 0 
 
RealsimAnime.Name = "Realsim Anime" 
RealsimAnime.Parent = Main 
RealsimAnime.BackgroundColor3 = Color3.new(0.137255, 0.509804, 1) 
RealsimAnime.Position = UDim2.new(0.356481493, 0, 0.172131151, 0) 
RealsimAnime.Size = UDim2.new(0, 200, 0, 50) 
RealsimAnime.Font = Enum.Font.Cartoon 
RealsimAnime.Text = "Realsim Anim" 
RealsimAnime.TextColor3 = Color3.new(0, 0, 0) 
RealsimAnime.TextSize = 30 
RealsimAnime.MouseButton1Down:connect(function() 
          --<//Realism Script by xAcrozed.\\>-- 
            --/>>/>>/>>/>>/>>/>>/>>/>>/>>/-- 
            -------------------------------- 
 
            --//Variables\\-- 
local lp      = game.Players.LocalPlayer 
local animate = lp.Character.Animate 
 
            --//Scripting\\-- 
animate.walk.WalkAnim.AnimationId   = "rbxassetid://376760331" 
animate.idle.Animation1.AnimationId = "rbxassetid://75356212" 
animate.idle.Animation1.Looped      = true 
lp.character.Humanoid.WalkSpeed     = 25  
end) 
 
Brick.Name = "Brick" 
Brick.Parent = Main 
Brick.BackgroundColor3 = Color3.new(0.137255, 0.509804, 1) 
Brick.Position = UDim2.new(0.0370370373, 0, 0.431694001, 0) 
Brick.Size = UDim2.new(0, 200, 0, 50) 
Brick.Font = Enum.Font.Cartoon 
Brick.Text = "Brick Spam " 
Brick.TextColor3 = Color3.new(0, 0, 0) 
Brick.TextSize = 30 
Brick.MouseButton1Down:connect(function() 
-- https://www.roblox.com/games/12109643/Fencing 
 
game:GetService('RunService').Stepped:connect(function() 
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do 
if v.Name == "Spray" then 
if v.Handle.Mesh then 
v.Handle.Mesh:Destroy() 
end 
v.Parent = workspace 
end 
end 
end) 
local function paint() 
for i,v in pairs(game.Workspace:GetChildren())do 
if v.Name == "Handle" then 
v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame 
v.Transparency = 1 
v.CanCollide = false 
wait() 
v.CFrame = game.Players.LocalPlayer.Character["Left Leg"].CFrame 
end 
end 
end 
local function equip() 
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren())do 
if v.Name == "Spray" then 
game.Players.LocalPlayer.Character.Humanoid:EquipTool(v) 
end 
end 
end 
while wait(0.05) do 
paint() 
equip() 
end 
end) 
 
Reach.Name = "Reach" 
Reach.Parent = Main 
Reach.BackgroundColor3 = Color3.new(0.137255, 0.509804, 1) 
Reach.Position = UDim2.new(0.345679015, 0, 0.677595675, 0) 
Reach.Size = UDim2.new(0, 200, 0, 50) 
Reach.Font = Enum.Font.Cartoon 
Reach.Text = "REACH" 
Reach.TextColor3 = Color3.new(0, 0, 0) 
Reach.TextSize = 40 
Reach.MouseButton1Down:connect(function() 
local foil=game.Players.LocalPlayer.Backpack.Foil 
a=Instance.new("SelectionBox",foil.Handle) 
a.Adornee=foil.Handle 
foil.Handle.Size=Vector3.new(0.2,0.2,120) 
foil.Equipped:connect(function() 
while wait() do 
game.Workspace[game.Players.LocalPlayer.Name].Foil.GripPos=Vector3.new(0,0,-60) 
end 
end) 
end) 
 
Invisible.Name = "Invisible" 
Invisible.Parent = Main 
Invisible.BackgroundColor3 = Color3.new(0.137255, 0.509804, 1) 
Invisible.Position = UDim2.new(0.654321015, 0, 0.431694001, 0) 
Invisible.Size = UDim2.new(0, 200, 0, 50) 
Invisible.Font = Enum.Font.Cartoon 
Invisible.Text = "Invisible" 
Invisible.TextColor3 = Color3.new(0, 0, 0) 
Invisible.TextSize = 30 
Invisible.MouseButton1Down:connect(function() 
Local = game:GetService('Players').LocalPlayer 
Char  = Local.Character 
touched,tpdback = false, false 
Local.CharacterAdded:connect(function(char) 
   if script.Disabled ~= true then 
       wait(.25) 
       loc = Char.HumanoidRootPart.Position 
       Char:MoveTo(box.Position + Vector3.new(0,.5,0)) 
   end 
end) 
game:GetService('UserInputService').InputBegan:connect(function(key) 
   if key.KeyCode == Enum.KeyCode.Equals then 
       if script.Disabled ~= true then 
           script.Disabled = true 
           print'you may re-execute' 
       end 
   end 
end) 
box = Instance.new('Part',workspace) 
box.Anchored = true 
box.CanCollide = true 
box.Size = Vector3.new(10,1,10) 
box.Position = Vector3.new(0,10000,0) 
box.Touched:connect(function(part) 
   if (part.Parent.Name == Local.Name) then 
       if touched == false then 
           touched = true 
           function apply() 
               if script.Disabled ~= true then 
                   no = Char.HumanoidRootPart:Clone() 
                   wait(.25) 
                   Char.HumanoidRootPart:Destroy() 
                   no.Parent = Char 
                   Char:MoveTo(loc) 
                   touched = false 
               end end 
           if Char then 
               apply() 
           end 
       end 
   end 
end) 
repeat wait() until Char 
loc = Char.HumanoidRootPart.Position 
Char:MoveTo(box.Position + Vector3.new(0,.5,0)) 
end) 
 
Close.Name = "Close" 
Close.Parent = Main 
Close.BackgroundColor3 = Color3.new(0.137255, 0.509804, 1) 
Close.Position = UDim2.new(0.442901224, 0, 0.431694001, 0) 
Close.Size = UDim2.new(0, 73, 0, 50) 
Close.Font = Enum.Font.Cartoon 
Close.Text = "CLOSE" 
Close.TextColor3 = Color3.new(0, 0, 0) 
Close.TextSize = 20 
Close.MouseButton1Down:connect(function() 
OpenFrame.Visible = true 
Main.Visible = false  
end) 
 
TextLabel_2.Parent = Main 
TextLabel_2.BackgroundColor3 = Color3.new(0, 0, 0) 
TextLabel_2.Position = UDim2.new(0, 0, 0.863388002, 0) 
TextLabel_2.Size = UDim2.new(0, 648, 0, 50) 
TextLabel_2.Font = Enum.Font.SourceSans 
TextLabel_2.Text = "GUI BY LUDDE2K ON V3RM" 
TextLabel_2.TextColor3 = Color3.new(1, 0, 1) 
TextLabel_2.TextSize = 30 
-- Scripts: