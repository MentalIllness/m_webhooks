Config = {}
Config.NewVersionNotify = true -- Get notified if there is a new version. You should leave this. :)


Config.WebhookURL = '' -- Webhook URL, check my GitHub if you don't know how to get it ( realised that there is no sense to put it in server.lua )

Config.WebHookName = 'Test Webhook' -- The name of the WebHook

Config.WebHookColor = '65352' -- You can choose color from here: ( MUST BE DECIMAL COLOR CODE ) https://www.mathsisfun.com/hexadecimal-decimal-colors.html

Config.Prefix = {
    TitlePrefix = true, -- Set this to true if you want to have a prefix before the title message. Set it to false if you don't want :)
    TitlePrefixMessage = 'YOUR PREFIX MESSAGE', -- Message Before The Title Text ( WONT WORK IF Config.TitlePrefix is false )
}

Config.Join = {
    PlayerJoinLog = true, -- Recive a log when someone is joining to your server
    PlayerJoinWebhook = '', -- Webhook URL for Join log
    PlayerJoinTitle = 'Player Join Log', -- Title Message ( Wont work if Config.PlayerJoinLog = false )
    PlayerJoinMessage = ' Joined to the server ✔️', -- Message when player join ( Wont work if Config.PlayerJoinLog = false )
}

Config.DateFormat = '%d/%m/%Y [%X]' -- Don't touch this if you don't know what are you doing X_X