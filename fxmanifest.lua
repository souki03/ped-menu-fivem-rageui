fx_version 'adamant'
game 'gta5'
--rageui
client_scripts {
    "src/RMenu.lua",
    "src/menu/RageUI.lua",
    "src/menu/Menu.lua",
    "src/menu/MenuController.lua",
    "src/components/*.lua",
    "src/menu/elements/*.lua",
    "src/menu/items/*.lua",
    "src/menu/panels/*.lua",
    "src/menu/panels/*.lua",
    "src/menu/windows/*.lua",
    '@es_extended/locale.lua',
}
--lua
client_script"lua/cl.lua"
server_scripts {
	'lua/sv.lua',
}
dependency 'souki_menuped'
--by Souki | https://discord.gg/g4Kcnhahwj