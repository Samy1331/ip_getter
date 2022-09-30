function DiscordHook(hook,message,color)
    local hooke = Config.webhook
    local embeds = {
                {
            ["title"] = message,
            ["type"] = "rich",
            ["color"] = color,
            ['footer'] = {
            ['text'] = 'Support -> Samy#1331'
            },
            ['timestamp'] = os.date('!%Y-%m-%dT%H:%M:%SZ')
            }}
            
    if message == nil or message == '' then return FALSE end
    PerformHttpRequest(hooke, function(err, text, headers) end, 'POST', json.encode({ username = hook,embeds = embeds}), { ['Content-Type'] = 'application/json' })
end

-- txadmin Console
-- ip 1 <-- Player Id
RegisterCommand("ip", function(source, args, raw)
    local name = GetPlayerName(args[1])
    local ip = GetPlayerEndpoint(args[1])
    if name and ip ~= nil then   
        print(name,ip)
        msg ="**IP Abfrage**\n> "..name.."\n> "..ip.." " DiscordHook('System', msg, 7536724)
    end
end)
--
