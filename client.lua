-- Functie om een notify te triggeren
RegisterNetEvent('customNotify:send')
AddEventHandler('customNotify:send', function(title, message)
    SendNUIMessage({
        action = "notify",
        title = title,
        message = message
    })
end)

-- Test command
RegisterCommand("testnotify", function()
    TriggerEvent("customNotify:send", "Succes!", "Dit is een testmelding.")
end)