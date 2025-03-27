sound.Add( { name = "Weapon_AK47.Fire", channel = CHAN_WEAPON, volume = 0.90, level = SNDLVL_GUNFIRE, sound = "weapons/ak47/fire.wav" } )
sound.Add( { name = "Weapon_AK47.ClipOut", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/ak47/clipout.wav" } )
sound.Add( { name = "Weapon_AK47.ClipIn", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/ak47/clipin.wav" } )
sound.Add( { name = "Weapon_AK47.Bolt", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/ak47/bolt.wav" } )
sound.Add( { name = "Weapon_AK47.Draw", channel = CHAN_STATIC, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/ak47/draw.wav" } )

SWEP.Base = "kalashnikov_base"
DEFINE_BASECLASS("kalashnikov_base")

SWEP.PrintName              = "AK-47 | The Empress"

SWEP.ViewModel				= Model( "models/weapons/rif_ak47/v_ak47.mdl" )
SWEP.WorldModel				= Model( "models/weapons/rif_ak47/w_ak47.mdl" )
SWEP.Icon                   = "vgui/ttt/kalashnikov/empress/weapon_kalash_empress"

SWEP.IronSightsPos			= Vector( -4.98, 0, 2.77 )
SWEP.IronSightsAng			= Vector( 1.1, 0.14, -2 )

SWEP.AmmoEnt                = "item_ammo_smg1_ttt"
SWEP.Primary.Ammo           = "SMG1"
SWEP.HoldType               = "ar2"
SWEP.Kind                   = WEAPON_HEAVY                              -- WEAPON_HEAVY, WEAPON_PISTOL, WEAPON_NADE, WEAPON_EQUIP1, WEAPON_EQUIP2