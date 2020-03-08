local color = minetest.settings:get("color")

if color == nil then
    color = "red"
end


minetest.register_chatcommand("discordlink", {
    privs = {shout=true},
    func = function(name)
    local player = minetest.get_player_by_name(name)
    if not player then
        return 
    end
    minetest.chat_send_player(name, minetest.colorize(color, "Discord Permalink: https://discord.gg/SGwQ4v9"))
    end,
})

minetest.register_chatcommand("discordlink_admin", {
    privs = {server=true},
    func = function(name)
    local player = minetest.get_player_by_name(name)
    if not player then
        return
    end
    minetest.chat_send_all(minetest.colorize(color,"Discord Permalink: https://discord.gg/SGwQ4v9"))
    end
})
