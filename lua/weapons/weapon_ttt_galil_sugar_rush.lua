sound.Add( { name = "Weapon_Galil.Fire", channel = CHAN_WEAPON, volume = 0.90, level = SNDLVL_GUNFIRE, sound = { "weapons/galil/fire01.wav", "weapons/galil/fire02.wav", "weapons/galil/fire03.wav", "weapons/galil/fire04.wav"} } )
sound.Add( { name = "Weapon_Galil.ClipOut", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/galil/clipout.wav" } )
sound.Add( { name = "Weapon_Galil.ClipIn", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/galil/clipin.wav" } )
sound.Add( { name = "Weapon_Galil.BoltForward", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/galil/boltforward.wav" } )
sound.Add( { name = "Weapon_Galil.BoltBack", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/galil/boltback.wav" } )
sound.Add( { name = "Weapon_Galil.Draw", channel = CHAN_STATIC, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/galil/draw.wav" } )

SWEP.Base = "kalashnikov_base"
DEFINE_BASECLASS("kalashnikov_base")

SWEP.ClassName              = "weapon_ttt_galil_sugar_rush"
SWEP.PrintName              = "Galil AR | Sugar Rush"

SWEP.ViewModel				= Model( "models/weapons/galil/sugar_rush/v_galil.mdl" )
SWEP.WorldModel				= Model( "models/weapons/galil/sugar_rush/w_galil.mdl" )
SWEP.Icon                   = "vgui/ttt/kalashnikov/empress/weapon_kalash_empress"

SWEP.IronSightsPos			= Vector( -5.32, 0, 3.67 )
SWEP.IronSightsAng			= Vector( -0.15, 0.05, 0 )

SWEP.AmmoEnt                = "item_ammo_smg1_ttt"
SWEP.Primary.Ammo           = "SMG1"
SWEP.HoldType               = "ar2"
SWEP.Kind                   = WEAPON_HEAVY                              -- WEAPON_HEAVY, WEAPON_PISTOL, WEAPON_NADE, WEAPON_EQUIP1, WEAPON_EQUIP2
SWEP.ViewModelFlip          = false
SWEP.Spawnable 				= true
SWEP.Primary.Sound		= Sound( "Weapon_Galil.Fire" ) 