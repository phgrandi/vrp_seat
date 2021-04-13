
-- Creditos: @BADTRIP#0611
-----------------------------------------------------------------------------------------------------------------------------------------
-- importa os Utils do VRP
-----------------------------------------------------------------------------------------------------------------------------------------	
local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

-----------------------------------------------------------------------------------------------------------------------------------------
-- importa os Tunneis e Proxys
-----------------------------------------------------------------------------------------------------------------------------------------	
IDDclient = Tunnel.getInterface("vrp_admin_ids")
vRPclient = Tunnel.getInterface("vRP")
vRPidd = {}
Tunnel.bindInterface("vrp_admin_ids",vRPidd)
Proxy.addInterface("vrp_admin_ids",vRPidd)
vRP = Proxy.getInterface("vRP")
------------------------------------------------------
-- function
------------------------------------------------------
RegisterCommand('seat', function(source,args,rawCommand)
	if args[1] == '1' then
		TriggerClientEvent("p1", source, -1)
	elseif args[1] == '2' then
		TriggerClientEvent("p2", source, -1)
	elseif args[1] == '3' then
		TriggerClientEvent("p3", source, -1)
	elseif args[1] == '4' then
		TriggerClientEvent("p4", source, -1)
	elseif args[1] == '5' then
		TriggerClientEvent("p5", source, -1)
	elseif args[1] == '6' then
		TriggerClientEvent("p6", source, -1)
	end
end)