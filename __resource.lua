description "vrp_admin_ids"

dependency "vrp"

client_scripts {
    "@vrp/lib/utils.lua",
	"client.lua"
}

server_scripts {
    "@vrp/lib/utils.lua",
	"server.lua"
}
