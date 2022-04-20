ESX = exports['es_extended']:getSharedObject()

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
    if Config.PlayerJoinLog then
        TriggerServerEvent('m_webhooks:server:Join', title, description)
    end
end)

function SendWebHook(title, description)
    TriggerServerEvent('m_webhooks:server:SendWebHook', title, description)
end

RegisterNetEvent('m_webhooks:client:SendWebHook')
AddEventHandler('m_webhooks:client:SendWebHook', function(title, description)
	TriggerServerEvent('m_webhooks:server:SendWebHook', title, description)
end)