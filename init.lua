minetest.register_chatcommand("discordlink", {
    privs = {
	shout = true,
    },
    func = function(name, param)
        return true, "Discord Permalink: https://discord.gg/SGwQ4v9"
    end,
})