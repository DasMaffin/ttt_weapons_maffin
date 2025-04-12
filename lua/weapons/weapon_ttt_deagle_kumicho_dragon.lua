SWEP.Base = "deagle_base"
DEFINE_BASECLASS("deagle_base")

SWEP.PrintName              = "Deagle | Kumicho Dragon"

SWEP.ViewModel				= Model( "models/weapons/deagle/kumicho_dragon/v_pist_deagle.mdl" )
SWEP.WorldModel				= Model( "models/weapons/w_pist_deagle.mdl" )
SWEP.Icon                   = "vgui/ttt/kalashnikov/empress/weapon_kalash_empress"

SWEP.IronSightsPos          = Vector( -5.2383, -5.6091, 2.4282 )
SWEP.IronSightsAng          = Vector( 0.5148, 0.5267, 0 )

SWEP.AmmoEnt                = "item_ammo_revolver_ttt"
SWEP.Primary.Ammo           = "AlyxGun"
SWEP.HoldType               = "revolver"
SWEP.Kind                   = WEAPON_PISTOL                              -- WEAPON_HEAVY, WEAPON_PISTOL, WEAPON_NADE, WEAPON_EQUIP1, WEAPON_EQUIP2

SWEP.Primary.Sound          = Sound("weapons/deagle/deagle_01.wav")


-- TODO Make sounds play from animation in .qc file then we dont need these.
function SWEP:Reload()
    if (self:Clip1() == self.Primary.ClipSize or
        self:GetOwner():GetAmmoCount(self.Primary.Ammo) <= 0) then
       return
    end
    timer.Simple(0.2,function() self.Weapon:EmitSound("weapons/deagle/de_clipout.wav") end)
    timer.Simple(0.6,function() self.Weapon:EmitSound("weapons/deagle/de_clipin.wav") end)
    timer.Simple(1.3,function() self.Weapon:EmitSound("weapons/deagle/de_slideback.wav") end)
    timer.Simple(1.5,function() self.Weapon:EmitSound("weapons/deagle/de_slideforward.wav") end)
    BaseClass.Reload(self)
end

function SWEP:Deploy()
    self.Weapon:EmitSound("weapons/deagle/de_draw.wav")
    BaseClass.Reload(self)
end