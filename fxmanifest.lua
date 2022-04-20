fx_version 'adamant'
game 'gta5'

author 'Mental Illness#0515'
description 'Simple Discord Webhook Script With Export'
version '2.0'

client_scripts { 'client/*.lua' }

server_scripts { 'server/*.lua' }

shared_scripts { 
    'shared/*.lua', 
    '@es_extended/imports.lua'
}

export 'SendWebHook'