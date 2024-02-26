ESX = exports["es_extended"]:getSharedObject()
local night = false
local thermal = false

function ToggleVision(visionType)
    local player = PlayerPedId()
    
    if visionType == "night" then
        night = not night
        loadAnimDict("mp_masks@standard_car@ds@")
        TaskPlayAnim(player, "mp_masks@standard_car@ds@", "put_on_mask", 2.0, 2.0, 800, 51, 0, false, false, false)
        Wait(800)
        SetNightvision(true)
        if night then
            SetNightvision(false)
        end
    elseif visionType == "thermal" then
        thermal = not thermal
        loadAnimDict("mp_masks@standard_car@ds@")
        TaskPlayAnim(player, "mp_masks@standard_car@ds@", "put_on_mask", 2.0, 2.0, 800, 51, 0, false, false, false)
        Wait(800)
        SetSeethrough(true)
        if thermal then
            SetSeethrough(false)
        end
    end
end

function loadAnimDict(dict)
    while not HasAnimDictLoaded(dict) do
        RequestAnimDict(dict)
        Wait(5)
    end
end

RegisterNetEvent('q:nv:toggle')
AddEventHandler('q:nv:toggle', function(t)
    ToggleVision(t)
end)
