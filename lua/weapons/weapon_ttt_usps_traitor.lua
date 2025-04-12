sound.Add( { 
    name = "Weapon_USPS.Fire",
    channel = CHAN_WEAPON,
    volume = 0.90,
    level = SNDLVL_GUNFIRE,
    sound = { 
      "weapons/pistol_s/usp/traitor/fire01.wav",
      "weapons/pistol_s/usp/traitor/fire02.wav",
      "weapons/pistol_s/usp/traitor/fire03.wav"
    }
  } )
  sound.Add( { name = "Weapon_USPS.ClipOut", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/pistol_s/usp/traitor/clipout.wav" } )
  sound.Add( { name = "Weapon_USPS.ClipIn", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/pistol_s/usp/traitor/clipin.wav" } )
  sound.Add( { name = "Weapon_USPS.SlideForward", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/pistol_s/usp/traitor/slideforward.wav" } )
  sound.Add( { name = "Weapon_USPS.SlideBack", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/pistol_s/usp/traitor/slideback.wav" } )
  sound.Add( { name = "Weapon_USPS.Draw", channel = CHAN_STATIC, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/pistol_s/usp/traitor/draw.wav" } )

SWEP.Base = "pistol_base"
DEFINE_BASECLASS("pistol_base")

SWEP.PrintName              = "USP-S | The Traitor"

SWEP.ViewModel				= Model( "models/weapons/pistol_s/usp/traitor/v_usps.mdl" )
SWEP.WorldModel				= Model( "models/weapons/pistol_s/usp/traitor/w_usps.mdl" )
SWEP.Icon                   = "vgui/ttt/kalashnikov/empress/weapon_kalash_empress"

SWEP.IronSightsPos			= Vector( -3.58, -3, 2.15 )
SWEP.IronSightsAng			= Vector( -0.75, 0, 0 )

SWEP.AmmoEnt                = "item_ammo_pistol_ttt"
SWEP.Primary.Ammo           = "Pistol"
SWEP.HoldType               = "Pistol"
SWEP.Kind                   = WEAPON_PISTOL                              -- WEAPON_HEAVY, WEAPON_PISTOL, WEAPON_NADE, WEAPON_EQUIP1, WEAPON_EQUIP2
SWEP.Spawnable 				= true

SWEP.Primary.Sound		= Sound( "Weapon_USPS.Fire" )