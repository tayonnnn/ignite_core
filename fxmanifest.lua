fx_version 'cerulean'
game 'gta5'

author 'tayon'
description 'Ignite Core - A modern, modular FiveM framework'
version '0.0.1'

lua54 'yes'

-- Define shared files
shared_scripts {
    '@ox_lib/init.lua', ----Dependency
    --'shared/main.lua',
    --'shared/utils.lua',
    --'shared/enums.lua',
    --'config/*.lua'
}

-- Server-side scripts
server_scripts {
    '@oxmysql/lib/MySQL.lua', ----Database library
    'sv/vcheck.lua'           ----version check
    --'sv/main.lua',
    --'sv/auth.lua',
    --'sv/database.lua',
    --'sv/events.lua',
    --'sv/players.lua'
}

-- Client-side scripts
client_scripts {
    --'cl/main.lua',
    --'cl/spawn.lua',
    --'cl/ui.lua',
    --'cl/notifications.lua'
}

-- Optional NUI integration
--ui_page 'webui/index.html'

files {
    --'webui/index.html',
    --'webui/js/*.js',
    --'webui/css/*.css',
    --'webui/fonts/*',
    --'webui/images/*'
}

-- Dependencies (optional)
dependencies {
    'oxmysql',
    'ox_lib'
}
