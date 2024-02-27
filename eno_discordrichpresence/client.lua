local appid = 'YOUR APP ID' 
local image = 'logo'
local wait = 15000 -- nicht Anfassen :)

CreateThread(function()
    while true do
        ESX.TriggerServerCallback('masora_core:getDiscordInfos', function(cb)
            SetDiscordAppId(appid)
            SetDiscordRichPresenceAsset(image)
            SetDiscordRichPresenceAssetSmall(image)
            SetDiscordRichPresenceAssetText('TEXT 1 (Server Nmae)')
            SetDiscordRichPresenceAssetSmallText('.gg/...')
            SetRichPresence("Verbundene Spieler: "..(cb.online + 25).."/500 \n"..GetPlayerName(PlayerId()) .." | ID: "..GetPlayerServerId(PlayerId()).. "")
            SetDiscordRichPresenceAction(0, "Discord!", "https://discord.gg/...")
            SetDiscordRichPresenceAction(1, "FiveM!", "cfx.re/join/...")
        end)
        Wait(wait)
    end
end)
