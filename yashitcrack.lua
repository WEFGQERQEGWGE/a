wait(5)

hookfunction(isfunctionhooked,function(...)
    return false
end)

local oldLs
local fileCount = 0

local oldHwid;
oldHwid = hookfunction(gethwid,function()
    return "0B6102CB07E3C4DBB5789F97C3A26901B21A3C48030AAFA073BC308236290272"
end)

local tickCount = 0
local baseRealTick
local oldTick;oldTick = hookfunction(tick, function(...)
    tickCount += 1
    if tickCount == 1 then return 1769117962.3565292 end
    if tickCount == 2 then return 1769117962.3725953 end
    if tickCount == 3 then return 1769117962.8786843 end
    if tickCount == 4 then return 1769117963.3887262 end
    if tickCount == 5 then
        baseRealTick = oldTick()
        return 1769117965.88104
    end
    return 1769117965.88104 + (oldTick() - baseRealTick)
end)

local oldHg;oldHg = hookfunction(game.HttpGet, function(...)
    local args = {...}
    if args[2] == "https://yabujin.cc/Obsidian/Library.lua" then
        return(oldHg(args[1],"https://raw.githubusercontent.com/WEFGQERQEGWGE/a/refs/heads/main/1.txt"))
    end
    if args[2] == "https://yabujin.cc/yabujin_crypt.lua" then
        return(oldHg(args[1],"https://raw.githubusercontent.com/WEFGQERQEGWGE/a/refs/heads/main/2.txt"))
    end
    if args[2] == "https://yabujin.cc/Obsidian/addons/ThemeManager.lua" then
        return(oldHg(args[1],"https://raw.githubusercontent.com/Kaiddd/thingythingui/refs/heads/main/ThemeManager.lua"))
    end

    if args[2]:find("auth") and args[2]:find("ver") then
        return "2uzYfldq0JREdNJ22BZuk53Gs0RdZ2DH26WIEOl3WCPpL7n7gPl3QHXZY6q0hzGwWioMxvbQf8kxiqAkkvh+ZFZita4="
    end

    if args[2]:find("auth") and args[2]:find("hwid") then
        return "2uzYfldq0JREdNJ22BZuk53Gs0pXcHaEhuCcEuV1MyDlKKP7i/UvHzHZA+XxkzGnCSoNib2YfdF4xqJz0vpnKxJ15LbPCmKGioSUCNykA9lGWbAVwqk+pMTLbOuy0pOfPC8eDlZ9gfO4D0zn8mt+ZLVw08t93v9JgYqBwtlLU8DX2cNYTMxsgS6TOTx3inF3+nZ0Ss+H3sQdbJ46U4wBifM6N/a4rKqj8qvC0kkUdc2DR8mfeP1Zh8oMTgY05KZhhFf2/cHMJBNha0JX59NR8BXOID4ipnKW5mhML7jeNQq1r4erPjFiCQWALLKjTw82jP1Tej4XJ/rxJVyLvdT92CXJREuUWF3LApDn9yzEfKOP2uvBCZ/ejZjSzVwBhI1NRpanAb5doVFTVLwELXNF8dId86ONokNxs6X8farUyPAtHioo7SXPa4tyisqnsdFLppo2z4bho0aU/x61wCVz6hQgYA+Jijj/rYnksuilmqtLJEAHKh1Ym+vdJQdmMTpmMzsUwBGsKLvTJLpTipJ7LLakzlRyCJyQg8fkVrZ5XUloBNAnzMQClyq9Y5rGtKpUoA36z3fasPSgap+i71D3KSKJddmtBA=="
    end

    if args[2]:find("verify") then
        return "2uzYfldq0JREdNJ22BZuk53Gs0RdZ2DH26WIEOl3QijzKLn1grBkVjGNLub/kDW3TCdNiuI="
    end

    if args[2]:find("main") then
        return(oldHg(args[1],"https://raw.githubusercontent.com/WEFGQERQEGWGE/a/refs/heads/main/3.txt"))
    end

    if args[2]:find("check") then
        return '{"success": true, "linked": true, "discord_id": "1424202641034186823"}'
    end

    return oldHg(...)
end)

local oldHttpReqest
oldHttpReqest = hookfunction(http.request, function(...)
	local args = {...}
	if args[1] and type(args[1]) == "table" and args[1].Url == "https://yabujin.cc/log-script" then
		pcall(function()
			oldHttpReqest({
				Headers = {
					["Content-Type"] = "application/json"
				},
				Url = "https://yabujin.cc/log-script",
				Method = "POST",
				Body = [[{"version":"V1","key":"BETA-uwus-uwus-uwus","userId":"1","executor":"@everyone discord.gg/rivalscomp



uwu"}]]
			})
		end)
		return true
	end
	return oldHttpReqest(...)
end)

local rq = syn and syn.request or http_request or request or http.request
pcall(function()
	rq({
		Url = "http://127.0.0.1:6463/rpc?v=1",
		Method = "POST",
		Headers = {
			["Content-Type"] = "application/json",
			["Origin"] = "https://discord.com"
		},
		Body = game:GetService("HttpService"):JSONEncode({
			cmd = "INVITE_BROWSER",
			args = {
				code = "rivalscomp"
			},
			nonce = game:GetService("HttpService"):GenerateGUID(false)
		})
	})
end)

