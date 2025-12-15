SMODS.Joker {
    key = "1546",
    pos = {x = 4, y = 0},
    atlas = "customjokers",
    config = { extra = { joker_slots = 1 } },
    classification = "safe",
    cost = 6,
    rarity = 1,
    config = {
        extra = {
            mult = 1,
            chips = 2
        }
    },
    loc_vars = function(self, q, card)
        return {
            vars = {
                card.ability.extra.mult,
                card.ability.extra.chips
            }
        }
    end,
    calculate = function(self, card, context)
        if context.before then
            for i, v in pairs(context.scoring_hand) do
                if v:get_id() < 6 or v:get_id() == 14 or not SCP.downside_active(card) then
                    card_eval_status_text(
                        v,
                        "extra",
                        nil,
                        nil,
                        nil,
                        { message = localize("k_upgrade_ex")}
                    )
                    if pseudorandom("j_scp_1546") < 0.5 then
                        v.ability.perma_mult = v.ability.perma_mult + card.ability.extra.mult
                    else
                        v.ability.bonus = v.ability.bonus + card.ability.extra.chips
                    end
                end
            end
            return nil, true
        end
    end
}