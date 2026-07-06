--[[TODO
metadata:
    display_name redundant?
    badge_colour, badge_text_colour, display name: all related to mod badge

    add description
    for the icon:
    , "icon_path": "icon.png"

    add more authors

]]

-- Sprite.atlas = G.ASSET_ATLAS["panga_card_centers"]

SMODS.Atlas({
    key = "card_centers",
    path = "card_centers_placeholder.png",
    px = 71,
    py = 95
})
SMODS.Atlas({
    key = "card_fronts",
    path = "card_fronts_placeholder.png",
    px = 71,
    py = 95,
    prefix_config = {key = false},
})

local suits = {"Spades", "Hearts", "Clubs", "Diamonds"}

for _, current_suit in ipairs(suits) do
    SMODS.DeckSkin{
        key = current_suit .. "pangaea",
        suit = current_suit,
        loc_txt = { ['en-us'] = "Pangaea" },
        palettes = {{
                key = 'pangaea',
                ranks = {'2', '3', '4', '5', '6', '7', '8', '9', '10', 'Jack', 'Queen', 'King', 'Ace'},
                display_ranks = {'Jack', 'Queen', 'King'},
                atlas = 'card_fronts',
                loc_txt = {['en-us'] = "Pangaea"},
            }
        }
    }
end
