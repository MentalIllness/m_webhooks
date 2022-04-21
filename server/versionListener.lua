-- COPY-PASTED BOOORING VERSIOIN LISTENER

-- DON'T TOUCH IT X_X

AddEventHandler('onResourceStart', function(m_webhooks)
    if (GetCurrentResourceName() ~= 'm_webhooks') then
        print("Don't try to copy my script tho :(")
      return
    end

    if Config.NewVersionNotify then
        function versionListener(err, gitVersion, headers)
            currentVersion = LoadResourceFile(GetCurrentResourceName(), "version")

            if currentVersion ~= gitVersion and tonumber(currentVersion) < tonumber(gitVersion) then

                print("----------------------------------------------------------------------------------------")
                print("")                        
                print("███╗   ███╗        ██╗    ██╗███████╗██████╗ ██╗  ██╗ ██████╗  ██████╗ ██╗  ██╗███████╗  ")
                print("████╗ ████║        ██║    ██║██╔════╝██╔══██╗██║  ██║██╔═══██╗██╔═══██╗██║ ██╔╝██╔════╝  ")
                print("██╔████╔██║        ██║ █╗ ██║█████╗  ██████╔╝███████║██║   ██║██║   ██║█████╔╝ ███████╗  ")
                print("██║╚██╔╝██║        ██║███╗██║██╔══╝  ██╔══██╗██╔══██║██║   ██║██║   ██║██╔═██╗ ╚════██║  ")
                print("██║ ╚═╝ ██║███████╗╚███╔███╔╝███████╗██████╔╝██║  ██║╚██████╔╝╚██████╔╝██║  ██╗███████║  ")
                print("╚═╝     ╚═╝╚══════╝ ╚══╝╚══╝ ╚══════╝╚═════╝ ╚═╝  ╚═╝ ╚═════╝  ╚═════╝ ╚═╝  ╚═╝╚══════╝  ")                                                               
                print("")
                print("                        ^1 Author: Mental Illness#0515^0")
                print("                        ^1   YOUR VERSION IS OUTDATED")
                print("                        ^1   INSTALLED VERSION: " .. currentVersion)
                print("                        ^1   NEWEST VERSION: " .. gitVersion)
                print("----------------------------------------------------------------------------------------")
            else
                print("----------------------------------------------------------------------------------------")
                print("")                        
                print("███╗   ███╗        ██╗    ██╗███████╗██████╗ ██╗  ██╗ ██████╗  ██████╗ ██╗  ██╗███████╗  ")
                print("████╗ ████║        ██║    ██║██╔════╝██╔══██╗██║  ██║██╔═══██╗██╔═══██╗██║ ██╔╝██╔════╝  ")
                print("██╔████╔██║        ██║ █╗ ██║█████╗  ██████╔╝███████║██║   ██║██║   ██║█████╔╝ ███████╗  ")
                print("██║╚██╔╝██║        ██║███╗██║██╔══╝  ██╔══██╗██╔══██║██║   ██║██║   ██║██╔═██╗ ╚════██║  ")
                print("██║ ╚═╝ ██║███████╗╚███╔███╔╝███████╗██████╔╝██║  ██║╚██████╔╝╚██████╔╝██║  ██╗███████║  ")
                print("╚═╝     ╚═╝╚══════╝ ╚══╝╚══╝ ╚══════╝╚═════╝ ╚═╝  ╚═╝ ╚═════╝  ╚═════╝ ╚═╝  ╚═╝╚══════╝  ")                                                               
                print("")
                print("                        ^1 Author: Mental Illness#0515^0")
                print("                        ^1  YOUR VERSION IS UP TO DATE")
                print("----------------------------------------------------------------------------------------")
            end
        end
         PerformHttpRequest("https://raw.githubusercontent.com/MentalIllness/m_webhooks/main/version", versionListener, "GET")
    end
end)