sound.Add({ name = "M4_Shot", channel = CHAN_USER_BASE+10, volume = 1.0, sound = "weapons/m4a4/transformers/m4_unsil-1.wav"})
sound.Add({ name = "Weapon_CFM4A2.Clipin", channel = CHAN_ITEM, volume = 1.0, sound = "weapons/m4a4/transformers/m4_clipin.wav"})
sound.Add({ name = "Weapon_CFM4A2.Clipout", channel = CHAN_ITEM, volume = 1.0, sound = "weapons/m4a4/transformers/m4_clipout.wav"})
sound.Add({ name = "Weapon_CFM4A2.Boltpull", channel = CHAN_ITEM, volume = 1.0, sound = "weapons/m4a4/transformers/m4_boltpull.wav"})

SWEP.Base = "m4a1_base"
DEFINE_BASECLASS("m4a1_base")

SWEP.ClassName              = "weapon_ttt_m4a4_transformers"
SWEP.PrintName              = "M4A1 | Transformers"

SWEP.ViewModel				= Model("models/weapons/m4a4/transformers/v_rif_m4.mdl")
SWEP.WorldModel				= Model("models/weapons/m4a4/transformers/w_rif_m4a2.mdl")
SWEP.Icon                   = "vgui/ttt//m4/howl/weapon_m4a4howl"

SWEP.IronSightsPos			= Vector( -5.19, 0, 2.8 )
SWEP.IronSightsAng			= Vector( 0, -0.1, -2 )

SWEP.AmmoEnt                = "item_ammo_pistol_ttt"
SWEP.Primary.Ammo           = "Pistol"
SWEP.HoldType               = "ar2"
SWEP.Kind                   = WEAPON_HEAVY                              -- WEAPON_HEAVY, WEAPON_PISTOL, WEAPON_NADE, WEAPON_EQUIP1, WEAPON_EQUIP2
SWEP.ViewModelFlip = true

SWEP.Primary.Sound			= Sound("M4_Shot")