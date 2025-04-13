sound.Add( { name = "Weapon_Nova.Fire", channel = CHAN_WEAPON, volume = 0.90, level = SNDLVL_GUNFIRE, sound = "weapons/shotgun/nova/fire.wav" } )
sound.Add( { 
  name = "Weapon_Nova.InsertShell",
  channel = CHAN_ITEM,
  volume = 0.70,
  level = SNDLVL_NORM,
  sound = { 
    "weapons/shotgun/nova/insertshell01.wav",
    "weapons/shotgun/nova/insertshell02.wav",
	"weapons/shotgun/nova/insertshell03.wav",
	"weapons/shotgun/nova/insertshell04.wav"
  }
} )
sound.Add( { name = "Weapon_Nova.Pump", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/shotgun/nova/pump.wav" } )
sound.Add( { name = "Weapon_Nova.Draw", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/shotgun/nova/draw.wav" } )

SWEP.Base = "shotgun_base"
DEFINE_BASECLASS("shotgun_base")

SWEP.PrintName              = "Nova | Hyperbeast"

SWEP.ViewModel				= Model( "models/weapons/shotgun/nova/hyperbeast/v_nova.mdl" )
SWEP.WorldModel				= Model( "models/weapons/shotgun/nova/hyperbeast/w_nova.mdl" )
SWEP.Icon                   = "vgui/ttt/kalashnikov/empress/weapon_kalash_empress"

SWEP.IronSightsPos			= Vector( -4.28, 0, 4.65 )
SWEP.IronSightsAng			= Vector( 0, 0, 0 )

SWEP.AmmoEnt                = "item_box_buckshot_ttt"
SWEP.Primary.Ammo           = "Buckshot"
SWEP.HoldType               = "Shotgun"
SWEP.Kind                   = WEAPON_HEAVY                              -- WEAPON_HEAVY, WEAPON_PISTOL, WEAPON_NADE, WEAPON_EQUIP1, WEAPON_EQUIP2
SWEP.ViewModelFlip          = false
SWEP.Spawnable 				= true
SWEP.Primary.Sound		    = Sound( "Weapon_Nova.Fire" ) 