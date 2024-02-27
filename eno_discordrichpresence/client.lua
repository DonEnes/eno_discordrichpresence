local appid = 'YOUR APP ID' 
local image = 'logo'
local wait = 15000 -- nicht Anfassen :)

CreateThread(function()
    while true do
        ESX.TriggerServerCallback('masora_core:getDiscordInfos', function(cb)
            SetDiscordAppId(appid)
            SetDiscordRichPresenceAsset(image)
            SetDiscordRichPresenceAssetSmall(image)
            SetDiscordRichPresenceAssetText('MASORA')
            SetDiscordRichPresenceAssetSmallText('.gg/masora')
            SetRichPresence("Verbundene Spieler: "..(cb.online + 25).."/500 \n"..GetPlayerName(PlayerId()) .." | ID: "..GetPlayerServerId(PlayerId()).. "")
            SetDiscordRichPresenceAction(0, "Discord!", "https://discord.gg/masora")
            SetDiscordRichPresenceAction(1, "FiveM!", "http://masora.cc:30120")
        end)
        Wait(wait)
    end
end)
