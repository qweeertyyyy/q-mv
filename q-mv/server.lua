ESX = exports["es_extended"]:getSharedObject()

-- Nightvision item
ESX.RegisterUsableItem('nightvision', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    if xPlayer then
        TriggerClientEvent('q:nv:toggle', source, "night")
    end
end)

-- Thermalvision item
ESX.RegisterUsableItem('thermalvision', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    if xPlayer then
        TriggerClientEvent('q:nv:toggle', source, "thermal")
    end
end)

