QBCore = nil
local acik = false

TriggerEvent("QBCore:GetObject", function (obj) RLCore = obj end)



RegisterNetEvent("booleanuodate")
AddEventHandler("booleanuodate", function (bool)
    acik = bool
end)

--RLCore.Functions.CreateUseableItem("bodycam" , function(source, item)
QBCore.Functions.CreateUseableItem = function(item, cb)
    QBCore.UseableItems[bodycam] = cb
end    
    --local _src = source
    --TriggerClientEvent("mbl-body:openBoy", _src, item, tonumber(os.date("%H")), tonumber(os.date("%M")), tonumber(os.date("%S")))
--end
TriggerClientEvent("mbl-body:openBoy", cb, item, tonumber(os.date("%H")), tonumber(os.date("%M")), tonumber(os.date("%S")))

CreateThread(function ()
    while acik do
        Citizen.Wait(1000)
        local src = source
        TriggerClientEvent("bodycam:time", src, tonumber(os.date("%H")), tonumber(os.date("%M")), tonumber(os.date("%S")))
    end
end)