local job

if UseESX then
ESX = nil
TriggerEvent("esx:getSharedObject", function(obj)
    ESX = obj
    job = ESX.GetPlayerData().job.name
end)
else
    job = cl_GetPlayerGroupWithoutESX()
end

RegisterCommand("postNewEvent", function (src, args)

    if args[1] and args[2] then
        if  DKl0ms0xP_({
            bool = true,
            playerJob = job,
        }) then
       local eventData = {
           title = args[1],
           MsgContent = args[2]
       }
       if args[3] then
           eventData.ImgSRC = args[3]
       end
        TriggerServerEvent("postNewAnnoucement", eventData, UseESX, sv_GetPlayerGroupWithoutESX())
    end
end
end, false)


RegisterNetEvent("cl_postNewAnnoucement")
AddEventHandler("cl_postNewAnnoucement", function(tblData)
    SendNUIMessage({
        title = tblData.title,
        MsgContent = tblData.MsgContent,
        imgSrc = tblData.ImgSRC
    })
end)