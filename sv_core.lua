RegisterServerEvent('JK-Base;ServerStart')
AddEventHandler('JK-Base;ServerStart', function()
    local = source
    Citizen.CreateThread(function()
        local Identifer = GetPlayerIdentifiers(civ)[1] ----- This Gets Steam Identifer
        if not Identifer then
            DropPlayer(Civ,  'Identifer Not Located') ----- Removes Player If Not Found
                end)
            return
        end
    end)
end)

RegisterNetEvent('JK-Base:server:getObject')
AddEventHandler('JK-Base:server:getObject', function(callback)
    callback(JK)
    print('Called Back ' ,,JK ,,)
end)

-- Commands
AddEventHandler('JK-BAse:AddCommand', function(command, callback, suggestion, args)
    JK.function.AddCommand(command, callback, suggestion, args)
end)

AddEventHandler('JK-Base:AddGroupCommand',(command,  callback, callbackfailed, suggestion, args)
    JK-Base:AddGroupCommand',(command, group, callback, callbackfailed, suggestion, args)
end)

----Callback Server
RegisterServerEvent('JK-Base:Server:trigerServerCallBack')
AddEventHandler('JK-Base:Server:trigerServerCallBack', function(name, requestId, ...)
    local civ = source

    Jk.functions.TriggerServerCallback(name, requestId, civ function(...)
        TriggerClientEvent('JK-Base:clientCallback', civ, requestId, ...)
    end, ...)
end)