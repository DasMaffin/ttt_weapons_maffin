sound.Add( { name = "EjectBrass_762Nato 2 150", channel = CHAN_WEAPON, volume = 0.90, level = SNDLVL_GUNFIRE, sound = "weapons/ak47/ak47redlinefire.wav" } )
sound.Add( { name = "Weapon_AK47.ClipOut", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/ak47/clipout.wav" } )
sound.Add( { name = "Weapon_AK47.ClipIn", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/ak47/clipin.wav" } )
sound.Add( { name = "Weapon_AK47.BoltPull", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/ak47/bolt.wav" } )
sound.Add( { name = "Weapon_AK47.Draw", channel = CHAN_STATIC, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/ak47/draw.wav" } )

SWEP.Base = "kalashnikov_base"
DEFINE_BASECLASS("kalashnikov_base")

SWEP.PrintName              = "AK-47 | Redline"

SWEP.ViewModel				= Model( "models/weapons/kalashnikov/redline/v_cloutak1.mdl" )
SWEP.WorldModel				= Model( "models/weapons/kalashnikov/redline/w_cloutak1.mdl" )
SWEP.Icon                   = "vgui/ttt/kalashnikov/empress/weapon_kalash_empress"

SWEP.IronSightsPos          = Vector(4.84, 0, 3.519)
SWEP.IronSightsAng          = Vector(1.299, -0.151, 0)

SWEP.AmmoEnt                = "item_ammo_smg1_ttt"
SWEP.Primary.Ammo           = "SMG1"
SWEP.HoldType               = "ar2"
SWEP.Kind                   = WEAPON_HEAVY                              -- WEAPON_HEAVY, WEAPON_PISTOL, WEAPON_NADE, WEAPON_EQUIP1, WEAPON_EQUIP2
SWEP.ViewModelFlip          = true
SWEP.Spawnable 				= true