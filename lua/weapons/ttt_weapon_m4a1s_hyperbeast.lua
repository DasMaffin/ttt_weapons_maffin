if SERVER then
    AddCSLuaFile("weapons/maffin_base/shared.lua")
    AddCSLuaFile("weapons/m4a1_base/shared.lua")
elseif CLIENT then
    include("weapons/maffin_base/shared.lua")
    include("weapons/m4a1_base/shared.lua")
end

SWEP.Base = "m4a1_base"
DEFINE_BASECLASS("m4a1_base")

SWEP.PrintName              = "A M4A1-S Hyper Beast"

SWEP.ViewModel				= Model("models/weapons/rif_m4a1s/v_m4a1s.mdl")
SWEP.WorldModel				= Model("models/weapons/rif_m4a1s/w_m4a1s.mdl")

SWEP.IronSightsPos			= Vector( -5.265, 0, 2.17 )
SWEP.IronSightsAng			= Vector( 1.2, -0.1, 0 )

-- if CLIENT then
--     function SWEP:DrawHUD()
--         self.BaseClass.DrawHUD(self)
--     end

--     function SWEP:AdjustMouseSensitivity()
--         self.BaseClass.AdjustMouseSensitivity(self)
--     end
-- end