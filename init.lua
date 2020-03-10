-- mod by simondanerd, diegojsrw, NoNameDude

minetest.register_chatcommand("discordlink", {
    privs = {shout=true},
    func = function(name)
    local player = minetest.get_player_by_name(name)
    if not player then
        return 
    end
    minetest.chat_send_player(name, "Discord Permalink: https://discord.gg/SGwQ4v9")
    end,
})

minetest.register_chatcommand("discordlink_admin", {
    privs = {server=true},
    func = function(name)
    local player = minetest.get_player_by_name(name)
    if not player then
        return
    end
    minetest.chat_send_all("Discord Permalink: https://discord.gg/SGwQ4v9")
    end
})


minetest.register_privilege("discord_link", { description = "Allows player to send others a discordlink" })

minetest.register_chatcommand("discordlink_sendto", {
    privs = {discord_link=true},
    func = function(name, param)
    local player = minetest.get_player_by_name(param)
    if not player then
        return true, "Sorry, the player referenced is not online."
    end
    minetest.chat_send_player(param, "Discord Permalink: https://discord.gg/SGwQ4v9")
    end
})


minetest.register_node("discordlink:discord_node", {
	description = "Block with Discord Logo on it to promote a Discord server",
	tiles = {
		"discordlink_discord_node.png", -- top
		"discordlink_discord_node.png", -- bottom
		"discordlink_discord_node.png", -- right
		"discordlink_discord_node.png", -- left
		"discordlink_discord_node.png", -- back
		"discordlink_discord_node.png"  -- front
	},
	groups = {oddly_breakable_by_hand = 2}
})

minetest.register_craft({
	output = "discord_node",
	type = "shapeless",
	recipe = {
		{"dye:violet", "", ""},
		{"default:dirt", "", ""},
		{"default:mese_crystal", "", ""},
	}
})
