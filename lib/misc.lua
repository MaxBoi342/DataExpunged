SMODS.DynaTextEffect {
    key = "hash",
    func = function (dynatext, index, letter)
        letter.letter = love.graphics.newText(dynatext.font.FONT, "#")
    end
}