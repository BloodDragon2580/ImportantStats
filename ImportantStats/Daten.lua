-- Daten.lua
local addonName, IS = ...

-- Initialisierung für charakterspezifische Config
if not IS_Config then IS_Config = { selected = {} } end

-- Stat-Prioritäten Daten (nach SpecID sortiert)
local data = {
    -- 62 - Mage: Arcane
    [62] = {
        {"Intellect > Mastery > Versatility > Critical Strike > Haste"},
    },
    -- 63 - Mage: Fire
    [63] = {
        {"Intellect > Haste > Mastery > Versatility > Critical Strike"},
    },
    -- 64 - Mage: Frost
    [64] = {
        {"Intellect > Mastery > Critical Strike > Haste > Versatility"},
    },

    -- 65 - Paladin: Holy
    [65] = {
        {"Intellect > Mastery > Haste > Critical Strike > Versatility", "Raiding = Hearld of the Sum"},
        {"Intellect > Mastery > Critical Strike > Haste > Versatility", "Raiding - Lightsmith"},
        {"Intellect > Haste > Critical Strike > Versatility > Mastery", "Mythic+"},
    },
    -- 66 - Paladin: Protection
    [66] = {
        {"Strength > Haste > Mastery > Versatility = Critical Strike", "Templar"},
        {"Strength > Haste > Critical Strike > Mastery = Versatility", "Lightsmith"},
    },
    -- 70 - Paladin: Retribution
    [70] = {
        {"Strength > Mastery = Haste > Critical Strike > Versatility"},
    },

    -- 71 - Warrior: Arms
    [71] = {
        {"Strength > Critical Strike > Haste > Mastery > Versatility"},
    },
    -- 72 - Warrior: Fury
    [72] = {
        {"Strength > Mastery > Haste > Versatility > Critical Strike"},
    },
    -- 73 - Warrior: Protection
    [73] = {
        {"Strength > Haste > Critical Strike = Versatility > Mastery"},
    },

    -- 102 - Druid: Balance
    [102] = {
        {"Intellect > Mastery > Haste > Versatility > Critical Strike"},
    },
    -- 103 - Druid: Feral
    [103] = {
        {"Agility > Mastery > Critical Strike = Haste > Versatility", "Druid of the Claw"},
        {"Agility > Mastery > Haste > Critical Strike > Versatility", "Wildstalker"},
    },
    -- 104 - Druid: Guardian
    [104] = {
        {"Agility > Haste > Versatility > Mastery > Critical Strike"},
    },
    -- 105 - Druid: Restoration
    [105] = {
        {"Intellect > Haste = Mastery > Versatility > Critical Strike", "Raiding"},
        {"Intellect > Haste > Versatility > Critical Strike > Mastery", "Mythic+"},
    },

    -- 250 - Death Knight: Blood
    [250] = {
        {"Item Level > Critical Strike = Versatility = Mastery > Haste", "Deathbringer"},
        {"Item Level > Haste > Critical Strike = Versatility = Mastery", "San'layn"},
    },
    -- 251 - Death Knight: Frost
    [251] = {
        {"Mastery > Critical Strike > Haste > Versatility"},
    },
    -- 252 - Death Knight: Unholy
    [252] = {
        {"Mastery > Critical Strike > Haste > Versatility"},
    },

    -- 253 - Hunter: Beast Mastery
    [253] = {
        {"Agility > Mastery > Critical Strike > Haste > Versatility"},
    },
    -- 254 - Hunter: Marksmanship
    [254] = {
        {"Agility > Critical Strike > Mastery > Haste > Versatility"},
    },
    -- 255 - Hunter: Survival
    [255] = {
        {"Agility > Mastery > Critical Strike > Haste > Versatility"},
    },

    -- 256 - Priest: Discipline
    [256] = {
        {"Intellect > Haste > Critical Strike > Mastery > Versatility"},
    },
    -- 257 - Priest: Holy
    [257] = {
        {"Intellect > Critical Strike > Mastery = Versatility > Haste", "Raiding"},
        {"Intellect > Critical Strike > Haste = Versatility > Mastery", "Mythic+"},
    },
    -- 258 - Priest: Shadow
    [258] = {
        {"Intellect > Haste > Mastery > Critical Strike > Versatility"},
    },

    -- 259 - Rogue: Assassination
    [259] = {
        {"Agility > Critical Strike = Haste > Mastery > Versatility"},
    },
    -- 260 - Rogue: Outlaw
    [260] = {
        {"Agility > Critical Strike > Haste > Versatility > Mastery"},
    },
    -- 261 - Rogue: Subtlety
    [261] = {
        {"Agility > Haste (up to 700) > Mastery > Critical Strike > Haste (over 700) > Versatility"},
    },

    -- 262 - Shaman: Elemental
    [262] = {
        {"Intellect > Mastery > Haste = Versatility > Critical Strike"},
    },
    -- 263 - Shaman: Enhancement
    [263] = {
        {"Agility > Haste > Mastery = Critical Strike > Versatility", "Stormbringer"},
        {"Agility > Mastery > Haste > Critical Strike > Versatility", "Totemic"},
    },
    -- 264 - Shaman: Restoration
    [264] = {
        {"Intellect > Critical Strike = Versatility > Haste = Mastery"},
	},

    -- 265 - Warlock: Affliction
    [265] = {
        {"Intellect > Haste = Critical Strike > Mastery > Versatility"},
    },
    -- 266 - Warlock: Demonology
    [266] = {
        {"Intellect > Haste = Critical Strike > Mastery > Versatility"},
    },
    -- 267 - Warlock: Destruction
    [267] = {
        {"Haste = Critical Strike > Intellect > Mastery > Versatility"},
    },

    -- 268 - Monk: Brewmaster
    [268] = {
        {"Agility > Versatility = Mastery = Critical Strike > Haste", "Defensive"},
        {"Agility > Critical Strike > Mastery > Versatility > Haste", "Offensive"},
	},

    -- 269 - Monk: Windwalker
    [269] = {
        {"Agility > Critical Strike > Haste > Mastery > Versatility"},
    },
    -- 270 - Monk: Mistweaver
    [270] = {
        {"Intellect > Haste > Critical Strike > Versatility > Mastery", "Raiding"},
        {"Intellect > Haste > Critical Strike >= Versatility > Mastery", "Mythic+"},
    },

    -- 577 - Demon Hunter: Havoc
    [577] = {
        {"Agility > Critical Strike > Mastery > Haste > Versatility"},
    },
    -- 581 - Demon Hunter: Vengeance
    [581] = {
        {"Agility > Haste > Critical Strike = Versatility > Mastery"},
    },
    -- 1480 - Demon Hunter: Devourer
    [1480] = {
        {"Intellect > Haste > Mastery > Critical Strike > Versatility", "Annihilator"},
        {"Intellect > Mastery > Haste > Critical Strike > Versatility", "Void-Scarred"},
    },

    -- 1467 - Evoker: Devastation
    [1467] = {
        {"Intellect > Haste > Critical Strike > Mastery > Versatility"},
    },
    -- 1468 - Evoker: Preservation
    [1468] = {
        {"Intellect > Mastery > Haste > Critical Strike > Versatility"},
    },
    -- 1473 - Evoker: Augmentation
    [1473] = {
        {"Intellect > Critical Strike > Haste > Mastery = Versatility", "Chronowarden"},
        {"Intellect > Haste > Critical Strike > Mastery = Versatility", "Scalecommander"},
    },
}

-- Funktion zur Lokalisierung der Stats
local function LocalizeSP(text)
    text = string.gsub(text, "Haste", STAT_HASTE)
    text = string.gsub(text, "Critical Strike", STAT_CRITICAL_STRIKE)
    text = string.gsub(text, "Mastery", STAT_MASTERY)
    text = string.gsub(text, "Versatility", STAT_VERSATILITY)
    text = string.gsub(text, "Armor", STAT_ARMOR)
    text = string.gsub(text, "Stamina", ITEM_MOD_STAMINA_SHORT)
    text = string.gsub(text, "Strength", SPEC_FRAME_PRIMARY_STAT_STRENGTH)
    text = string.gsub(text, "Agility", SPEC_FRAME_PRIMARY_STAT_AGILITY)
    text = string.gsub(text, "Intellect", SPEC_FRAME_PRIMARY_STAT_INTELLECT)
    text = string.gsub(text, "Weapon Damage", DAMAGE_TOOLTIP)
    text = string.gsub(text, "Item Level", STAT_AVERAGE_ITEM_LEVEL)
    return text
end

-- Funktionen zum Abrufen der Stat-Prioritäten
function IS:GetSPText(specID)
    if not data[specID] then
        return IS.L["No Specialization Selected"]
    end
    local selected = IS_Config.selected[specID] or 1
    selected = math.max(1, math.min(selected, #data[specID]))
    return LocalizeSP(data[specID][selected][1])
end

function IS:GetSPDesc(specID)
    local desc = {}
    if data[specID] then
        for _, t in pairs(data[specID]) do
            table.insert(desc, {t[2] or IS.L["General"]})
        end
    end
    return desc
end

function IS:GetSP(specID)
    local sp = {}
    for _, t in pairs(data[specID] or {}) do
        if t[2] then
            tinsert(sp, t[2] .. ": " .. LocalizeSP(t[1]))
        else
            tinsert(sp, LocalizeSP(t[1]))
        end
    end
    return sp
end
