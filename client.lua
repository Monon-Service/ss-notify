-- Event listener (handig voor triggers vanuit andere resources)
RegisterNetEvent('customNotify:send')
AddEventHandler('customNotify:send', function(title, message)
    SendNUIMessage({
        action = "notify",
        title = title,
        message = message
    })
end)

-- Command voor test
RegisterCommand("testnotify", function()
    TriggerEvent("customNotify:send", "Succes!", "Dit is een testmelding.")
end)

-- ✅ Export functie
exports("Send", function(title, message)
    SendNUIMessage({
        action = "notify",
        title = title,
        message = message
    })
end)