sound.Add({ name = "MAC_Shot", channel = CHAN_USER_BASE+10, volume = 1.0, sound = "weapons/light_smg/mac_lara/Lara Fire.wav"})
sound.Add({ name = "Lara.Draw", channel = CHAN_ITEM, volume = 1.0, sound = "weapons/light_smg/mac_lara/Lara Draw.wav"})
sound.Add({ name = "Lara.Reload", channel = CHAN_ITEM, volume = 1.0, sound = "weapons/light_smg/mac_lara/Lara Reload.wav"})

SWEP.Base = "light_smg_base"
DEFINE_BASECLASS("light_smg_base")

SWEP.PrintName              = "LZ-1 | Lara"

SWEP.ViewModel				= Model( "models/weapons/light_smg/mac_lara/v_smg_macla.mdl" )
SWEP.WorldModel				= Model( "models/weapons/light_smg/mac_lara/w_smg_macla.mdl" )
SWEP.Icon                   = "vgui/ttt/kalashnikov/empress/weapon_kalash_empress"

SWEP.IronSightsPos          = Vector(-0.32, 0, -0.52)
SWEP.IronSightsAng          = Vector(7.992, -14.606, 0)

SWEP.AmmoEnt                = "item_ammo_smg1_ttt"
SWEP.Primary.Ammo           = "SMG1"
SWEP.HoldType               = "smg"
SWEP.Kind                   = WEAPON_HEAVY                              -- WEAPON_HEAVY, WEAPON_PISTOL, WEAPON_NADE, WEAPON_EQUIP1, WEAPON_EQUIP2
SWEP.ViewModelFlip          = true
SWEP.Spawnable 				= true
SWEP.Primary.Sound		    = Sound( "MAC_Shot" ) 