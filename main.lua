while task.wait(3) do
	local players = game.Players:GetChildren()
	for i, v in players do
		if v.Character:FindFirstChild("Highlight") then
			warn("ESP Detected")
            game.Players.LocalPlayer:Kick("Anticheat-Trigger: ESP | This kick was made by a prototype anticheat and may be a false positive, you have not been banned")
		end
	end
	for i,v in (game.Players.LocalPlayer:GetChildren()) do
		if v:IsA("Tool") then
			local Setting = v:FindFirstChild("Setting")
			local Module = require(Setting)
			if Module.AmmoPerMag >= 999 then
				warn("InfAmmo Detected")
                game.Players.LocalPlayer:Kick("Anticheat-Trigger: InfAmmo | This kick was made by a prototype anticheat and may be a false positive, you have not been banned")
			end
			if Module.Ammo >= 999 then
				warn("InfAmmo Detected")
                game.Players.LocalPlayer:Kick("Anticheat-Trigger: InfAmmo | This kick was made by a prototype anticheat and may be a false positive, you have not been banned")
			end
			if Module.MaxAmmo >= 999 then
				warn("InfAmmo Detected")
                game.Players.LocalPlayer:Kick("Anticheat-Trigger: InfAmmo | This kick was made by a prototype anticheat and may be a false positive, you have not been banned")
			end
			if Module.LimitedAmmoEnabled == 999 then
				warn("InfAmmo Detected")
                game.Players.LocalPlayer:Kick("Anticheat-Trigger: InfAmmo | This kick was made by a prototype anticheat and may be a false positive, you have not been banned")
			end
			if Module.BaseDamage >= 999 then
				warn("OneShot Detected")
                game.Players.LocalPlayer:Kick("Anticheat-Trigger: OneShot | This kick was made by a prototype anticheat and may be a false positive, you have not been banned")
			end
			if Module.Spread <= 0 then
                warn("NoSpread Detected")
				game.Players.LocalPlayer:Kick("Anticheat-Trigger: NoSpread | This kick was made by a prototype anticheat and may be a false positive, you have not been banned")
			end
			if Module.Recoil <= 0 then
				warn("NoRecoil Detected")
                game.Players.LocalPlayer:Kick("Anticheat-Trigger: NoRecoil | This kick was made by a prototype anticheat and may be a false positive, you have not been banned")
			end
			if Module.ReloadTime <= 0 then
				warn("InstantReload Detected")
                game.Players.LocalPlayer:Kick("Anticheat-Trigger: InstantReload | This kick was made by a prototype anticheat and may be a false positive, you have not been banned")
			end
			if Module.EquipTime <= 0 then
				warn("InstantEquip Detected")
                game.Players.LocalPlayer:Kick("Anticheat-Trigger: InstantEquip | This kick was made by a prototype anticheat and may be a false positive, you have not been banned")
			end
			
		end
	end
end

while task.wait(20) do
	local ws = game.Workspace:GetChildren()
	for i, v in ws do
		if v.Transparency == 0.5 and v.BrickColor == BrickColor.new("Lime green") then
			warn("ESP Detected")
            game.Players.LocalPlayer:Kick("Anticheat-Trigger: ESP | This kick was made by a prototype anticheat and may be a false positive, you have not been banned")
		end
	end
end
