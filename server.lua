RLCore = nil
local acik = false

TriggerEvent("RLCore:GetObject", function (obj) RLCore = obj end)



RegisterNetEvent("booleanuodate")
AddEventHandler("booleanuodate", function (bool)
    acik = bool
end)

RLCore.Functions.CreateUseableItem = function(item, cb)
    QBCore.UseableItems[bodycam] = cb
end
    TriggerClientEvent("mbl-body:openBoy", item, cb, tonumber(os.date("%H")), tonumber(os.date("%M")), tonumber(os.date("%S")))

CreateThread(function ()
    while acik do
        Citizen.Wait(1000)
        local src = source
        TriggerClientEvent("bodycam:time", src, tonumber(os.date("%H")), tonumber(os.date("%M")), tonumber(os.date("%S")))
    end
end)