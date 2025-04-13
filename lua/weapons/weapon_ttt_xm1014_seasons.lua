sound.Add( { name = "Weapon_XM1014.Fire", channel = CHAN_WEAPON, volume = 0.90, level = SNDLVL_GUNFIRE, sound = "weapons/shotgun/xm1014/fire.wav" } )
sound.Add( { 
  name = "Weapon_XM1014.InsertShell",
  channel = CHAN_ITEM,
  volume = 0.70,
  level = SNDLVL_NORM,
  sound = { 
    "weapons/shotgun/xm1014/insertshell01.wav",
    "weapons/shotgun/xm1014/insertshell02.wav",
	"weapons/shotgun/xm1014/insertshell03.wav"
  }
} )
sound.Add( { name = "Weapon_XM1014.Pump", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/shotgun/xm1014/pump.wav" } )
sound.Add( { name = "Weapon_XM1014.Draw", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/shotgun/xm1014/draw.wav" } )

SWEP.Base = "shotgun_base"
DEFINE_BASECLASS("shotgun_base")

SWEP.PrintName              = "XM1014 | Seasons"

SWEP.ViewModel				= Model( "models/weapons/shotgun/xm1014/seasons/v_xm1014.mdl" )
SWEP.WorldModel				= Model( "models/weapons/shotgun/xm1014/seasons/w_xm1014.mdl" )
SWEP.Icon                   = "vgui/ttt/kalashnikov/empress/weapon_kalash_empress"

SWEP.IronSightsPos			= Vector( -4.3, 0, 4.65 )
SWEP.IronSightsAng			= Vector( 0.8, 0, 0 )

SWEP.AmmoEnt                = "item_box_buckshot_ttt"
SWEP.Primary.Ammo           = "Buckshot"
SWEP.HoldType               = "Shotgun"
SWEP.Kind                   = WEAPON_HEAVY                              -- WEAPON_HEAVY, WEAPON_PISTOL, WEAPON_NADE, WEAPON_EQUIP1, WEAPON_EQUIP2
SWEP.ViewModelFlip          = false
SWEP.Spawnable 				= true
SWEP.Primary.Sound		    = Sound( "Weapon_XM1014.Fire" ) 