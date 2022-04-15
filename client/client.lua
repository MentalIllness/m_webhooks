function SendWebHook(title, description)
    TriggerServerEvent('m_webhooks:server:SendWebHook', title, description)
end

RegisterNetEvent('m_webhooks:client:SendWebHook')
AddEventHandler('m_webhooks:client:SendWebHook', function(title, description)

	TriggerServerEvent('m_webhooks:server:SendWebHook', title, description)
end)