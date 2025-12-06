SCP = SMODS.current_mod

SMODS.load_file("lib/utils.lua")()
SMODS.load_file("lib/colours.lua")()
SMODS.load_file("lib/rarities.lua")()

local tbl= {
    lib = {
        "misc",
        "take_ownership",
    },
    items = {
        jokers = {
            proposals = {
                "code_name_wjs",
                "code_name_lily"
            }
        }
    }
}
SCP.load_table(tbl)
