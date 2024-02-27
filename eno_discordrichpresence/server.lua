ESX.RegisterServerCallback('eno:getDiscordInfos', function(source, cb)
    cb({ online = GetNumPlayerIndices(), max = GetConvar('sv_maxclients', 500) })
end)
