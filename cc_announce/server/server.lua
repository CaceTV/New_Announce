RegisterServerEvent("announce_mp:mannounce")
AddEventHandler('announce_mp:mannounce', function(param)
    print("^7[^1Medic Rundruf^7]^0" .. param)
    TriggerClientEvent('chatMessage', -1, "^7[^1Medic Rundruf^7]^0", {0,0,0}, param)

end)

RegisterServerEvent('announce_mp:pannounce')
AddEventHandler('announce_mp:pannounce', function(param)
    print("^7[^5Polizei Rundruf^7]^0" .. param)
    TriggerClientEvent('chatMessage', -1, "^7[^5Polizei Rundruf^7]^0", {0,0,0}, param)
end)

RegisterServerEvent('announce_mp:msannounce')
AddEventHandler('announce_mp:msannounce', function(param)
    print('^7[^3Casino informiert^7]^0' .. param)
    TriggerClientEvent('chatMessage', -1, "^7[^3Casino informiert^7]^0", {0,0,0}, param)
end)


