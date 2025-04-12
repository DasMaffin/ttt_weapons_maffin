sound.Add( { 
name = "Weapon_P2000.Fire",
channel = CHAN_WEAPON,
volume = 0.90,
level = SNDLVL_GUNFIRE,
sound = { 
    "weapons/pistol/p2000_scorpion/fire01.wav",
    "weapons/pistol/p2000_scorpion/fire02.wav",
    "weapons/pistol/p2000_scorpion/fire03.wav"
}
} )
sound.Add( { name = "Weapon_P2000.ClipOut", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/pistol/p2000_scorpion/clipout.wav" } )
sound.Add( { name = "Weapon_P2000.ClipIn", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/pistol/p2000_scorpion/clipin.wav" } )
sound.Add( { name = "Weapon_P2000.SlideForward", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/pistol/p2000_scorpion/slideforward.wav" } )
sound.Add( { name = "Weapon_P2000.SlideBack", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/pistol/p2000_scorpion/slideback.wav" } )
sound.Add( { name = "Weapon_P2000.Draw", channel = CHAN_STATIC, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/pistol/p2000_scorpion/draw.wav" } )

SWEP.Base = "pistol_base"
DEFINE_BASECLASS("pistol_base")

SWEP.PrintName              = "P2000 | Scorpion"

SWEP.ViewModel				= Model( "models/weapons/pistol/p2000_scorpion/v_p2000.mdl" )
SWEP.WorldModel				= Model( "models/weapons/pistol/p2000_scorpion/w_p2000.mdl" )
SWEP.Icon                   = "vgui/ttt/kalashnikov/empress/weapon_kalash_empress"

SWEP.IronSightsPos			= Vector( -3.58, -3, 2.15 )
SWEP.IronSightsAng			= Vector( -0.75, 0, 0 )

SWEP.AmmoEnt                = "item_ammo_pistol_ttt"
SWEP.Primary.Ammo           = "Pistol"
SWEP.HoldType               = "Pistol"
SWEP.Kind                   = WEAPON_PISTOL                              -- WEAPON_HEAVY, WEAPON_PISTOL, WEAPON_NADE, WEAPON_EQUIP1, WEAPON_EQUIP2
SWEP.Spawnable 				= true

SWEP.Primary.Sound		= Sound( "Weapon_P2000.Fire" )