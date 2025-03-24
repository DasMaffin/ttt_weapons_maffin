sound.Add({ name = "Weapon_D16D2.MagIn", channel = CHAN_ITEM, volume = 1.0, sound = "weapons/d16d2/m16a2_magin.wav" })
sound.Add({ name = "Weapon_D16D2.MagOut", channel = CHAN_ITEM, volume = 1.0, sound = "weapons/d16d2/m16a2_magout.wav" })

SWEP.Base = "m4a1_base"
DEFINE_BASECLASS("m4a1_base")

SWEP.PrintName              = "M16"

SWEP.ViewModel				= Model("models/weapons/view/rifles/d16d2/d16d2.mdl")
SWEP.WorldModel				= Model("models/weapons/w_rif_m4a1.mdl")
SWEP.Icon                   = "vgui/ttt/icon_m16"

SWEP.IronSightsPos          = Vector(-2.28, 0, 2.36)
SWEP.IronSightsAng          = Vector(-0.13, -0.028, 0.699)

SWEP.AutoSpawnable          = true

SWEP.AmmoEnt                = "item_ammo_pistol_ttt"
SWEP.Primary.Ammo           = "Pistol"
SWEP.HoldType               = "ar2"
SWEP.Kind                   = WEAPON_HEAVY                              -- WEAPON_HEAVY, WEAPON_PISTOL, WEAPON_NADE, WEAPON_EQUIP1, WEAPON_EQUIP2