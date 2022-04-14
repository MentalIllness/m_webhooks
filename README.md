# Usage:

> Client Side: exports['m_webhooks']:SendWebHook("Title", "Description")

> Server Side: TriggerClientEvent('m_webhooks:client:SendWebHook', source, "Title", "Description")



# SET-UP

> Step 1: Click on channel settings

![image](https://user-images.githubusercontent.com/30401731/163452832-3165bfc8-95d1-457e-a514-44e295cbd4bb.png)

> Step 2: Click on "Integrations"

![image](https://user-images.githubusercontent.com/30401731/163453097-40a00d8c-6f6d-4346-9d46-b9d94372fa9f.png)

> Step 3: Click on "Create Webhook"

![image](https://user-images.githubusercontent.com/30401731/163455472-b9bfa513-613d-4646-8a31-8891c0ed4945.png)

> Step 4: Click on "Copy Webhook URL"

![image](https://user-images.githubusercontent.com/30401731/163455595-4d69450c-7c8c-4712-9ea5-c0018ccbe3e5.png)

> Step 5: Go to m_webhooks/server.lua first line and change local WebhookURL = 'Your Webhook URL'

![image](https://user-images.githubusercontent.com/30401731/163455792-27364b88-40c4-4ec2-b703-21349b78b605.png)

#Version 2: COMING SOON WITH MANY NEW THINGS
