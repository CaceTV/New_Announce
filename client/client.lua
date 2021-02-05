ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
	TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end

	while ESX.GetPlayerData().job == nil do
		Citizen.Wait(100)
	end

   PlayerData = ESX.GetPlayerData()
end)

RegisterCommand('mannounce', function(source, args)
    if PlayerData.job.name == "ambulance" then
    TriggerServerEvent('announce_mp:mannounce', table.concat(args, " "))
    else
       ESX.ShowNotification('~r~Keine Berechtigung!')
    end
end)

RegisterCommand('pannounce', function(source, args)
    if PlayerData.job.name == "police" then
    TriggerServerEvent('announce_mp:pannounce', table.concat(args, " "))
     else
        ESX.ShowNotification('~r~Keine Berechtigung!')
     end
end)

RegisterCommand('msannounce', function(source, args)
   if PlayerData.job.name == "casino" then
      TriggerServerEvent('announce_mp:msannounce', table.concat(args, " "))
   else
      ESX.ShowNotification('~r~Keine Berechtigung!')
   end
end)
   