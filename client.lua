-----------------------------------------------------------------------------------------------------------------------------------------
-- importa os Utils do VRP
-----------------------------------------------------------------------------------------------------------------------------------------	
local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

-----------------------------------------------------------------------------------------------------------------------------------------
-- Tunnel e Proxy VRP
-----------------------------------------------------------------------------------------------------------------------------------------
vRPclient = Tunnel.getInterface("vRP")
vRP = Proxy.getInterface("vRP")


-----------------------------------------------------------------------------------------------------------------------------------------
-- Tunnel e Proxy do Resource
-----------------------------------------------------------------------------------------------------------------------------------------
vRPidd = {}
Tunnel.bindInterface("vrp_admin_ids",vRPidd)
Proxy.addInterface("vrp_admin_ids",vRPidd)
SVIDclient = Tunnel.getInterface("vrp_admin_ids")

-----------------------------------------------------------------------------------------------------------------------------------------
-- variavels de Configuração
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("p1")
AddEventHandler("p1", function()

	if not IsPedInAnyVehicle(PlayerPedId()) then
		TriggerEvent("Notify","aviso","Você não está em um carro.")
		return
	end

	if not IsVehicleSeatFree(GetVehiclePedIsIn(PlayerPedId()), -1) then
		TriggerEvent("Notify", "aviso", "O assento já está ocupado")
		return
	end

	if IsPedInAnyVehicle(PlayerPedId()) then
		SetPedIntoVehicle(PlayerPedId(), GetVehiclePedIsIn(PlayerPedId()), -1)
		TriggerEvent("Notify","aviso","Você foi pro p1")

	end
end)

RegisterNetEvent("p2")
AddEventHandler("p2", function()

	if not IsPedInAnyVehicle(PlayerPedId()) then
		TriggerEvent("Notify","aviso","Você não está em um carro.")
		return
	end

	if not IsVehicleSeatFree(GetVehiclePedIsIn(PlayerPedId()), 0) then
		TriggerEvent("Notify", "aviso", "O assento já está ocupado")
		return
	end

	if IsPedInAnyVehicle(PlayerPedId()) then
		SetPedIntoVehicle(PlayerPedId(), GetVehiclePedIsIn(PlayerPedId()), 0)
		TriggerEvent("Notify","aviso","Você foi pro p2")

	end
end)


RegisterNetEvent("p3")
AddEventHandler("p3", function()

	if not IsPedInAnyVehicle(PlayerPedId()) then
		TriggerEvent("Notify","aviso","Você não está em um carro.")
		return
	end

	if not IsVehicleSeatFree(GetVehiclePedIsIn(PlayerPedId()), 1) then
		TriggerEvent("Notify", "aviso", "O assento já está ocupado")
		return
	end

	if IsPedInAnyVehicle(PlayerPedId()) then
		SetPedIntoVehicle(PlayerPedId(), GetVehiclePedIsIn(PlayerPedId()), 1)
		TriggerEvent("Notify","aviso","Você foi pro p3")

	end
end)


RegisterNetEvent("p4")
AddEventHandler("p4", function()

	if not IsPedInAnyVehicle(PlayerPedId()) then
		TriggerEvent("Notify","aviso","Você não está em um carro.")
		return
	end

	if not IsVehicleSeatFree(GetVehiclePedIsIn(PlayerPedId()), 2) then
		TriggerEvent("Notify", "aviso", "O assento já está ocupado")
		return
	end

	if IsPedInAnyVehicle(PlayerPedId()) then
		SetPedIntoVehicle(PlayerPedId(), GetVehiclePedIsIn(PlayerPedId()), 2)
		TriggerEvent("Notify","aviso","Você foi pro p4.")

	end
end)

RegisterNetEvent("p5")
AddEventHandler("p5", function()

	if not IsPedInAnyVehicle(PlayerPedId()) then
		TriggerEvent("Notify","aviso","Você não está em um carro.")
		return
	end

	if not IsVehicleSeatFree(GetVehiclePedIsIn(PlayerPedId()), 3) then
		TriggerEvent("Notify", "aviso", "O assento já está ocupado")
		return
	end

	if IsPedInAnyVehicle(PlayerPedId()) then
		SetPedIntoVehicle(PlayerPedId(), GetVehiclePedIsIn(PlayerPedId()), 3)
		TriggerEvent("Notify","aviso","Você foi pro p5.")

	end
end)

RegisterNetEvent("p6")
AddEventHandler("p6", function()

	if not IsPedInAnyVehicle(PlayerPedId()) then
		TriggerEvent("Notify","aviso","Você não está em um carro.")
		return
	end

	if not IsVehicleSeatFree(GetVehiclePedIsIn(PlayerPedId()), 4) then
		TriggerEvent("Notify", "aviso", "O assento já está ocupado")
		return
	end

	if IsPedInAnyVehicle(PlayerPedId()) then
		SetPedIntoVehicle(PlayerPedId(), GetVehiclePedIsIn(PlayerPedId()), 4)
		TriggerEvent("Notify","aviso","Você foi pro p6.")

	end
end)

--------[ COMANDO /FPS ON & OFF ]---------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------
RegisterCommand("fps",function(source,args)
    if args[1] == "on" then
        SetTimecycleModifier("cinema")
        TriggerEvent("Notify","sucesso","Boost de fps ligado!")
    elseif args[1] == "off" then
        SetTimecycleModifier("default")
        TriggerEvent("Notify","sucesso","Boost de fps desligado!")
    end
end)

