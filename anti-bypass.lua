game.Players.LocalPlayer.DescendantRemoving:Connect(function(removedobject)
    if removedobject.Name == ("CamService") then
        warn("Bypass Attempted")
        game.Players.LocalPlayer:Kick("Anticheat-Trigger: Code B1")
    end
end)
