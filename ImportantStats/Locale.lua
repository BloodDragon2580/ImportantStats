-- Locale.lua
local addonName, IS = ...

-- Tabelle für Übersetzungen
IS.L = {}

local locale = GetLocale() -- "enUS", "deDE", "ruRU", "frFR", "esES", "koKR", "zhCN", "zhTW", "ptBR"

if locale == "deDE" then
    IS.L["Previous Variant"] = "Vorherige Variante"
    IS.L["Next Variant"] = "Nächste Variante"
    IS.L["No Specialization Selected"] = "Keine Spezialisierung ausgewählt"
    IS.L["General"] = "Allgemein"
    IS.L["Shift+Left Click to move"] = "Shift+Linksklick zum Verschieben"
elseif locale == "ruRU" then
    IS.L["Previous Variant"] = "Предыдущий вариант"
    IS.L["Next Variant"] = "Следующий вариант"
    IS.L["No Specialization Selected"] = "Специализация не выбрана"
    IS.L["General"] = "Общее"
    IS.L["Shift+Left Click to move"] = "Shift+ЛКМ для перемещения"
elseif locale == "frFR" then
    IS.L["Previous Variant"] = "Variante précédente"
    IS.L["Next Variant"] = "Variante suivante"
    IS.L["No Specialization Selected"] = "Aucune spécialisation sélectionnée"
    IS.L["General"] = "Général"
    IS.L["Shift+Left Click to move"] = "Shift+Clic gauche pour déplacer"
elseif locale == "esES" or locale == "esMX" then
    IS.L["Previous Variant"] = "Variante anterior"
    IS.L["Next Variant"] = "Siguiente variante"
    IS.L["No Specialization Selected"] = "No se ha seleccionado especialización"
    IS.L["General"] = "General"
    IS.L["Shift+Left Click to move"] = "Shift+Clic izquierdo para mover"
elseif locale == "koKR" then
    IS.L["Previous Variant"] = "이전 선택"
    IS.L["Next Variant"] = "다음 선택"
    IS.L["No Specialization Selected"] = "특성 선택 안됨"
    IS.L["General"] = "일반"
    IS.L["Shift+Left Click to move"] = "Shift+왼쪽 클릭으로 이동"
elseif locale == "zhCN" then
    IS.L["Previous Variant"] = "上一方案"
    IS.L["Next Variant"] = "下一方案"
    IS.L["No Specialization Selected"] = "未选择专精"
    IS.L["General"] = "通用"
    IS.L["Shift+Left Click to move"] = "Shift+左键点击移动"
elseif locale == "zhTW" then
    IS.L["Previous Variant"] = "上一方案"
    IS.L["Next Variant"] = "下一方案"
    IS.L["No Specialization Selected"] = "未選擇專精"
    IS.L["General"] = "通用"
    IS.L["Shift+Left Click to move"] = "Shift+左鍵點擊移動"
elseif locale == "ptBR" then
    IS.L["Previous Variant"] = "Variante anterior"
    IS.L["Next Variant"] = "Próxima variante"
    IS.L["No Specialization Selected"] = "Nenhuma especialização selecionada"
    IS.L["General"] = "Geral"
    IS.L["Shift+Left Click to move"] = "Shift+Clique esquerdo para mover"
else -- Standard EN
    IS.L["Previous Variant"] = "Previous Variant"
    IS.L["Next Variant"] = "Next Variant"
    IS.L["No Specialization Selected"] = "No Specialization Selected"
    IS.L["General"] = "General"
    IS.L["Shift+Left Click to move"] = "Shift+Left Click to move"
end
