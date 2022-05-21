
RegisterNetEvent("postNewAnnoucement")
AddEventHandler("postNewAnnoucement", function(annoucement, useESX, noESXFunc)
    if useESX then
        TriggerEvent("esx:getSharedObject", function(obj) ESX = obj end)Wait(100)
    elseif noESXFunc and useESX == false then 
        noESXFunc()
    end
        
    local sourcePlayer = source
    local xPlayer = ESX.GetPlayerFromId(sourcePlayer)
    if xPlayer.getGroup() == "superadmin" or xPlayer.getGroup() == "_dev" then
        TriggerClientEvent("cl_postNewAnnoucement", -1, annoucement)
    end
    
end)

print("Credit :  4z' Mohebieus#0001 ^1MAKE SURE IF YOU HAVE ENABLED THE SECURITY SCRIPT SECURE THE SCRIPT WITH THE GOOD TRIGGER/FONCTION^0.")