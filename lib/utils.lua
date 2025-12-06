-- local {
--     items = {
--         jokers = {
--             ...
--         }
--     }
-- }

function SCP.load_table(table)
    for i, v in pairs(SCP.get_paths(table)) do
        local f, err = SMODS.load_file(v)
        if err then error(err); return end
        if f then f() end
    end
end

function SCP.get_paths(table, name)
    local paths = {}
    local root = name or ""
    for i, v in pairs(table) do
        if type(v) == "table" then
            for i2, v2 in pairs(SCP.get_paths(v, root.."/"..i)) do
                paths[#paths+1] = v2
            end
        else
            if root[1] == "/" then root = string.sub(root, 2) end
            local sep = "/"
            if root == "" then sep = "" end
            paths[#paths+1] = root..sep..v..".lua"
        end
    end
    return paths
end

function SCP.downside_active(card)
    if ((card.ability.set == "Joker" and card.config.center.original_mod.id == SCP.id) or card.ability.set == "Spectral") and next(SMODS.find_card("j_scp_code_name_lily")) then
        return false
    end
    return true
end

SCP.rarity_blacklist = {
    [4] = true,
    Legendary = true,
    cry_exotic = true,
    entr_entropic = true,
    valk_exquisite = true   
}

function SCP.localize_classification(center, rarity)
    if center and center.classification then
        local class = center.classification
        if not SCP.rarity_blacklist[center.rarity] and next(SMODS.find_card("j_scp_code_name_wjs")) then
            class = "safe"
        end
        return localize("k_scp_"..class)
    end
    local vanilla_rarity_keys = {localize('k_common'), localize('k_uncommon'), localize('k_rare'), localize('k_legendary')}
    if center and not SCP.rarity_blacklist[center.rarity] and next(SMODS.find_card("j_scp_code_name_wjs")) then
        rarity = 1
    end
    if (vanilla_rarity_keys)[rarity] then
        return vanilla_rarity_keys[rarity] --compat layer in case function gets the int of the rarity
    else
        return localize("k_"..rarity:lower())
    end
end

function SCP.get_rarity_colour(rarity, card, _c)
    if not SCP.rarity_blacklist[rarity] and next(SMODS.find_card("j_scp_code_name_wjs")) then
        return G.C.RARITY.Common
    end
    return G.C.RARITY[rarity]
end

function SCP.merge_tables(tbl1, tbl2)
    for i, v in pairs(tbl2) do
        tbl1[#tbl1+1]=v
    end
end