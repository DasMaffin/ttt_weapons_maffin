sound.Add( { 
    name = "Weapon_MP7.Fire",
    channel = CHAN_WEAPON,
    volume = 0.90,
    level = SNDLVL_GUNFIRE,
    sound = { 
      "weapons/light_smg/mp7/fire01.wav",
      "weapons/light_smg/mp7/fire02.wav",
      "weapons/light_smg/mp7/fire03.wav",
      "weapons/light_smg/mp7/fire04.wav"
    }
  } )
  sound.Add( { name = "Weapon_MP7.ClipOut", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/light_smg/mp7/clipout.wav" } )
  sound.Add( { name = "Weapon_MP7.ClipIn", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/light_smg/mp7/clipin.wav" } )
  sound.Add( { name = "Weapon_MP7.SlideForward", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/light_smg/mp7/slideforward.wav" } )
  sound.Add( { name = "Weapon_MP7.SlideBack", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/light_smg/mp7/slideback.wav" } )
  sound.Add( { name = "Weapon_MP7.Draw", channel = CHAN_STATIC, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/light_smg/mp7/draw.wav" } )

SWEP.Base = "light_smg_base"
DEFINE_BASECLASS("light_smg_base")

SWEP.PrintName              = "MP7 | Fade"

SWEP.ViewModel				= Model( "models/weapons/light_smg/mp7/fade/v_mp7.mdl" )
SWEP.WorldModel				= Model( "models/weapons/light_smg/mp7/fade/w_mp7.mdl" )
SWEP.Icon                   = "vgui/ttt/kalashnikov/empress/weapon_kalash_empress"

SWEP.IronSightsPos			= Vector( -5.26, 0, 3 )
SWEP.IronSightsAng			= Vector( 0, 0.1, -1 )

SWEP.AmmoEnt                = "item_ammo_smg1_ttt"
SWEP.Primary.Ammo           = "SMG1"
SWEP.HoldType               = "smg"
SWEP.Kind                   = WEAPON_HEAVY                              -- WEAPON_HEAVY, WEAPON_PISTOL, WEAPON_NADE, WEAPON_EQUIP1, WEAPON_EQUIP2
SWEP.ViewModelFlip          = false
SWEP.Spawnable 				= true
SWEP.Primary.Sound		    = Sound( "Weapon_MP7.Fire" ) 