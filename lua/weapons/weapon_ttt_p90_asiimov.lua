sound.Add( { 
    name = "Weapon_P90.Fire",
    channel = CHAN_WEAPON,
    volume = 0.90,
    level = SNDLVL_GUNFIRE,
    sound = { 
      "weapons/light_smg/p90/fire01.wav",
      "weapons/light_smg/p90/fire02.wav",
      "weapons/light_smg/p90/fire03.wav"
    }
  } )
  sound.Add( { name = "Weapon_P90.ClipRelease", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/light_smg/p90/cliprelease.wav" } )
  sound.Add( { name = "Weapon_P90.ClipOut", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/light_smg/p90/clipout.wav" } )
  sound.Add( { name = "Weapon_P90.ClipIn", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/light_smg/p90/clipin.wav" } )
  sound.Add( { name = "Weapon_P90.ClipHit", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/light_smg/p90/cliphit.wav" } )
  sound.Add( { name = "Weapon_P90.BoltForward", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/light_smg/p90/boltforward.wav" } )
  sound.Add( { name = "Weapon_P90.BoltBack", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/light_smg/p90/boltback.wav" } )
  sound.Add( { name = "Weapon_P90.Draw", channel = CHAN_STATIC, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/light_smg/p90/draw.wav" } )

SWEP.Base = "light_smg_base"
DEFINE_BASECLASS("light_smg_base")

SWEP.ClassName              = "weapon_ttt_p90_asiimov"
SWEP.PrintName              = "P90 | Asiimov"

SWEP.ViewModel				= Model( "models/weapons/light_smg/p90/asiimov/v_p90.mdl" )
SWEP.WorldModel				= Model( "models/weapons/light_smg/p90/asiimov/w_p90.mdl" )
SWEP.Icon                   = "vgui/ttt/kalashnikov/empress/weapon_kalash_empress"

SWEP.IronSightsPos			= Vector( -5.15, 0, 1.7 )
SWEP.IronSightsAng			= Vector( 0, 0.1, 1 )

SWEP.AmmoEnt                = "item_ammo_smg1_ttt"
SWEP.Primary.Ammo           = "SMG1"
SWEP.HoldType               = "smg"
SWEP.Kind                   = WEAPON_HEAVY                              -- WEAPON_HEAVY, WEAPON_PISTOL, WEAPON_NADE, WEAPON_EQUIP1, WEAPON_EQUIP2
SWEP.ViewModelFlip          = false
SWEP.Spawnable 				= true
SWEP.Primary.Sound		    = Sound( "Weapon_P90.Fire" ) 