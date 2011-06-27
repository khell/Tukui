local T, C, L = unpack(select(2, ...)) -- Import: T - functions, constants, variables; C - config; L - locales
if not C["actionbar"].enable == true then return end
 
---------------------------------------------------------------------------
-- setup MultiBarBottomRight as bar #3
---------------------------------------------------------------------------
 
local barL = TukuiBar3Left
local barR = TukuiBar3Right
barR:SetParent(barL)
MultiBarBottomRight:SetParent(barL)
 
for i= 1, 12 do
        local b = _G["MultiBarBottomRightButton"..i]
        local b2 = _G["MultiBarBottomRightButton"..i-1]
        b:SetSize(T.buttonsize, T.buttonsize)
        b:ClearAllPoints()
        b:SetFrameStrata("BACKGROUND")
        b:SetFrameLevel(15)
 
        if i == 1 then
                b:SetPoint("TOPLEFT", barL, T.buttonspacing, -T.buttonspacing)
        elseif i == 4 then
                b:SetPoint("BOTTOMLEFT", barL, T.buttonspacing, T.buttonspacing)
        elseif i == 7 then
                b:SetPoint("TOPLEFT", barR, T.buttonspacing, -T.buttonspacing)
        elseif i == 10 then
                b:SetPoint("BOTTOMLEFT", barR, T.buttonspacing, T.buttonspacing)
        else
                b:SetPoint("LEFT", b2, "RIGHT", T.buttonspacing, 0)
        end
end