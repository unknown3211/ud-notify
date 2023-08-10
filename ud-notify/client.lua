function ShowNotification(type, text)
    SendNUIMessage({
        type = 'showNotification',
        notificationType = type,
        text = text
    })
end

RegisterNetEvent('UDText:show')
AddEventHandler('UDText:show', function(type, text)
    ShowNotification(type, text)
end)

RegisterCommand("testnotify", function()
    TriggerEvent('UDText:show', 'success', 'This is a Success message.')
end)

RegisterCommand("testnotify1", function()
    TriggerEvent('UDText:show', 'error', 'This is a Error message.')
end)

RegisterCommand("testnotify2", function()
    TriggerEvent('UDText:show', 'warning', 'This is a Warning message.')
end)

RegisterCommand("testnotify3", function()
    TriggerEvent('UDText:show', 'info', 'This is a Info message.')
end)
