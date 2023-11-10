if (GetLocale() ~= "enUS") then return end
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
L["DEMONHUNTERHavoc"] = "Single Target: Agility > Critical Strike > Mastery > Haste > Versatility \n Multiple Target: Agility > Critical Strike > Mastery > Versatility > Haste"
--DEMONHUNTERVengeance
L["DEMONHUNTERVengeance"] = "Agility > Critical Strike > Haste > Versatility > Mastery"

--WARRIORArms
L["WARRIORArms"] = "Strength > Critical Strike > Haste > Mastery > Versatility"
--WARRIORFury
L["WARRIORFury"] = "Strength > Haste > Mastery > Critical Strike > Versatility"
--WARRIORProtection
L["WARRIORProtection"] = "Strength > Haste > Versatility ≥ Critical Strike > Mastery"

--PALADINHoly
L["PALADINHoly"] = "Raid: Intellect > Mastery = Critical Strike > Versatility > Haste \n Myth+: Intellect > Critical Strike = Haste > Versatility > Mastery"
--PALADINProtection
L["PALADINProtection"] = "Strength > Haste ≥ Mastery ≥ Versatility > Critical Strike"
--PALADINRetribution
L["PALADINRetribution"] = "Strength > Haste > Versatility = Critical Strike > Mastery"

--HUNTERBeast Mastery
L["HUNTERBeast Mastery"] = "Haste > Critical Strike > Mastery > Haste = Critical Strike > Versatility"
--HUNTERMarksmanship
L["HUNTERMarksmanship"] = "Haste > Critical Strike > Mastery > Versatility > Haste = Critical Strike"
--HUNTERSurvival
L["HUNTERSurvival"] = "Haste > Critical Strike > Versatility > Haste = Critical Strike > Mastery"

--ROGUEAssassination
L["ROGUEAssassination"] = "Critical Strike > Mastery > Versatility > Haste"
--ROGUEOutlaw
L["ROGUEOutlaw"] = "Versatility > Critical Strike > Mastery > Haste"
--ROGUESubtlety
L["ROGUESubtlety"] = "Critical Strike > Mastery > Versatility > Haste"

--PRIESTDiscipline
L["PRIESTDiscipline"] = "Intellect > Haste > Critical Strike > Versatility > Mastery"
--PRIESTHoly
L["PRIESTHoly"] = "Myth+: Intellect > Critical Strike = Haste > Versatility > Mastery \n Raid: Intellect > Mastery = Critical Strike > Versatility > Haste"
--PRIESTShadow
L["PRIESTShadow"] = "Intellect > Haste > Mastery > Critical Strike > Versatility"

--SHAMANElemental
L["SHAMANElemental"] = "Single Target: Intellect > Mastery > Haste > Versatility > Critical Strike \n Multiple Target: Intellect > Haste > Critical Strike > Versatility > Mastery"
--SHAMANEnhancement
L["SHAMANEnhancement"] = "Agility > Mastery > Haste > Critical Strike > Versatility"
--SHAMANRestoration
L["SHAMANRestoration"] = "Intellect > Versatility = Critical Strike > Haste = Mastery"

--MAGEArcane
L["MAGEArcane"] = "Intellect > Critical Strike > Mastery > Haste > Versatility"
--MAGEFire
L["MAGEFire"] = "Intellect > Haste > Critical Strike > Versatility > Mastery"
--MAGEFrost
L["MAGEFrost"] = "Intellect > Mastery > Haste > Critical Strike (to 33.34%) > Versatility"

--WARLOCKAffliction
L["WARLOCKAffliction"] = "Intellect > Haste > Mastery > Versatility = Critical Strike"
--WARLOCKDemonology
L["WARLOCKDemonology"] = "Intellect > Haste > Critical Strike = Versatility > Mastery"
--WARLOCKDestruction
L["WARLOCKDestruction"] = "Intellect > Haste > Critical Strike = Versatility > Mastery"

--DRUIDBalance
L["DRUIDBalance"] = "Intellect > Mastery > Haste > Critical Strike > Versatility"
--DRUIDFeral
L["DRUIDFeral"] = "Agility > Mastery > Critical Strike > Haste > Versatility"
--DRUIDGuardian
L["DRUIDGuardian"] = "Survivability: Agility > Haste > Versatility > Mastery > Critical Strike \n DPS: Agility > Versatility = Haste > Critical Strike = Mastery"
--DRUIDRestoration
L["DRUIDRestoration"] = "Raid: Intellect > Haste > Mastery > Critical Strike = Versatility \n Dungeon Healing: Intellect > Mastery = Haste > Versatility > Critical Strike \n Dungeon Damage Dealing: Intellect > Haste > Versatility > Critical Strike > Mastery"

--MONKBrewmaster
L["MONKBrewmaster"] = "Defensive: Agility > Versatility = Mastery = Critical Strike > Haste \n Offensive: Agility > Versatility = Critical Strike > Mastery > Haste"
--MONKMistweaver
L["MONKMistweaver"] = "Myth+: Intellect > Haste > Mastery > Versatility > Critical Strike \n Raid: Intellect > Haste > Critical Strike > Versatility > Mastery"
--MONKWindwalker
L["MONKWindwalker"] = "Weapon Damage > Agility > Versatility = Critical Strike > Mastery > Haste"

--DEATHKNIGHTBlood
L["DEATHKNIGHTBlood"] = "Item Level > Haste = Critical Strike = Versatility = Mastery"
--DEATHKNIGHTFrost
L["DEATHKNIGHTFrost"] = "Critical Strike > Mastery > Haste > Versatility"
--DEATHKNIGHTUnholy
L["DEATHKNIGHTUnholy"] = "Single Target: Mastery > Haste > Critical Strike > Versatility \n Multiple Target: Mastery > Critical Strike > Haste > Versatility"

--EVOKERDevastation
L["EVOKERDevastation"] = "Intellect > Mastery > Haste > Critical Strike > Versatility"
--EVOKERPreservation
L["EVOKERPreservation"] = "Myth+: Intellect > Critical Strike > Haste > Versatility > Mastery \n Raid: Intellect > Mastery > Critical Strike > Versatility > Haste"
