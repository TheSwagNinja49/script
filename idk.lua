-- Execute while you're in the arena or it will not work since u will not teleport into the arena itself.
fakeStarted = game.Players.LocalPlayer.Character.started:Clone()
game.Players.LocalPlayer.Character.started:Destroy()
fakeStarted.Parent =  game.Players.LocalPlayer.Character
print("God mode loaded")