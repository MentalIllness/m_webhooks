local WebhookURL = ''

RegisterNetEvent('m_webhooks:server:SendWebHook')
AddEventHandler('m_webhooks:server:SendWebHook', function(title, description)
	if WebhookURL ~= '' and title ~= nil and description ~= nil then

	sendWebHookMessage(title, description)

	else
		print('One of the following vars is equals to nil ')
		print('WebhookURL - ' .. WebhookURL)
		print('Title Message - ' .. title)
		print('Description Message - ' .. description)
	end
end)


function sendWebHookMessage(title, description)
	local embed = nil

	if Config.TitlePrefix then

		    embed = {
			{
				["color"] = Config.WebHookColor,
				["author"] = {
				["icon_url"] = Config.IconURL,
				["name"] = Config.WebHookName,
				},
				["title"] = Config.TitlePrefixMessage .. '\n ' .. title,
				["description"] = '**' .. description ..  '**',
				["footer"] = {
					["text"] = os.date(Config.DateFormat),
				}
			}
		}

	else
		    embed = {
			{
				["color"] = Config.WebHookColor,
				["author"] = {
				["icon_url"] = Config.IconURL,
				["name"] = Config.WebHookName,
				},
				["title"] = title,
				["description"] = '**' .. description ..  '**',
				["footer"] = {
					["text"] = os.date(Config.DateFormat),
				}
			}
		}

	end

	PerformHttpRequest(WebhookURL, function(err, text, headers) end, 'POST', json.encode({username = Config.WebHookName, embeds = embed}), {['Content-Type'] = 'application/json'})
end