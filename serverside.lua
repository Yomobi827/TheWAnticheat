game.ReplicatedStorage.Events.Anticheat.PlayerBanned.OnServerEvent:Connect(function(plr, code)
    warn(plr, "was banned for code", code, "checking validity")
    local PlayerList = game.Players:GetChildren()
    for i, v in PlayerList do
        if v == plr then
            warn("AntiCheatServerSide Error Code 1")
            return "AntiCheatServerSide Error Code 1"
        end
    end
    -- add to banlist
end)
