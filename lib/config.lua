SCP.ui_config = {
    bg_colour = adjust_alpha(G.C.BLACK, 0.95),
    outline_colour = G.C.SCP_DARK_BLACK,
    author_colour = G.C.RED,
    back_colour = G.C.BLACK,
    tab_button_colour = G.C.BLACK,
    colour = G.C.SCP_DARK_BLACK
}

local oldfunc = Game.main_menu
Game.main_menu = function(change_context)
    local ret = oldfunc(change_context)
    G.SPLASH_BACK:define_draw_steps({
        {
            shader = "splash",
            send = {
                { name = "time", ref_table = G.TIMERS, ref_value = "REAL_SHADER" },
                { name = "vort_speed", val = 0.4 },
                { name = "colour_1", ref_table = G.C, ref_value = "BLACK" },
                { name = "colour_2", ref_table = G.C, ref_value = "SCP_DARKER_BLACK" },
            },
        },
    })
    return ret
end