sound.Add( { name = "Weapon_M4A1S.Fire", channel = CHAN_WEAPON, volume = 0.90, level = SNDLVL_GUNFIRE, sound = "weapons/m4a1s/fire.wav" } )
sound.Add( { name = "Weapon_M4A1S.ClipOut", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/m4a1s/clipout.wav" } )
sound.Add( { name = "Weapon_M4A1S.ClipIn", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/m4a1s/clipin.wav" } )
sound.Add( { name = "Weapon_M4A1S.ClipHit", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/m4a1s/cliphit.wav" } )
sound.Add( { name = "Weapon_M4A1S.BoltForward", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/m4a1s/boltforward.wav" } )
sound.Add( { name = "Weapon_M4A1S.BoltBack", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/m4a1s/boltback.wav" } )
sound.Add( { name = "Weapon_M4A1S.Draw", channel = CHAN_STATIC, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/m4a1s/draw.wav" } )

SWEP.Base = "maffin_base"
DEFINE_BASECLASS("maffin_base")

SWEP.Slot                   = 2                 -- 0 = knife, 1 = pistol, 2 = smg, rifle, shotgun, sniper, machinegun
SWEP.Kind                   = WEAPON_HEAVY      -- WEAPON_HEAVY, WEAPON_PISTOL, WEAPON_NADE, WEAPON_EQUIP1, WEAPON_EQUIP2
SWEP.HoldType               = "ar2"

SWEP.AmmoEnt                = "item_ammo_pistol"
SWEP.Primary.Ammo           = "Pistol"                -- AlyxGun = revolver, 357 = 357 (sniper), Buckshot = box_buckshot (shotgun), Pistol = pistol, SMG1 = smg1
SWEP.Primary.Recoil         = 1.6
SWEP.Primary.Damage         = 23
SWEP.Primary.Delay          = 0.19
SWEP.Primary.Cone           = 0--.018
SWEP.Primary.ClipSize       = 20
SWEP.Primary.DefaultClip    = 20
SWEP.Primary.Automatic      = true
SWEP.Primary.Sound          = Sound("Weapon_M4A1S.Fire")               -- The shooting sound.

function SWEP:SetZoom(state)
    if not (IsValid(self:GetOwner()) and self:GetOwner():IsPlayer()) then return end
    if state then
        self:GetOwner():SetFOV(35, 0.5)
    else
        self:GetOwner():SetFOV(0, 0.2)
    end
end

-- Add some zoom to ironsights for this gun
function SWEP:SecondaryAttack()
    if not self.IronSightsPos then return end
    if self:GetNextSecondaryFire() > CurTime() then return end

    local bIronsights = not self:GetIronsights()

    self:SetIronsights( bIronsights )

    self:SetZoom( bIronsights )

    self:SetNextSecondaryFire( CurTime() + 0.3 )
end

function SWEP:PreDrop()
    self:SetZoom(false)
    self:SetIronsights(false)
    return self.BaseClass.PreDrop(self)
end

function SWEP:Holster()
    self:SetIronsights(false)
    self:SetZoom(false)
    return true
end

if CLIENT then
    function SWEP:DrawHUD()
        if self:GetIronsights() then
            
        else
            return BaseClass.DrawHUD(self)
        end
    end
    
    function SWEP:AdjustMouseSensitivity()
        return (self:GetIronsights() and 0.2) or nil
    end
end