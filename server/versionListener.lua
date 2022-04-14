-- COPY-PASTED BOOORING VERSIOIN LISTENER

-- DON'T TOUCH IT X_X

Citizen.CreateThread(function()
    if Config.NewVersionNotify then
    
        function versionListener(err, gitVersion, headers)
            currentVersion = LoadResourceFile(GetCurrentResourceName(), "version")

            if currentVersion ~= gitVersion and tonumber(currentVersion) < tonumber(gitVersion) then
             print("\n M_WEBHOOKS is outdated, please update it as soon as possible!".. "\n Your Version: " .. currentVersion .. "\n Newest Version: " .. gitVersion)
            end
        end
         PerformHttpRequest("https://raw.githubusercontent.com/MentalIllness/m_webhooks/main/version", versionListener, "GET")
    end
end)