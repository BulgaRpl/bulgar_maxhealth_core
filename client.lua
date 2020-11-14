local healthtank = false
local staminatank = false
local zezwalajhealth =  false
local zezwalajstamina = false

RegisterNetEvent("vorp:SelectedCharacter")
AddEventHandler("vorp:SelectedCharacter", function(charid)
	Citizen.Wait(2000)
	zezwalajhealth = true
	ExecuteCommand('healthtank')
	Citizen.Wait(2000)
	zezwalajstamina = true
	ExecuteCommand('staminatank')
end)

RegisterCommand('healthtank', function(source, args, rawCommand)
	if zezwalajhealth then
		if not healthtank then
			healthtankk()
		else
			print('Command Blocked!')
		end
	else
		print('Command Blocked!')
	end
end)

RegisterCommand('staminatank', function(source, args, rawCommand)
	if zezwalajstamina then
		if not staminatank then
			staminatankk()
		else
			print('Command Blocked!')
		end
	else
		print('Command Blocked!')
	end
end)

function healthtankk()
	healthtank = true
	print('RedM Broken Native?! Ignore This Error!!!')
	Citizen.InvokeNative("0xCB5D11F9508A928D", 1, a2, a3, GetHashKey("UPGRADE_HEALTH_TANK_1"), 1084182731, 1, 752097756)
end

function staminatankk()
	staminatank = true
	print('RedM Broken Native?! Ignore This Error!!!')
	Citizen.InvokeNative("0xCB5D11F9508A928D", 1, a2, a3, GetHashKey("UPGRADE_STAMINA_TANK_1"), 1084182731, 2, 752097756)
end