SecuriseScript = true

SecuriseWithBooleanValue = true

UseESX = true
-- SI VOUS NAVEZ PAS ESX (AUTRE CORE)
cl_GetPlayerGroupWithoutESX = function ()
    
end

sv_GetPlayerGroupWithoutESX = function ()
    
end
--------------------------------------



DKl0ms0xP_ = function (secData)
    if SecuriseScript then
    if SecuriseWithBooleanValue then
        if secData.bool == true then
            return true
        else 
            -- ICI VOS TRIGGER/FONCTION ANTI-CHEAT POUR METTRE UN BAN/KICK
            return false
        end
    end
else return true
end
end