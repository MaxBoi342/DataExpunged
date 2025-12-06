return {
    descriptions = {
        Joker = {
            j_scp_code_name_lily = {
                name = {
                    "CODE NAME: Lily",
                    "{C:red,s:0.8}The World's Gone Beautiful"
                },
                text = {
                    {
                        "{s:0.9}Item {E:scp_hash}1{s:0.8}: SCP-001",
                        "{s:0.9}Object Class{s:0.8}: Unnecessary",
                        "{s:0.9}Special Containment Procedures:",
                        "{s:0.8}SCP-001 Does not need to be contained.",
                        "{s:0.9}Description:",
                    },
                    {
                        "Removes the {C:attention}negative effects{}",
                        "of all {C:spectral}Spectral{} cards and other {C:attention}SCPs{}"
                    }
                }
            },
            j_scp_code_name_wjs = {
                name = {
                    "CODE NAME: WJS",
                    "{C:red,s:0.8}Normalcy"
                },
                text = {
                    {
                        "{s:0.9}Item {E:scp_hash}1{s:0.8}: SCP-001",
                        "{s:0.9}Object Class{s:0.8}: Non-Anomalous",
                        "{s:0.9}Special Containment Procedures:",
                        "{s:0.8}SCP-001 is kept on a dedicated server or library",
                        "{s:0.8}located in a place of the O5 Council's choosing.",
                        "{s:0.9}Description:",
                    },
                    {
                        "All {C:attention}Jokers{} are {C:blue}Common{}",
                        "{C:inactive}(Excludes {C:purple}Legendary{C:inactive} or higher)"
                    }
                }
            },
        },
        Spectral = {
            c_familiar_nodownside = {
                name = "Familiar",
                text = {
                    "Add {C:attention}#2#{} random",
                    "{C:attention}Enhanced face cards{}",
                    "to your hand"
                }
            },
            c_grim_nodownside = {
                name = "Grim",
                text = {
                    "Add {C:attention}#2#{} random",
                    "{C:attention}Enhanced Aces{}",
                    "to your hand"
                }
            },
            c_incantation_nodownside = {
                name = "Incantation",
                text = {
                    "Add {C:attention}#2#{} random",
                    "{C:attention}Enhanced numbered cards{}",
                    "to your hand"
                }
            },
            c_wraith_nodownside = {
                name = "Wraith",
                text = {
                    "Create a random",
                    "{C:red}Rare {C:attention}Joker"
                }
            },
            c_ouija_nodownside = {
                name = "Ouija",
                text = {
                    "Converts all cards",
                    "in hand into a single",
                    "random {C:attention}rank"
                }
            },
            c_ectoplasm_nodownside = {
                name = "Ectoplasm",
                text = {
                    "Add {C:dark_edition}Negative{} to",
                    "a random {C:attention}Joker{}"
                }
            },
            c_ankh_nodownside = {
                name = "Ankh",
                text = {
                    "Create a copy of a",
                    "random {C:attention}Joker",
                    "{C:inactive,s:0.8}(Removes {C:dark_edition,s:0.8}Negative {C:inactive,S:0.8}from copy)"
                }
            },
            c_hex_nodownside = {
                name = "Hex",
                text = {
                    "Add {C:dark_edition}Polychrome{} to a",
                    "random {C:attention}Joker{}"
                }
            },
        }
    },
    misc = {
        dictionary = {
            --Some of these are probably unnecessary but easier to do now than later
            k_scp_proposal = "SCP-001",
            k_scp_safe = "Safe",
            k_scp_ticonderoga = "Ticonderoga",
            k_scp_euclid = "Euclid",
            k_scp_cerunnos = "Cerunnos",
            k_scp_keter = "Keter",
            k_scp_archon = "Archon",
            k_scp_thaumiel = "Thaumiel",
            k_scp_apollyon = "Apollyon"
        }
    }
}