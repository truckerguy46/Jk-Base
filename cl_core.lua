function JK.Base.Start(self)
    Citizen.CreateThread(function()
        while true do
            if NetworkSessionStarted() then
                TriggerEvent(JK-Base-Start)
                TriggerServerEvent(JK-Base-ServerStart)
                break
            end
    end)
end
JK.Base.Start(self)
RegisterNetEvent('JK-Base:clientgetObject')
AddEventHandler('JK-Base:client:getObject', function(callback)
    callback(JK)
    print('Called Back ' ,,JK ,,)
end)