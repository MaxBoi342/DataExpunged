SMODS.Joker {
    key = "9020",
    pos = {x = 5, y = 1},
    atlas = "customjokers",
    config = { extra = {upgrade_chance = 5, upgrade_inc = 5}},
    classification = "thaumiel",
    cost = 10,
    rarity = SCP.thaumiel_rarity,
    calculate = function(self, card, context)
        if context.end_of_round and context.main_eval then
            card.ability.extra.upgrade_chance = card.ability.extra.upgrade_chance + card.ability.extra.upgrade_inc
        end
        if context.modify_shop_card then
            if string.sub(context.card.config.center.key, 1, 1) == "j" then
                if pseudorandom('apotheosis', 0, 100) <= card.ability.extra.upgrade_chance then
                    local _rarity = (context.card.config.center.rarity) < #SMODS.ObjectTypes['Joker'].rarities and context.card.config.center.rarity + 1 or context.card.config.center.rarity
                    local _pool, _pool_key = get_current_pool('Joker', SMODS.ObjectTypes['Joker'].rarities[_rarity].key, nil, 'apotheosis')
                    local _key = pseudorandom_element(_pool, 'upgrade')
                    while (_key == "UNAVAILABLE") do
                        _key = pseudorandom_element(_pool, 'upgrade')
                    end
                    local _card = SCP.clean_swap(context.card, _key or 'j_joker', true)
                G.E_MANAGER:add_event(Event({
                    trigger = 'after',
                    blocking = false;
                    delay = 2.25,
                    func = function()
                        create_shop_card_ui(_card, 'joker', G.shop_jokers)
                        return true
                    end
                }))
                end
            end
        end
    end,
}

-- self.children.particles = Particles(0, 0, 0,0, {
--         timer_type = 'TOTAL',
--         timer = 0.025*dissolve_time,
--         scale = 0.25,
--         speed = 3,
--         lifespan = 0.7*dissolve_time,
--         attach = self,
--         colours = self.dissolve_colours,
--         fill = true
--     })