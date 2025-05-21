lib.versionCheck('tayonnnn/ignite_core')

local startupErrors, errorMessage

if not lib.checkDependency('ox_lib', '3.20.0', true) then
    startupErrors, errorMessage = true, 'ox_lib version 3.20.0 or higher is required'
elseif not lib.checkDependency('oxmysql', '1.10.0', true) then
    startupErrors, errorMessage = true, 'oxmysql version 1.10.0 or higher is required'
elseif GetConvarInt('onesync_enableInfinity', 0) ~= 1 then
    startupErrors, errorMessage = true,
        'OneSync Infinity is not enabled. You can do so in txAdmin settings or add +set onesync on to your server startup command line'
end


if startupErrors then
    lib.print.error('Startup errors detected, shutting down server...')
    ExecuteCommand('quit immediately')
    for _ = 1, 100 do
        lib.print.error(errorMessage)
    end
    error(errorMessage)
end
lib.print.info('All dependencies are up to date and OneSync Infinity is enabled.')
lib.print.info('Starting Ignite Core...')
