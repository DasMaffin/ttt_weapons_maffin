SWEP.Base = "scope_base"
DEFINE_BASECLASS("scope_base")

SWEP.Slot                   = 2                                         -- 0 = knife, 1 = pistol, 2 = smg, rifle, shotgun, sniper, machinegun
SWEP.Kind                   = WEAPON_HEAVY                              -- WEAPON_HEAVY, WEAPON_PISTOL, WEAPON_NADE, WEAPON_EQUIP1, WEAPON_EQUIP2
SWEP.HoldType               = "ar2"

SWEP.AmmoEnt                = "item_ammo_357_ttt"
SWEP.Primary.Ammo           = "357"                                    -- AlyxGun = revolver, 357 = 357 (sniper), Buckshot = box_buckshot (shotgun), Pistol = pistol, SMG1 = smg1
SWEP.Primary.Recoil         = 1.2
SWEP.Primary.Damage         = 15
SWEP.Primary.Delay          = 0.25
SWEP.Primary.Cone           = 1 
SWEP.Primary.ADSBonus       = 0.01
SWEP.Primary.ClipSize       = 15
SWEP.Primary.DefaultClip    = 15
SWEP.Primary.Automatic      = false
SWEP.HeadshotMultiplier     = 3.5

SWEP.Secondary.ScopeZoom		= 12	
SWEP.Secondary.UseACOG			= false -- Choose one scope type
SWEP.Secondary.UseMilDot		= true	-- I mean it, only one	
SWEP.Secondary.UseSVD			= false	-- If you choose more than one, your scope will not show up at all
SWEP.Secondary.UseParabolic		= false	
SWEP.Secondary.UseElcan			= false
SWEP.Secondary.UseGreenDuplex	= false	

SWEP.ScopeScale 			= 0.5

if CLIENT then
    function SWEP:DrawHUD()
        if engine.ActiveGamemode() == "terrortown" and self:GetIronsights() then
            return BaseClass.DrawHUD(self)
        end
    end
end