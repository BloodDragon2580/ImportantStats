local addonName, IS = ...

-- Initialize Character-Specific SavedVariable
if not IS_Config then
    IS_Config = { selected = {}, pos = nil } -- pos wird für die Position genutzt
end

local f = CreateFrame("Frame")
f:RegisterEvent("PLAYER_ENTERING_WORLD")
f:RegisterEvent("PLAYER_SPECIALIZATION_CHANGED")

local function SnapToPaperDoll(statFrame)
    local pFrame = PaperDollFrame
    local x, y = statFrame:GetCenter()
    local px, py = pFrame:GetCenter()

    local dx = x - px
    local dy = y - py

    local point, relativePoint, xOfs, yOfs

    if math.abs(dx) > math.abs(dy) then
        -- links oder rechts vom PaperDollFrame
        if dx > 0 then
            point, relativePoint, xOfs, yOfs = "TOPLEFT", "TOPRIGHT", 10, -10 -- rechts oben
        else
            point, relativePoint, xOfs, yOfs = "TOPRIGHT", "TOPLEFT", -10, -10 -- links oben
        end
    else
        -- oben oder unten
        if dy > 0 then
            point, relativePoint, xOfs, yOfs = "BOTTOM", "TOP", 0, 10 -- oben mittig
        else
            point, relativePoint, xOfs, yOfs = "TOP", "BOTTOM", 0, -10 -- unten mittig
        end
    end

    statFrame:ClearAllPoints()
    statFrame:SetPoint(point, pFrame, relativePoint, xOfs, yOfs)

    IS_Config.pos = {
        point = point,
        relativePoint = relativePoint,
        xOfs = xOfs,
        yOfs = yOfs,
    }
end

local function CreateStatFrame()
    if PaperDollFrame.MyStatPriority then return end

    local statFrame = CreateFrame("Frame", "ImportantStatsFrame", PaperDollFrame, "BackdropTemplate")
    statFrame:SetSize(300, 120)

    -- Position laden oder Default (rechts daneben)
    if IS_Config.pos and IS_Config.pos.point then
        statFrame:SetPoint(
            IS_Config.pos.point,
            PaperDollFrame,
            IS_Config.pos.relativePoint,
            IS_Config.pos.xOfs,
            IS_Config.pos.yOfs
        )
    else
        statFrame:SetPoint("TOPLEFT", PaperDollFrame, "TOPRIGHT", 10, -40)
        IS_Config.pos = {
            point = "LEFT",
            relativePoint = "RIGHT",
            xOfs = 10,
            yOfs = -40,
        }
    end

    -- Movable mit Shift+Linksklick
    statFrame:SetMovable(true)
    statFrame:EnableMouse(true)
    statFrame:RegisterForDrag("LeftButton")
    statFrame:SetScript("OnDragStart", function(self)
        if IsShiftKeyDown() then
            self:StartMoving()
        end
    end)
    statFrame:SetScript("OnDragStop", function(self)
        self:StopMovingOrSizing()
        SnapToPaperDoll(self)
    end)

    -- Hintergrund
    statFrame:SetBackdrop({
        bgFile = "Interface\\ChatFrame\\ChatFrameBackground",
        edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
        tile = true,
        tileSize = 16,
        edgeSize = 12,
        insets = { left = 4, right = 4, top = 4, bottom = 4 }
    })
    statFrame:SetBackdropColor(0,0,0,0.7)
    statFrame:SetBackdropBorderColor(0.3,0.3,0.3,1)

    -- Variantentitel
    local variantTitle = statFrame:CreateFontString(nil,"OVERLAY")
    variantTitle:SetFont("Fonts\\FRIZQT__.TTF",16,"OUTLINE")
    variantTitle:SetPoint("TOP",0,-10)
    variantTitle:SetJustifyH("CENTER")
    variantTitle:SetWidth(280)
    variantTitle:SetTextColor(1,0.84,0,1)
    statFrame.variantTitle = variantTitle

    -- Stat-Text
    local text = statFrame:CreateFontString(nil,"OVERLAY")
    text:SetFont("Fonts\\FRIZQT__.TTF",12,"OUTLINE")
    text:SetPoint("TOP",variantTitle,"BOTTOM",0,-10)
    text:SetJustifyH("LEFT")
    text:SetWidth(280)
    text:SetTextColor(1,1,1,1)
    statFrame.text = text

    -- Next Variant Button
    local nextBtn = CreateFrame("Button", nil, statFrame)
    nextBtn:SetSize(280,20)
    nextBtn:SetPoint("BOTTOM",0,20) -- leicht nach oben verschoben, damit Platz für den Hinweis bleibt

    local btnBG = nextBtn:CreateTexture(nil,"BACKGROUND")
    btnBG:SetAllPoints(true)
    btnBG:SetColorTexture(0.1,0.1,0.1,1)

    local btnBorder = nextBtn:CreateTexture(nil,"BORDER")
    btnBorder:SetAllPoints(true)
    btnBorder:SetColorTexture(1,1,1,1)

    local btnInner = nextBtn:CreateTexture(nil,"ARTWORK")
    btnInner:SetPoint("TOPLEFT",1,-1)
    btnInner:SetPoint("BOTTOMRIGHT",-1,1)
    btnInner:SetColorTexture(0.1,0.1,0.1,1)

    local btnText = nextBtn:CreateFontString(nil,"OVERLAY")
    btnText:SetFont("Fonts\\FRIZQT__.TTF",14,"OUTLINE")
    btnText:SetPoint("CENTER")
    btnText:SetTextColor(1,1,1,1)
    btnText:SetText(IS.L["Next Variant"])
    nextBtn.text = btnText
    statFrame.switchBtn = nextBtn

    -- Hinweistext für Verschieben
    local moveHint = statFrame:CreateFontString(nil, "OVERLAY")
    moveHint:SetFont("Fonts\\FRIZQT__.TTF", 10, "")
    moveHint:SetPoint("TOP", nextBtn, "BOTTOM", 0, -5)
    moveHint:SetTextColor(1,1,1,1)
    moveHint:SetText(IS.L["Shift+Left Click to move"])
    statFrame.moveHint = moveHint

    local function UpdateButtonAndText()
        local specID = GetSpecializationInfo(GetSpecialization())
        if not specID then return end
        local desc = IS:GetSPDesc(specID)
        local sel = IS_Config.selected[specID] or 1
        sel = math.max(1, math.min(sel,#desc))
        local variantName = desc[sel][1] or IS.L["General"]
        local spText = IS:GetSPText(specID)

        variantTitle:SetText(variantName)
        variantTitle:SetTextColor(1,0.84,0,1)
        text:SetText(spText)
        text:SetTextColor(1,1,1,1)
        btnText:SetText(IS.L["Next Variant"])
        btnText:SetTextColor(1,1,1,1)
    end

    local function SwitchVariant()
        local specID = GetSpecializationInfo(GetSpecialization())
        if not specID then return end
        local desc = IS:GetSPDesc(specID)
        local sel = IS_Config.selected[specID] or 1
        sel = sel + 1
        if sel > #desc then sel = 1 end
        IS_Config.selected[specID] = sel
        UpdateButtonAndText()
    end

    nextBtn:SetScript("OnClick",SwitchVariant)

    statFrame.UpdateButtonAndText = UpdateButtonAndText
    PaperDollFrame.MyStatPriority = statFrame
    UpdateButtonAndText()
end

local function UpdateStatPriority()
    CreateStatFrame()
    local statFrame = PaperDollFrame.MyStatPriority
    if not statFrame then return end
    local specID = GetSpecializationInfo(GetSpecialization())
    if not specID then
        statFrame.text:SetText(IS.L["No Specialization Selected"])
        statFrame.variantTitle:SetText(IS.L["No Specialization Selected"])
        statFrame.text:SetTextColor(1,1,1,1)
        statFrame.variantTitle:SetTextColor(1,0.84,0,1)
        return
    end
    statFrame:UpdateButtonAndText()
end

f:SetScript("OnEvent",function(self,event,...)
    if event=="PLAYER_ENTERING_WORLD" or event=="PLAYER_SPECIALIZATION_CHANGED" then
        UpdateStatPriority()
    end
end)

PaperDollFrame:HookScript("OnShow",UpdateStatPriority)
