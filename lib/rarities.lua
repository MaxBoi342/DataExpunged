--Common - Safe / Ticonderoga
--Uncommon - Euclid / Cerunnos
--Rare - Keter / Archon
--Epic/Epic Analog - Thaumiel / Apollyon

--Legendary - 001 Proposal

if (SMODS.Mods["Cryptid"] or {}).can_load then
    SCP.thaumiel_rarity = "cry_epic"

elseif (SMODS.Mods["vallkarri"] or {}).can_load then
    SCP.thaumiel_rarity = "valk_renowned"
else    
    SCP.thaumiel_rarity = "scp_thaumiel"
    SMODS.Rarity {
        key = 'thaumiel',
        badge_colour = G.C.SCP_THAUMIEL,
        pools = { ["Joker"] = true },
        default_weight = 0.01,
        --approx 3x more common than a cryptid epic joker
    }
end