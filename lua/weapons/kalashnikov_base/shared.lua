SWEP.Base = "maffin_base"
DEFINE_BASECLASS("maffin_base")

SWEP.Slot                   = 2                                         -- 0 = knife, 1 = pistol, 2 = smg, rifle, shotgun, sniper, machinegun
SWEP.Kind                   = WEAPON_HEAVY                              -- WEAPON_HEAVY, WEAPON_PISTOL, WEAPON_NADE, WEAPON_EQUIP1, WEAPON_EQUIP2
SWEP.HoldType               = "ar2"

SWEP.AmmoEnt                = "item_ammo_smg1_ttt"
SWEP.Primary.Ammo           = "SMG1"                                    -- AlyxGun = revolver, 357 = 357 (sniper), Buckshot = box_buckshot (shotgun), Pistol = pistol, SMG1 = smg1
SWEP.Primary.Recoil         = 1.2
SWEP.Primary.Damage         = 22
SWEP.Primary.Delay          = 0.17
SWEP.Primary.Cone           = 0.02 
SWEP.Primary.ADSBonus       = 0.5
SWEP.Primary.ClipSize       = 30
SWEP.Primary.DefaultClip    = 30
SWEP.Primary.Automatic      = true
SWEP.Primary.Sound          = Sound("Weapon_M4A4.Fire")               -- The shooting sound.
SWEP.HeadshotMultiplier     = 2.2

function SWEP:SetZoom(state)
    if not (IsValid(self:GetOwner()) and self:GetOwner():IsPlayer()) then return end
    if state then
        self:GetOwner():SetFOV(35, 0.5)
    else
        self:GetOwner():SetFOV(0, 0.2)
    end
end

function SWEP:SecondaryAttack()
    if not self.IronSightsPos then return end
    if self:GetNextSecondaryFire() > CurTime() then return end
    self:SendWeaponAnim( ACT_VM_IDLE )

    local bIronsights = not self:GetIronsights()

    self:SetIronsights( bIronsights )

    self:SetZoom( bIronsights )

    self:SetNextSecondaryFire( CurTime() + 0.3 )
end

function SWEP:PreDrop()
    self:SetZoom(false)
    self:SetIronsights(false)
    return BaseClass.PreDrop(self)
end

function SWEP:Holster()
    self:SetIronsights(false)
    self:SetZoom(false)
    return true
end

if CLIENT then
    function SWEP:DrawHUD()
        if self:GetIronsights() then return end

        return BaseClass.DrawHUD(self)
    end

    function SWEP:AdjustMouseSensitivity()
        return (self:GetIronsights() and 0.2) or nil
    end
end