sound.Add( { 
    name = "Weapon_MAC10.Fire",
    channel = CHAN_WEAPON,
    volume = 0.90,
    level = SNDLVL_GUNFIRE,
    sound = { 
      "weapons/light_smg/mac10/fire01.wav",
      "weapons/light_smg/mac10/fire02.wav",
      "weapons/light_smg/mac10/fire03.wav"
    }
  } )
  sound.Add( { name = "Weapon_MAC10.ClipOut", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/light_smg/mac10/clipout.wav" } )
  sound.Add( { name = "Weapon_MAC10.ClipIn", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/light_smg/mac10/clipin.wav" } )
  sound.Add( { name = "Weapon_MAC10.BoltForward", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/light_smg/mac10/boltforward.wav" } )
  sound.Add( { name = "Weapon_MAC10.BoltBack", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/light_smg/mac10/boltback.wav" } )
  sound.Add( { name = "Weapon_MAC10.Draw", channel = CHAN_STATIC, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/light_smg/mac10/draw.wav" } )

SWEP.Base = "light_smg_base"
DEFINE_BASECLASS("light_smg_base")

SWEP.PrintName              = "Mac-10 | Fade"

SWEP.ViewModel				= Model( "models/weapons/light_smg/mac10/fade/v_mac10.mdl" )
SWEP.WorldModel				= Model( "models/weapons/light_smg/mac10/fade/w_mac10.mdl" )
SWEP.Icon                   = "vgui/ttt/kalashnikov/empress/weapon_kalash_empress"

SWEP.IronSightsPos			= Vector( -6.12, 0, 4.17 )
SWEP.IronSightsAng			= Vector( 0, 0.1, -1 )

SWEP.AmmoEnt                = "item_ammo_smg1_ttt"
SWEP.Primary.Ammo           = "SMG1"
SWEP.HoldType               = "smg"
SWEP.Kind                   = WEAPON_HEAVY                              -- WEAPON_HEAVY, WEAPON_PISTOL, WEAPON_NADE, WEAPON_EQUIP1, WEAPON_EQUIP2
SWEP.ViewModelFlip          = false
SWEP.Spawnable 				= true
SWEP.Primary.Sound		    = Sound( "Weapon_MAC10.Fire" ) 