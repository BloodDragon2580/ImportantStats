-- Daten.lua
local addonName, IS = ...

-- Initialisierung für charakterspezifische Config
if not IS_Config then IS_Config = { selected = {} } end

-- Stat-Prioritäten Daten (nach SpecID sortiert)
local data = {
    -- 62 - Mage: Arcane
    [62] = {
        {"Intellect > Mastery > Critical Strike > Versatility > Haste"},
    },
    -- 63 - Mage: Fire
    [63] = {
        {"Intellect > Haste > Mastery > Critical Strike > Versatility"},
    },
    -- 64 - Mage: Frost
    [64] = {
        {"Intellect > Mastery > Critical Strike > Versatility > Haste"},
    },

    -- 65 - Paladin: Holy
    [65] = {
        {"Intellect > Haste > Mastery > Critical Strike > Versatility", "Raiding"},
        {"Intellect > Critical Strike > Haste > Mastery > Versatility", "Raiding - Avenging Crusade"},
        {"Intellect > Haste > Versatility > Critical Strike > Mastery", "Mythic+"},
    },
    -- 66 - Paladin: Protection
    [66] = {
        {"Strength > Haste > Mastery > Versatility = Critical Strike"},
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
        {"Agility > Mastery > Critical Strike > Haste > Versatility"},
    },
    -- 104 - Druid: Guardian
    [104] = {
        {"Agility > Haste > Versatility > Mastery > Critical Strike"},
    },
    -- 105 - Druid: Restoration
    [105] = {
        {"Intellect > Haste = Mastery > Versatility > Critical Strike", "General Healing"},
        {"Intellect > Haste > Versatility > Critical Strike > Mastery", "Dungeon Damage Dealing"},
    },

    -- 250 - Death Knight: Blood
    [250] = {
        {"Item Level > Critical Strike = Versatility = Mastery > Haste", "Deathbringer"},
        {"Item Level > Haste > Critical Strike = Versatility = Mastery", "San'layn"},
    },
    -- 251 - Death Knight: Frost
    [251] = {
        {"Strength > Critical Strike > Mastery > Haste > Versatility"},
    },
    -- 252 - Death Knight: Unholy
    [252] = {
        {"Strength > Mastery > Critical Strike > Haste > Versatility"},
    },

    -- 253 - Hunter: Beast Mastery
    [253] = {
        {"Agility > Critical Strike > Haste > Versatility > Mastery"},
    },
    -- 254 - Hunter: Marksmanship
    [254] = {
        {"Agility > Critical Strike to 54% > Mastery > Versatility > Haste"},
    },
    -- 255 - Hunter: Survival
    [255] = {
        {"Agility > Mastery > Critical Strike > Haste > Versatility"},
    },

    -- 256 - Priest: Discipline
    [256] = {
        {"Intellect > Haste > Mastery > Critical Strike > Versatility", "Voidweaver"},
        {"Intellect > Haste (20%) > Critical Strike = Mastery > Haste (>20%) > Versatility", "Oracle"},
    },
    -- 257 - Priest: Holy
    [257] = {
        {"Intellect > Critical Strike > Versatility = Mastery > Haste"},
    },
    -- 258 - Priest: Shadow
    [258] = {
        {"Intellect > Mastery > Haste > Critical Strike > Versatility", "Single-Target"},
        {"Intellect > Haste > Mastery > Critical Strike > Versatility", "Multi-Target"},
    },

    -- 259 - Rogue: Assassination
    [259] = {
        {"Agility > Critical Strike > Mastery > Haste > Versatility"},
    },
    -- 260 - Rogue: Outlaw
    [260] = {
        {"Agility > Versatility > Haste > Critical Strike > Mastery"},
    },
    -- 261 - Rogue: Subtlety
    [261] = {
        {"Agility > Haste > Critical Strike > Mastery > Versatility"},
    },

    -- 262 - Shaman: Elemental
    [262] = {
        {"Intellect > Mastery > Haste = Versatility > Critical Strike"},
    },
    -- 263 - Shaman: Enhancement
    [263] = {
        {"Agility > Mastery > Haste > Critical Strike > Versatility"},
    },
    -- 264 - Shaman: Restoration
    [264] = {
        {"Intellect > Haste = Critical Strike > Versatility > Mastery"},
    },

    -- 265 - Warlock: Affliction
    [265] = {
        {"Intellect > Mastery = Haste > Critical Strike > Versatility"},
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
        {"Agility = Armor > Versatility = Critical Strike = Mastery > Haste"},
    },
    -- 269 - Monk: Windwalker
    [269] = {
        {"Agility > Critical Strike > Haste > Mastery > Versatility"},
    },
    -- 270 - Monk: Mistweaver
    [270] = {
        {"Intellect > Haste > Critical Strike > Versatility = Mastery", "Raiding"},
        {"Intellect > Haste > Critical Strike >= Versatility > Mastery", "Mythic+"},
    },

    -- 577 - Demon Hunter: Havoc
    [577] = {
        {"Agility > Critical Strike > Haste > Versatility > Mastery"},
    },
    -- 581 - Demon Hunter: Vengeance
    [581] = {
        {"Agility > Haste > Versatility = Critical Strike > Mastery"},
    },
    -- 1480 - Demon Hunter: Devourer
    [1480] = {
        {"Intellect > Mastery > Haste > Critical Strike > Versatility"},
    },

    -- 1467 - Evoker: Devastation
    [1467] = {
        {"Intellect > Haste > Critical Strike > Mastery > Versatility"},
    },
    -- 1468 - Evoker: Preservation
    [1468] = {
        {"Intellect > Mastery > Critical Strike > Haste > Versatility", "Raiding"},
        {"Intellect > Critical Strike > Haste > Versatility > Mastery", "Mythic+"},
    },
    -- 1473 - Evoker: Augmentation
    [1473] = {
        {"Intellect > Mastery > Critical Strike > Haste > Versatility", "Chronowarden"},
        {"Intellect > Critical Strike > Haste > Mastery > Versatility", "Scalecommander"},
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
