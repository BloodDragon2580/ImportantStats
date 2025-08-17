if (GetLocale() ~= "itIT") then return end
local myName, me = ...
local L = me.L


L[myName] = "|cff0088ffImportantStats|cff808080: |r"
--Haste = Celerità
--Versatility = Versatilità
--Critical Strike = Critico
--Mastery = Maestria
--Strength = Forza
--Agility = Agilità
--Intellect = Intelletto
--Spell Power = Potenza Incantesimo
--Survivability = Sopravvivenza
--Weapon Damage = Danno Arma

--DEMONHUNTERHavoc
L["DEMONHUNTERHavoc"] = "Critico = Maestria > Celerità > Versatilità > Agilità"
--DEMONHUNTERVengeance
L["DEMONHUNTERVengeance"] = "Agilità > Celerità > Critico = Maestria > Versatilità"

--WARRIORArms
L["WARRIORArms"] = "Forza > Critico > Celerità > Maestria > Versatilità"
--WARRIORFury
L["WARRIORFury"] = "Forza > Maestria > Celerità > Versatilità > Critico"
--WARRIORProtection
L["WARRIORProtection"] = "Forza > Celerità > Critico = Versatilità > Maestria"

--PALADINHoly
L["PALADINHoly"] = "Raid: Intelletto > Celerità > Maestria > Versatilità \n Myth+: Intelletto > Celerità > Versatilità > Critico > Maestria"
--PALADINProtection
L["PALADINProtection"] = "Forza > Celerità ≥ Maestria ≥ Versatilità > Critico"
--PALADINRetribution
L["PALADINRetribution"] = "Forza > Maestria = Critico > Celerità > Versatilità"

--HUNTERBeastMastery
L["HUNTERBeastMastery"] = "Agilità > Celerità > Critico > Maestria > Versatilità"
--HUNTERMarksmanship
L["HUNTERMarksmanship"] = "Agilità > Critico > Maestria > Versatilità > Celerità"
--HUNTERSurvival
L["HUNTERSurvival"] = "Agilità > Maestria > Celerità > Critico > Versatilità"

--ROGUEAssassination
L["ROGUEAssassination"] = "Agilità > Critico > Maestria > Celerità > Versatilità"
--ROGUEOutlaw
L["ROGUEOutlaw"] = "Agilità > Versatilità > Celerità > Critico > Maestria"
--ROGUESubtlety
L["ROGUESubtlety"] = "Agilità > Maestria > Versatilità > Critico > Celerità"

--PRIESTDiscipline
L["PRIESTDiscipline"] = "Intelletto > Celerità to 20%-25% > Critico = Maestria > Versatilità"
--PRIESTHoly
L["PRIESTHoly"] = "Myth+: Intelletto > Critico = Celerità > Versatilità > Maestria \n Raid: Intelletto > Critico = Maestria > Versatilità >= Celerità"
--PRIESTShadow
L["PRIESTShadow"] = "Intelletto > Celerità > Maestria > Critico > Versatilità"

--SHAMANElemental
L["SHAMANElemental"] = "Intelletto > Maestria > Celerità > Versatilità > Critico"
--SHAMANEnhancement
L["SHAMANEnhancement"] = "Maestria > Celerità > Critico > Versatilità > Agilità"
--SHAMANRestoration
L["SHAMANRestoration"] = "Intelletto > Celerità > Critico > Versatilità > Maestria"

--MAGEArcane
L["MAGEArcane"] = "Intelletto > Celerità > Versatilità > Maestria > Critico"
--MAGEFire
L["MAGEFire"] = "Intelletto > Celerità > Maestria > Versatilità > Critico"
--MAGEFrost
L["MAGEFrost"] = "Intelletto > Celerità > Critico to 33.34% > Maestria > Versatilità"

--WARLOCKAffliction
L["WARLOCKAffliction"] = "Intelletto > Maestria = Critico > Celerità > Versatilità"
--WARLOCKDemonology
L["WARLOCKDemonology"] = "Intelletto > Celerità = Critico = Versatilità > Maestria"
--WARLOCKDestruction
L["WARLOCKDestruction"] = "Celerità = Critico > Intelletto > Maestria > Versatilità"

--DRUIDBalance
L["DRUIDBalance"] = "Intelletto > Maestria > Celerità > Versatilità > Critico"
--DRUIDFeral
L["DRUIDFeral"] = "Maestria = Critico > Versatilità > Celerità > Agilità"
--DRUIDGuardian
L["DRUIDGuardian"] = "Sopravvivenza: Agilità > Celerità > Versatilità > Maestria > Critico \n DPS: Agilità > Versatilità = Celerità > Critico = Maestria"
--DRUIDRestoration
L["DRUIDRestoration"] = "Raid: Intelletto > Celerità = Maestria > Versatilità > Critico \n Dungeon Healing: Intelletto > Maestria = Celerità > Versatilità > Critico \n Dungeon Damage Dealing: Intelletto > Celerità > Versatilità > Critico > Maestria"

--MONKBrewmaster
L["MONKBrewmaster"] = "Agilità = Armor > Versatilità = Maestria = Critico > Celerità"
--MONKMistweaver
L["MONKMistweaver"] = "Intelletto > Celerità > Critico > Versatilità > Maestria"
--MONKWindwalker
L["MONKWindwalker"] = "Agilità > Maestria = Celerità > Versatilità = Critico"

--DEATHKNIGHTBlood
L["DEATHKNIGHTBlood"] = "Deathbringer: Item Level > Celerità (5%) > Critico = Versatilità = Maestria \n San'layn: Item Level > Celerità > Critico = Versatilità = Maestria"
--DEATHKNIGHTFrost
L["DEATHKNIGHTFrost"] = "Critico > Maestria > Celerità > Versatilità"
--DEATHKNIGHTUnholy
L["DEATHKNIGHTUnholy"] = "Forza > Celerità > Maestria > Critico > Versatilità"

--EVOKERDevastation
L["EVOKERDevastation"] = "Intelletto > Celerità > Critial Strike > Maestria > Versatilità"
--EVOKERPreservation
L["EVOKERPreservation"] = "Myth+: Intelletto > Critico > Celerità > Versatilità > Maestria \n Raid: Intelletto > Maestria > Critico > Celerità > Versatilità"
--EVOKERAugmentation
L["EVOKERAugmentation"] = "Intelletto > Critico > Celerità > Maestria > Versatilità"

--Optionen
L["ImportantStats"] = "ImportantStats"
L["Custom priority strings"] = "Stringhe di Priorità Personalizzate"
L["You can put your own custom priority strings here"] = "Puoi inserire qui le tue stringhe di priorità personalizzate"

-- Warrior
L["Arms"] = "Armi"
L["Fury"] = "Furia"
L["Protection"] = "Protezione"

-- Paladin
L["Holy"] = "Sacro"
L["Retribution"] = "Vendetta"
L["Protection"] = "Protezione"

-- Hunter
L["BeastMastery"] = "Maestria delle Bestie"
L["Marksmanship"] = "Precisione"
L["Survival"] = "Sopravvivenza"

-- Rogue
L["Assassination"] = "Assassinio"
L["Outlaw"] = "Fuorilegge"
L["Subtlety"] = "Sottigliezza"

-- Priest
L["Discipline"] = "Disciplina"
L["Holy"] = "Sacro"
L["Shadow"] = "Ombra"

-- Shaman
L["Elemental"] = "Elementale"
L["Enhancement"] = "Ripristino"
L["Restoration"] = "Ristabilimento"

-- Mage
L["Arcane"] = "Arcano"
L["Fire"] = "Fuoco"
L["Frost"] = "Gelo"

-- Warlock
L["Affliction"] = "Afflizione"
L["Demonology"] = "Demonologia"
L["Destruction"] = "Distruzione"

-- Druid
L["Balance"] = "Equilibrio"
L["Feral"] = "Selvaggio"
L["Guardian"] = "Guardiano"
L["Restoration"] = "Ristabilimento"

-- Monk
L["Brewmaster"] = "Maestro Birraio"
L["Mistweaver"] = "Intessitore di Nebbia"
L["Windwalker"] = "Camminatore del Vento"

-- Death Knight
L["Blood"] = "Sangue"
L["Frost"] = "Gelo"
L["Unholy"] = "Impalato"

-- Demon Hunter
L["Havoc"] = "Devastazione"
L["Vengeance"] = "Vendetta"

-- Evoker
L["Devastation"] = "Devastazione"
L["Preservation"] = "Conservazione"
L["Augmentation"] = "Incremento"