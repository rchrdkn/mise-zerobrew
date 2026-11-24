local cmd = require("cmd")

function PLUGIN:PackageUpgrade(ctx)
    for _, pkg in ipairs(ctx.packages) do
        if ctx.dry_run then
            print("would upgrade " .. pkg.name)
        elseif not pkg.version then
            cmd.exec('zb upgrade $EXTENSION', { env = { EXTENSION = pkg.name } })
        end
    end
end
