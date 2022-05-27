ESX = nil 
local admins = {
    'steam:110000119bd3a84',
    'steam:000000000000000'
}
---
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
function isAdmin(player)
    local allowed = false
    for i,id in ipairs(admins) do
        for x,pid in ipairs(GetPlayerIdentifiers(player)) do
            if string.lower(pid) == string.lower(id) then
                allowed = true
            end
        end
    end
    return allowed
end
RegisterServerEvent('souki_pedmenu:checkadmin')
AddEventHandler('souki_pedmenu:checkadmin', function()
	local id = source
	if isAdmin(id) then
		TriggerClientEvent("souki_pedmenu:checkid", source)
	end
end)
--by Souki | https://discord.gg/g4Kcnhahwj