local WaitTime = 30000 -- Wann soll der Status immer Updaten? (in MS eingeben) 
local appid = 'YOUR CLIENT ID' -- Client ID: https://discordapp.com/developers/applications/
local asset = 'logobig' -- Gehe zu: https://discordapp.com/developers/applications/APPID/rich-presence/assets / https://media.discordapp.net/attachments/943618214506680321/1079132360769028276/image.png
local assetsmall = 'logosmall' -- Gehe zu: https://discordapp.com/developers/applications/APPID/rich-presence/assets / https://media.discordapp.net/attachments/943618214506680321/1079132520752357529/image.png

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(WaitTime)

        local id = GetPlayerServerId(PlayerId())
        local name = GetPlayerName(PlayerId())
        local playerCount = #GetActivePlayers()

        SetDiscordAppId(appid)
        SetDiscordRichPresenceAsset(asset)
        SetDiscordRichPresenceAssetText('DEIN TEXT 1') -- Preview: https://media.discordapp.net/attachments/943618214506680321/1079132360769028276/image.png
        SetDiscordRichPresenceAssetSmall(assetsmall)
        SetDiscordRichPresenceAssetSmallText('DEIN TEXT 2') -- Preview: https://media.discordapp.net/attachments/943618214506680321/1079132520752357529/image.png

        SetDiscordRichPresenceAction(0, "Discord", "https://discord.gg/435")
        SetDiscordRichPresenceAction(1, "Verbinden", "https://cfx.re/join/WHATEVER")

        SetRichPresence(playerCount.." Spieler in der nähe | ID: "..id) -- Name: "..name.." (Lasse den Steam Namen anzeigen)
    end
end)

--[[
    By Eno#0003
]]
