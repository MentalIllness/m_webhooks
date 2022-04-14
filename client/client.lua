function SendWebHook(title, description)
    TriggerEvent('m_webhooks:client:SendWebHook', title, description) -- There is a client event for a security reason ( if you don't want cheaters spam webhooks to your server )
end

RegisterNetEvent('m_webhooks:client:SendWebHook')
AddEventHandler('m_webhooks:client:SendWebHook', function(title, description)

	TriggerServerEvent('m_webhooks:server:SendWebHook', title, description)
end)