RegisterCommand("onduty", function(source, args, rawCommand)
    Stuff() 
end, false)


function Stuff()
    local ped = PlayerPedId()
	local name = GetPlayerName(_source)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_HATCHET"), 1000, false)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_FLASHLIGHT"), 1000, false)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_FIREEXTINGUISHER"), 1000, false)
    TriggerEvent('chatMessage', "FireFighter", { 255, 26, 71 }, name .. " IS NOW ONDUTY!")
    SetCurrentPedWeapon(ped, GetHashKey("WEAPON_UNARMED"), true)
end
