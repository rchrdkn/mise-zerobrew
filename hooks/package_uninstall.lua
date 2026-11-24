local cmd = require("cmd")

function PLUGIN:PackageUninstall(ctx)
    for _, pkg in ipairs(ctx.packages) do
        cmd.exec('zb uninstall $EXTENSION', { env = { EXTENSION = pkg.name } })
    end
end
