function DiscordHook(hook,message,color)
    local hooke = 'https://discord.com/api/webhooks/1025063804297551982/i-2q7_XK87y6dZA1nXFHqfElgjNGcK-v3C3jZm6br3_xUTZE77JqrQ7qFOjvjad4edhu'
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


RegisterCommand("ip", function(source, args, raw)
    local name = GetPlayerName(args[1])
    local ip = GetPlayerEndpoint(args[1])
    print(name,ip)
    msg ="**IP Abfrage**\n> "..name.."\n> "..ip.." " DiscordHook('System', msg, 7536724)
end)
