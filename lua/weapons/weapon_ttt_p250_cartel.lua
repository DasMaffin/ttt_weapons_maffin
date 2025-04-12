sound.Add( { name = "Weapon_P250.Fire", channel = CHAN_WEAPON, volume = 0.90, level = SNDLVL_GUNFIRE, sound = "weapons/pistol/p250_cartel/fire.wav" } )
sound.Add( { name = "Weapon_P250.ClipOut", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/pistol/p250_cartel/clipout.wav" } )
sound.Add( { name = "Weapon_P250.ClipIn", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/pistol/p250_cartel/clipin.wav" } )
sound.Add( { name = "Weapon_P250.SlideForward", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/pistol/p250_cartel/slideforward.wav" } )
sound.Add( { name = "Weapon_P250.SlideBack", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/pistol/p250_cartel/slideback.wav" } )
sound.Add( { name = "Weapon_P250.Draw", channel = CHAN_STATIC, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/pistol/p250_cartel/draw.wav" } )

SWEP.Base = "pistol_base"
DEFINE_BASECLASS("pistol_base")

SWEP.PrintName              = "P250 | Cartel"

SWEP.ViewModel				= Model( "models/weapons/pistol/p250_cartel/v_p250.mdl" )
SWEP.WorldModel				= Model( "models/weapons/pistol/p250_cartel/w_p250.mdl" )
SWEP.Icon                   = "vgui/ttt/kalashnikov/empress/weapon_kalash_empress"

SWEP.IronSightsPos			= Vector( -3.58, -3, 2.15 )
SWEP.IronSightsAng			= Vector( -0.75, 0, 0 )

SWEP.AmmoEnt                = "item_ammo_pistol_ttt"
SWEP.Primary.Ammo           = "Pistol"
SWEP.HoldType               = "Pistol"
SWEP.Kind                   = WEAPON_PISTOL                              -- WEAPON_HEAVY, WEAPON_PISTOL, WEAPON_NADE, WEAPON_EQUIP1, WEAPON_EQUIP2
SWEP.Spawnable 				= true

SWEP.Primary.Sound		= Sound( "Weapon_P250.Fire" )