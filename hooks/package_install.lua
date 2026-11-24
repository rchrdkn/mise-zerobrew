local cmd = require("cmd")

function PLUGIN:PackageInstall(ctx)
    for _, pkg in ipairs(ctx.packages) do
        local spec = pkg.version and (pkg.name .. "@" .. pkg.version) or pkg.name
        if ctx.dry_run then
            print("would install " .. spec)
        else
            cmd.exec('zb install $EXTENSION', { env = { EXTENSION = spec } })
        end
    end
end
