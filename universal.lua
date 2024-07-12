--// Defined

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/violin-suzutsuki/LinoriaLib/main/Library.lua"))()
local GameId = game.GameId

--// Tables

local Games = {
    { name = "Bad Business", gameid = 1168263273, link = "https://raw.githubusercontent.com/Funceyyy/medusatech-BB/main/bad%20buisness" },
    { name = "Phantom Forces", gameid = 113491250, link = "https://raw.githubusercontent.com/Funceyyy/medusatech/main/medusatech", rewrite = "https://raw.githubusercontent.com/Funceyyy/medusatech/main/medusatech" },
    { name = "Phantom Forces Test Place", gameid = 115272207, link = "https://raw.githubusercontent.com/dementiaenjoyer/homohack/main/homohack.lua" },
    { name = "Arsenal", gameid = 286090429, link = "https://raw.githubusercontent.com/Funceyyy/medusatech-arsenal/main/arsenal.lua" },
}

function Fetch(URL)
    return game:HttpGet(tostring(URL))
end

--// Rest

for i, Supported in Games do
    if Supported.gameid == GameId then
        Library:Notify("FR" .. Supported.name .. ", now loading script...", 5)

        if Supported.name:find("Phantom Forces") and getgenv()["load_rewrite"] then
            loadstring(Fetch(Supported.rewrite))()
            return "loaded rewrite"
        end

        loadstring(Fetch(Supported.link))()
        return "loaded regular"
    end
end

Library:Notify("you are in arsenal loading arsenal script...")
loadstring(Fetch("https://raw.githubusercontent.com/Funceyyy/medusatech-arsenal/main/arsenal.lua"))()
