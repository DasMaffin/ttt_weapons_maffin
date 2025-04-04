sound.Add( { 
    name = "Weapon_G3SG1.Fire",
    channel = CHAN_WEAPON,
    volume = 0.90,
    level = SNDLVL_GUNFIRE,
    sound = { 
      "weapons/auto_sniper/g3sg1/flux/fire01.wav",
      "weapons/auto_sniper/g3sg1/flux/fire02.wav",
      "weapons/auto_sniper/g3sg1/flux/fire03.wav"
    }
  } )
  sound.Add( { name = "Weapon_G3SG1.ClipOut", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/auto_sniper/g3sg1/flux/clipout.wav" } )
  sound.Add( { name = "Weapon_G3SG1.ClipIn", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/auto_sniper/g3sg1/flux/clipin.wav" } )
  sound.Add( { name = "Weapon_G3SG1.BoltForward", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/auto_sniper/g3sg1/flux/boltforward.wav" } )
  sound.Add( { name = "Weapon_G3SG1.BoltBack", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/auto_sniper/g3sg1/flux/boltback.wav" } )
  sound.Add( { name = "Weapon_G3SG1.Draw", channel = CHAN_STATIC, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/auto_sniper/g3sg1/flux/draw.wav" } )
  sound.Add( { name = "Weapon_G3SG1.Zoom", channel = CHAN_STATIC, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/auto_sniper/g3sg1/flux/zoom.wav" } )

SWEP.Base = "auto_sniper_base"
DEFINE_BASECLASS("auto_sniper_base")

SWEP.PrintName              = "G3SG1 | Flux"

SWEP.ViewModel				= Model( "models/weapons/auto_sniper/g3sg1/flux/v_g3sg1.mdl" )
SWEP.WorldModel				= Model( "models/weapons/auto_sniper/g3sg1/flux/w_g3sg1.mdl" )
SWEP.Icon                   = "vgui/ttt/kalashnikov/empress/weapon_kalash_empress"

SWEP.IronSightsPos			= Vector( 0, 0, 0 )
SWEP.IronSightsAng			= Vector( 0, 0, 0 )

SWEP.AmmoEnt                = "item_ammo_357_ttt"
SWEP.Primary.Ammo           = "357"
SWEP.HoldType               = "ar2"
SWEP.Kind                   = WEAPON_HEAVY                              -- WEAPON_HEAVY, WEAPON_PISTOL, WEAPON_NADE, WEAPON_EQUIP1, WEAPON_EQUIP2
SWEP.Spawnable 				= true

SWEP.Primary.Sound		= Sound( "Weapon_G3SG1.Fire" )