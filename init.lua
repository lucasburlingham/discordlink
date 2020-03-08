minetest.register_chatcommand("discordlink", {
    privs = {
	shout = true,
    },
    func = function(name, param)
        return true, "Discord Permalink: https://discord.gg/SGwQ4v9"
    end,
})

minetest.register_chatcommand("discordlink_admin", {
    privs = {
    admin = true,
    },
    func = function(name, param)
        minetest.chat_send_all("Discord Permalink: https://discord.gg/SGwQ4v9")
        return true, "Sent for all players"
    end,
})
