if (GetLocale() ~= "deDE") then return end
local myName, me = ...
local L = me.L


L[myName] = "|cff0088ffImportantStats|cff808080: |r"
--Haste = Tempo
--Versatility = Vielseitigkeit
--Critical Strike = Kritischer Trefferwert
--Mastery = Meisterschaft
--Strength = Stärke
--Agility = Beweglichkeit
--Intellect = Intelligenz
--Spell Power = Zaubermacht
--Survivability = Überleben
--Weapon Damage = Waffen Schaden

--DEMONHUNTERHavoc
L["DEMONHUNTERHavoc"] = "Kritischer Trefferwert = Meisterschaft > Vielseitigkeit > Tempo > Beweglichkeit"
--DEMONHUNTERVengeance
L["DEMONHUNTERVengeance"] = "Beweglichkeit > Tempo > Kritischer Trefferwert = Meisterschaft > Vielseitigkeit"

--WARRIORArms
L["WARRIORArms"] = "Stärke > Kritischer Trefferwert > Tempo > Meisterschaft > Vielseitigkeit"
--WARRIORFury
L["WARRIORFury"] = "Stärke > Meisterschaft > Tempo > Vielseitigkeit > Kritischer Trefferwert"
--WARRIORProtection
L["WARRIORProtection"] = "Stärke > Tempo > Kritischer Trefferwert = Vielseitigkeit > Meisterschaft"

--PALADINHoly
L["PALADINHoly"] = "Raid: Intelligenz > Tempo > Meisterschaft > Vielseitigkeit \n Myth+: Intelligenz > Tempo > Vielseitigkeit > Kritischer Trefferwert > Meisterschaft"
--PALADINProtection
L["PALADINProtection"] = "Stärke > Tempo ≥ Meisterschaft ≥ Vielseitigkeit > Kritischer Trefferwert"
--PALADINRetribution
L["PALADINRetribution"] = "Stärke > Meisterschaft > Kritischer Trefferwert = Tempo > Vielseitigkeit"

--HUNTERBeastMastery
L["HUNTERBeastMastery"] = "Beweglichkeit > Kritischer Trefferwert = Tempo > Meisterschaft > Vielseitigkeit"
--HUNTERMarksmanship
L["HUNTERMarksmanship"] = "Beweglichkeit > Kritischer Trefferwert > Meisterschaft > Tempo > Vielseitigkeit"
--HUNTERSurvival
L["HUNTERSurvival"] = "Beweglichkeit > Meisterschaft > Tempo > Kritischer Trefferwert > Vielseitigkeit"

--ROGUEAssassination
L["ROGUEAssassination"] = "Beweglichkeit > Kritischer Trefferwert > Meisterschaft > Tempo > Vielseitigkeit"
--ROGUEOutlaw
L["ROGUEOutlaw"] = "Beweglichkeit > Vielseitigkeit > Tempo > Kritischer Trefferwert > Meisterschaft"
--ROGUESubtlety
L["ROGUESubtlety"] = "Beweglichkeit > Meisterschaft > Vielseitigkeit > Kritischer Trefferwert > Tempo"

--PRIESTDiscipline
L["PRIESTDiscipline"] = "Intelligenz > Tempo (20%) > Kritischer Trefferwert = Meisterschaft > Tempo (>20%) > Vielseitigkeit"
--PRIESTHoly
L["PRIESTHoly"] = "Myth+: Intelligenz > Kritischer Trefferwert = Tempo > Vielseitigkeit > Meisterschaft \n Raid: Intelligenz > Kritischer Trefferwert = Meisterschaft > Vielseitigkeit >= Tempo"
--PRIESTShadow
L["PRIESTShadow"] = "Intelligenz > Tempo > Meisterschaft > Kritischer Trefferwert > Vielseitigkeit"

--SHAMANElemental
L["SHAMANElemental"] = "Intelligenz > Tempo = Meisterschaft > Vielseitigkeit = Kritischer Trefferwert"
--SHAMANEnhancement
L["SHAMANEnhancement"] = "Meisterschaft > Tempo > Kritischer Trefferwert > Vielseitigkeit > Beweglichkeit"
--SHAMANRestoration
L["SHAMANRestoration"] = "Intelligenz > Kritischer Trefferwert > Vielseitigkeit > Tempo = Meisterschaft"

--MAGEArcane
L["MAGEArcane"] = "Intelligenz > Tempo > Vielseitigkeit > Meisterschaft > Kritischer Trefferwert"
--MAGEFire
L["MAGEFire"] = "Intelligenz > Tempo >> Vielseitigkeit > Meisterschaft > Kritischer Trefferwert"
--MAGEFrost
L["MAGEFrost"] = "Intelligenz > Tempo > Kritischer Trefferwert (33.34%) > Vielseitigkeit > Meisterschaft"

--WARLOCKAffliction
L["WARLOCKAffliction"] = "Intelligenz > Meisterschaft = Kritischer Trefferwert > Tempo > Vielseitigkeit"
--WARLOCKDemonology
L["WARLOCKDemonology"] = "Intelligenz > Tempo = Kritischer Trefferwert = Vielseitigkeit > Meisterschaft"
--WARLOCKDestruction
L["WARLOCKDestruction"] = "Tempo = Kritischer Trefferwert > Intelligenz > Meisterschaft > Vielseitigkeit"

--DRUIDBalance
L["DRUIDBalance"] = "Intelligenz > Meisterschaft > Tempo > Vielseitigkeit > Kritischer Trefferwert"
--DRUIDFeral
L["DRUIDFeral"] = "Meisterschaft = Kritischer Trefferwert > Vielseitigkeit > Tempo > Beweglichkeit"
--DRUIDGuardian
L["DRUIDGuardian"] = "Überleben: Beweglichkeit > Tempo > Vielseitigkeit > Meisterschaft > Kritischer Trefferwert \n DPS: Beweglichkeit > Vielseitigkeit = Tempo > Kritischer Trefferwert = Meisterschaft"
--DRUIDRestoration
L["DRUIDRestoration"] = "Raid: Intelligenz > Tempo = Meisterschaft > Vielseitigkeit > Kritischer Trefferwert \n Dungeon Healing: Intelligenz > Meisterschaft = Tempo > Vielseitigkeit > Kritischer Trefferwert \n Dungeon Damage Dealing: Intelligenz > Tempo > Vielseitigkeit > Kritischer Trefferwert > Meisterschaft"

--MONKBrewmaster
L["MONKBrewmaster"] = "Beweglichkeit = Armor > Vielseitigkeit = Meisterschaft = Kritischer Trefferwert > Tempo"
--MONKMistweaver
L["MONKMistweaver"] = "Myth+: Intelligenz > Tempo > Kritischer Trefferwert >= Meisterschaft > Vielseitigkeit \n Raid: Intelligenz > Tempo > Kritischer Trefferwert > Vielseitigkeit = Meisterschaft"
--MONKWindwalker
L["MONKWindwalker"] = "Beweglichkeit > Meisterschaft = Tempo > Vielseitigkeit = Kritischer Trefferwert"

--DEATHKNIGHTBlood
L["DEATHKNIGHTBlood"] = "Deathbringer: Item Level > Tempo (5%) > Kritischer Trefferwert = Vielseitigkeit = Meisterschaft \n San'layn: Item Level > Tempo > Kritischer Trefferwert = Vielseitigkeit = Meisterschaft"
--DEATHKNIGHTFrost
L["DEATHKNIGHTFrost"] = "Kritischer Trefferwert > Meisterschaft > Tempo > Vielseitigkeit"
--DEATHKNIGHTUnholy
L["DEATHKNIGHTUnholy"] = "Stärke > Meisterschaft > Tempo > Vielseitigkeit > Kritischer Trefferwert"

--EVOKERDevastation
L["EVOKERDevastation"] = "Intelligenz > Kritischer Trefferwert >= Vielseitigkeit = Meisterschaft = Tempo"
--EVOKERPreservation
L["EVOKERPreservation"] = "Myth+: Intelligenz > Kritischer Trefferwert > Tempo > Vielseitigkeit > Meisterschaft \n Raid: Intelligenz > Meisterschaft > Kritischer Trefferwert > Tempo > Vielseitigkeit"
--EVOKERAugmentation
L["EVOKERAugmentation"] = "Intelligenz > Tempo to 15-20% > Meisterschaft > Kritischer Trefferwert > Vielseitigkeit"

--Optionen
L["ImportantStats"] = "ImportantStats"
L["Custom priority strings"] = "Benutzerdefinierte Prioritätsstrings"
L["You can put your own custom priority strings here"] = "Hier können Sie Ihre eigenen benutzerdefinierten Prioritätsstrings eingeben"

-- Warrior
L["Arms"] = "Waffen"
L["Fury"] = "Wut"
L["Protection"] = "Schutz"

-- Paladin
L["Holy"] = "Heilig"
L["Retribution"] = "Rache"
L["Protection"] = "Schutz"

-- Hunter
L["BeastMastery"] = "Tierherrschaft"
L["Marksmanship"] = "Treffsicherheit"
L["Survival"] = "Überleben"

-- Rogue
L["Assassination"] = "Meucheln"
L["Outlaw"] = "Gesetzlosigkeit"
L["Subtlety"] = "Subtilität"

-- Priest
L["Discipline"] = "Disziplin"
L["Holy"] = "Heilig"
L["Shadow"] = "Schatten"

-- Shaman
L["Elemental"] = "Elementar"
L["Enhancement"] = "Verstärkung"
L["Restoration"] = "Wiederherstellung"

-- Mage
L["Arcane"] = "Arkan"
L["Fire"] = "Feuer"
L["Frost"] = "Frost"

-- Warlock
L["Affliction"] = "Gebrechlichkeit"
L["Demonology"] = "Dämonologie"
L["Destruction"] = "Zerstörung"

-- Druid
L["Balance"] = "Gleichgewicht"
L["Feral"] = "Wildheit"
L["Guardian"] = "Wächter"
L["Restoration"] = "Wiederherstellung"

-- Monk
L["Brewmaster"] = "Brau-Meister"
L["Mistweaver"] = "Nebelwirker"
L["Windwalker"] = "Windläufer"

-- Death Knight
L["Blood"] = "Blut"
L["Frost"] = "Frost"
L["Unholy"] = "Unheilig"

-- Demon Hunter
L["Havoc"] = "Verwüstung"
L["Vengeance"] = "Rachsucht"

-- Evoker
L["Devastation"] = "Verwüstung"
L["Preservation"] = "Erhaltung"
L["Augmentation"] = "Verstärkung"
