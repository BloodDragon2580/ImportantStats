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
L["DEMONHUNTERHavoc"] = "Fel-Scarred: Maestria = Critico > Celerità > Versatilità > Agilità \n Aldrachi:Critico > Maestria > Celerità > Versatilità > Agilità"
--DEMONHUNTERVengeance
L["DEMONHUNTERVengeance"] = "Agilità > Celerità = Critico > Versatilità > Maestria"

--WARRIORArms
L["WARRIORArms"] = "Forza > Critico > Celerità > Maestria > Versatilità"
--WARRIORFury
L["WARRIORFury"] = "Forza > Maestria > Celerità > Versatilità > Critico"
--WARRIORProtection
L["WARRIORProtection"] = "Forza > Celerità > Critico = Versatilità > Maestria"

--PALADINHoly
L["PALADINHoly"] = "Raid: Intelletto > Celerità > Maestria > Critico > Versatilità  \n Raiding - Avenging Crusade: Intelletto > Critico > Celerità > Maestria > Versatilità \n Myth+: Intelletto > Celerità > Versatilità > Critico > Maestria"
--PALADINProtection
L["PALADINProtection"] = "Forza > Celerità > Maestria > Versatilità = Critico"
--PALADINRetribution
L["PALADINRetribution"] = "Forza > Maestria = Critico > Celerità > Versatilità"

--HUNTERBeastMastery
L["HUNTERBeastMastery"] = "Pack Leader (ST): Agilità > Celerità (40%) > Maestria = Critico > Celerità (>40%) > Versatilità \n Pack Leader (AoE): Agilità > Celerità (40%) > Critico > Celerità (>40%) > Maestria > Versatilità \n Dark Ranger (ST): Agilità > Critico = Celerità > Versatilità > Maestria \n Dark Ranger (AoE): Agilità > Critico = Celerità > Maestria > Versatilità"
--HUNTERMarksmanship
L["HUNTERMarksmanship"] = "Single Target: Danno Arma > Critico > Maestria > Versatilità > Celerità \n Dark Ranger (AoE): Danno Arma > Critico > Celerità = Maestria > Versatilità"
--HUNTERSurvival
L["HUNTERSurvival"] = "Sentinel (ST): Agilità > Maestria > Critico > Celerità > Versatilità \n Sentinel (AoE): Agilità > Maestria > Celerità > Critico > Versatilità"

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
L["SHAMANElemental"] = "Intelletto > Maestria > Celerità = Versatilità > Critico"
--SHAMANEnhancement
L["SHAMANEnhancement"] = "Maestria > Celerità > Critico > Versatilità > Agilità"
--SHAMANRestoration
L["SHAMANRestoration"] = "General: Intelletto > Critico > Versatilità > Celerità = Maestria \n Farseer with Whispering Waves: Intelletto > Celerità = Critico > Versatilità > Maestria"

--MAGEArcane
L["MAGEArcane"] = "Intelletto > Celerità > Versatilità > Maestria > Critico"
--MAGEFire
L["MAGEFire"] = "Intelletto > Celerità >> Maestria > Versatilità > Critico"
--MAGEFrost
L["MAGEFrost"] = "Intelletto > Celerità > Critico (33.34%) > Maestria > Versatilità > Critico (>33.34%)"

--WARLOCKAffliction
L["WARLOCKAffliction"] = "Intelletto > Maestria = Critico > Celerità > Versatilità"
--WARLOCKDemonology
L["WARLOCKDemonology"] = "Intelletto > Celerità = Critico = Versatilità > Maestria"
--WARLOCKDestruction
L["WARLOCKDestruction"] = "Celerità = Critico > Intelletto > Maestria > Versatilità"

--DRUIDBalance
L["DRUIDBalance"] = "Intelletto > Maestria > Celerità > Versatilità > Critico"
--DRUIDFeral
L["DRUIDFeral"] = "Single-Target: Critico = Maestria > Celerità = Versatilità > Agilità \n Multi-Target: Critico = Maestria > Versatilità > Celerità > Agilità"
--DRUIDGuardian
L["DRUIDGuardian"] = "General Healing: Intelletto > Celerità = Maestria > Versatilità > Critico \n Dungeon Damage Dealing: Intelletto > Celerità > Versatilità > Critico > Maestria"
--DRUIDRestoration
L["DRUIDRestoration"] = "Raid: Intelletto > Celerità = Maestria > Versatilità > Critico \n Dungeon Healing: Intelletto > Maestria = Celerità > Versatilità > Critico \n Dungeon Damage Dealing: Intelletto > Celerità > Versatilità > Critico > Maestria"

--MONKBrewmaster
L["MONKBrewmaster"] = "Agilità = Armor > Versatilità = Maestria = Critico > Celerità"
--MONKMistweaver
L["MONKMistweaver"] = "Raiding: Intelletto > Celerità > Critico > Versatilità = Maestria \n Mythic+: Intelletto > Celerità > Critico >= Versatilità > Maestria"
--MONKWindwalker
L["MONKWindwalker"] = "Agilità > Maestria = Celerità > Versatilità = Critico"

--DEATHKNIGHTBlood
L["DEATHKNIGHTBlood"] = "Deathbringer: Item Level > Critico = Versatilità = Maestria > Celerità \n San'layn: Item Level > Celerità > Critico = Versatilità = Maestria"
--DEATHKNIGHTFrost
L["DEATHKNIGHTFrost"] = "Critico > Maestria > Celerità > Versatilità"
--DEATHKNIGHTUnholy
L["DEATHKNIGHTUnholy"] = "Celerità > Maestria > Critico > Versatilità"

--EVOKERDevastation
L["EVOKERDevastation"] = "Intelletto > Celerità > Critico > Maestria > Versatilità"
--EVOKERPreservation
L["EVOKERPreservation"] = "Myth+: Intelletto > Critico > Celerità > Versatilità > Maestria \n Raid: Intelletto > Maestria > Critico > Celerità > Versatilità"
--EVOKERAugmentation
L["EVOKERAugmentation"] = "Chronowarden: Intelletto > Maestria > Critico > Celerità > Versatilità \n Scalecommander: Intelletto > Critico > Celerità > Maestria > Versatilità"

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