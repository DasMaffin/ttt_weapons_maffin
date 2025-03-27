sound.Add( { name = "Weapon_M4A4.Fire", channel = CHAN_WEAPON, volume = 0.90, level = SNDLVL_GUNFIRE, sound = { "weapons/m4a4/fire01.wav", "weapons/m4a4/fire02.wav", "weapons/m4a4/fire03.wav", "weapons/m4a4/fire04.wav" }} )
sound.Add( { name = "Weapon_M4A4.ClipOut", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/m4a4/clipout.wav" } )
sound.Add( { name = "Weapon_M4A4.ClipIn", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/m4a4/clipin.wav" } )
sound.Add( { name = "Weapon_M4A4.ClipHit", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/m4a4/cliphit.wav" } )
sound.Add( { name = "Weapon_M4A4.BoltForward", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/m4a4/boltforward.wav" } )
sound.Add( { name = "Weapon_M4A4.BoltBack", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/m4a4/boltback.wav" } )
sound.Add( { name = "Weapon_M4A4.Draw", channel = CHAN_STATIC, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/m4a4/draw.wav" } )

SWEP.Base = "m4a1_base"
DEFINE_BASECLASS("m4a1_base")

SWEP.PrintName              = "M4A4 | Howl"

SWEP.ViewModel				= Model("models/weapons/rif_m4a4/v_m4a4.mdl")
SWEP.WorldModel				= Model("models/weapons/rif_m4a4/w_m4a4.mdl")
SWEP.Icon                   = "vgui/ttt//m4/howl/weapon_m4a4howl"

SWEP.IronSightsPos			= Vector( -5.19, 0, 2.8 )
SWEP.IronSightsAng			= Vector( 0, -0.1, -2 )

SWEP.AmmoEnt                = "item_ammo_pistol_ttt"
SWEP.Primary.Ammo           = "Pistol"
SWEP.HoldType               = "ar2"
SWEP.Kind                   = WEAPON_HEAVY                              -- WEAPON_HEAVY, WEAPON_PISTOL, WEAPON_NADE, WEAPON_EQUIP1, WEAPON_EQUIP2