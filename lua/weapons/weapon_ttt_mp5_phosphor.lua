sound.Add( { name = "Weapon_MP5SD.Fire", channel = CHAN_WEAPON, volume = 0.90, level = SNDLVL_GUNFIRE, sound = "weapons/light_smg/mp5/fire.wav" } )
sound.Add( { name = "Weapon_MP5SD.ClipOut", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/light_smg/mp5/clipout.wav" } )
sound.Add( { name = "Weapon_MP5SD.ClipIn", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/light_smg/mp5/clipin.wav" } )
sound.Add( { name = "Weapon_MP5SD.BoltForward", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/light_smg/mp5/boltforward.wav" } )
sound.Add( { name = "Weapon_MP5SD.BoltBack", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/light_smg/mp5/boltback.wav" } )
sound.Add( { name = "Weapon_MP5SD.Draw", channel = CHAN_STATIC, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/light_smg/mp5/draw.wav" } )

SWEP.Base = "light_smg_base"
DEFINE_BASECLASS("light_smg_base")

SWEP.ClassName              = "weapon_ttt_mp5_phosphor"
SWEP.PrintName              = "MP-5 SD | Phosphor"

SWEP.ViewModel				= Model( "models/weapons/light_smg/mp5/phosphor/v_mp5sd.mdl" )
SWEP.WorldModel				= Model( "models/weapons/light_smg/mp5/phosphor/w_mp5sd.mdl" )
SWEP.Icon                   = "vgui/ttt/kalashnikov/empress/weapon_kalash_empress"

SWEP.IronSightsPos			= Vector( -5.2, 0, 3.55 )
SWEP.IronSightsAng			= Vector( 0.5, 0, 2 )

SWEP.AmmoEnt                = "item_ammo_smg1_ttt"
SWEP.Primary.Ammo           = "SMG1"
SWEP.HoldType               = "smg"
SWEP.Kind                   = WEAPON_HEAVY                              -- WEAPON_HEAVY, WEAPON_PISTOL, WEAPON_NADE, WEAPON_EQUIP1, WEAPON_EQUIP2
SWEP.ViewModelFlip          = false
SWEP.Spawnable 				= true
SWEP.Primary.Sound		    = Sound( "Weapon_MP5SD.Fire" ) 