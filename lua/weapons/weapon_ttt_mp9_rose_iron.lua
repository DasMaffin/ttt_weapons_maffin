sound.Add( { 
    name = "Weapon_MP9.Fire",
    channel = CHAN_WEAPON,
    volume = 0.90,
    level = SNDLVL_GUNFIRE,
    sound = { 
      "weapons/light_smg/mp9/fire01.wav",
      "weapons/light_smg/mp9/fire02.wav",
      "weapons/light_smg/mp9/fire03.wav",
      "weapons/light_smg/mp9/fire04.wav"
    }
  } )
  sound.Add( { name = "Weapon_MP9.ClipOut", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/light_smg/mp9/clipout.wav" } )
  sound.Add( { name = "Weapon_MP9.ClipIn", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/light_smg/mp9/clipin.wav" } )
  sound.Add( { name = "Weapon_MP9.BoltForward", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/light_smg/mp9/boltforward.wav" } )
  sound.Add( { name = "Weapon_MP9.BoltBack", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/light_smg/mp9/boltback.wav" } )
  sound.Add( { name = "Weapon_MP9.Draw", channel = CHAN_STATIC, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/light_smg/mp9/draw.wav" } )

SWEP.Base = "light_smg_base"
DEFINE_BASECLASS("light_smg_base")

SWEP.PrintName              = "MP9 | Rose Iron"

SWEP.ViewModel				= Model( "models/weapons/light_smg/mp9/rose_iron/v_mp9.mdl" )
SWEP.WorldModel				= Model( "models/weapons/light_smg/mp9/rose_iron/w_mp9.mdl" )
SWEP.Icon                   = "vgui/ttt/kalashnikov/empress/weapon_kalash_empress"

SWEP.IronSightsPos			= Vector( -4.73, 0, 2.65 )
SWEP.IronSightsAng			= Vector( 1, 0.1, -1 )

SWEP.AmmoEnt                = "item_ammo_smg1_ttt"
SWEP.Primary.Ammo           = "SMG1"
SWEP.HoldType               = "smg"
SWEP.Kind                   = WEAPON_HEAVY                              -- WEAPON_HEAVY, WEAPON_PISTOL, WEAPON_NADE, WEAPON_EQUIP1, WEAPON_EQUIP2
SWEP.ViewModelFlip          = false
SWEP.Spawnable 				= true
SWEP.Primary.Sound		    = Sound( "Weapon_MP9.Fire" ) 