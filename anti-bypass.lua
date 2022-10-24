game.Players.LocalPlayer.DescendantRemoving:Connect(function(removedobject)
    if removedobject.Name == ("CamService") then
        warn("Bypass Attempted")
        game.Players.LocalPlayer:Kick("Anticheat-Trigger: AnticheatBypassAttempt | This kick was made by a prototype anticheat and may be a false positive, you have not been banned")
    end
end)