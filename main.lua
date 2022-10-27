local function(code)

while task.wait(3) do
	local players = game.Players:GetChildren()
	for i, v in players do
		if v.Character:FindFirstChild("Highlight") then
			warn("ESP Detected")
            game.Players.LocalPlayer:Kick("Anticheat-Trigger: Code E1")
			game.ReplicatedStorage.Events.Anticheat.PlayerBanned:FireServer(game.Players.LocalPlayer, "E1")
		end
	end
	for i,v in (game.Players.LocalPlayer:GetChildren()) do
		if v:IsA("Tool") then
			local Setting = v:FindFirstChild("Setting")
			local Module = require(Setting)
			if Module.AmmoPerMag >= 120 then
				warn("InfAmmo Detected")
                game.Players.LocalPlayer:Kick("Anticheat-Trigger: Code 1a")
				game.ReplicatedStorage.Events.Anticheat.PlayerBanned:FireServer(game.Players.LocalPlayer, "1a")
			end
			if Module.Ammo >= 120 then
				warn("InfAmmo Detected")
                game.Players.LocalPlayer:Kick("Anticheat-Trigger: Code 1b")
				game.ReplicatedStorage.Events.Anticheat.PlayerBanned:FireServer(game.Players.LocalPlayer, "1b")
			end
			if Module.MaxAmmo >= 100 then
				warn("InfAmmo Detected")
                game.Players.LocalPlayer:Kick("Anticheat-Trigger: Code 1c")
				game.ReplicatedStorage.Events.Anticheat.PlayerBanned:FireServer(game.Players.LocalPlayer, "1c")
			end
			if Module.LimitedAmmoEnabled == false then
				warn("InfAmmo Detected")
                game.Players.LocalPlayer:Kick("Anticheat-Trigger: Code 1d")
				game.ReplicatedStorage.Events.Anticheat.PlayerBanned:FireServer(game.Players.LocalPlayer, "1d")
			end
			if Module.BaseDamage >= 100 then
				warn("OneShot Detected")
                game.Players.LocalPlayer:Kick("Anticheat-Trigger: Code 2a")
				game.ReplicatedStorage.Events.Anticheat.PlayerBanned:FireServer(game.Players.LocalPlayer, "2a")
			end
			if Module.Spread <= 0 then
                warn("NoSpread Detected")
                game.Players.LocalPlayer:Kick("Anticheat-Trigger: Code 3a")
				game.ReplicatedStorage.Events.Anticheat.PlayerBanned:FireServer(game.Players.LocalPlayer, "3a")
			end
			if Module.Recoil <= 9 then
				warn("NoRecoil Detected")
                game.Players.LocalPlayer:Kick("Anticheat-Trigger: Code 4a")
				game.ReplicatedStorage.Events.Anticheat.PlayerBanned:FireServer(game.Players.LocalPlayer, "4a")
			end
			if Module.ReloadTime <= 1.8 then
				warn("InstantReload Detected")
                game.Players.LocalPlayer:Kick("Anticheat-Trigger: Code 5a")
				game.ReplicatedStorage.Events.Anticheat.PlayerBanned:FireServer(game.Players.LocalPlayer, "5a")
			end
			if Module.EquipTime <= 0.5 then
				warn("InstantEquip Detected")
                game.Players.LocalPlayer:Kick("Anticheat-Trigger: Code 6a")
				game.ReplicatedStorage.Events.Anticheat.PlayerBanned:FireServer(game.Players.LocalPlayer, "6a")
			end
			
		end
	end
end

while task.wait(20) do
	local ws = game.Workspace:GetChildren()
	for i, v in ws do
		if v.Transparency == 0.5 and v.BrickColor == BrickColor.new("Lime green") then
			warn("ESP Detected")
			game.Players.LocalPlayer:Kick("Anticheat-Trigger: Code E2")
			game.ReplicatedStorage.Events.Anticheat.PlayerBanned:FireServer(game.Players.LocalPlayer, "E2")
		end
	end
end
