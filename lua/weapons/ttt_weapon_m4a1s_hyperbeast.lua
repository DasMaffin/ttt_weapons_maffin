sound.Add( { name = "Weapon_M4A1S.Fire", channel = CHAN_WEAPON, volume = 0.90, level = SNDLVL_GUNFIRE, sound = "weapons/m4a1s/fire.wav" } )
sound.Add( { name = "Weapon_M4A1S.ClipOut", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/m4a1s/clipout.wav" } )
sound.Add( { name = "Weapon_M4A1S.ClipIn", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/m4a1s/clipin.wav" } )
sound.Add( { name = "Weapon_M4A1S.ClipHit", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/m4a1s/cliphit.wav" } )
sound.Add( { name = "Weapon_M4A1S.BoltForward", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/m4a1s/boltforward.wav" } )
sound.Add( { name = "Weapon_M4A1S.BoltBack", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/m4a1s/boltback.wav" } )
sound.Add( { name = "Weapon_M4A1S.Draw", channel = CHAN_STATIC, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/m4a1s/draw.wav" } )

SWEP.Base = "m4a1s_base"
DEFINE_BASECLASS("m4a1s_base")

SWEP.PrintName              = "M4A1-S | Hyper Beast"

SWEP.ViewModel				= Model("models/weapons/rif_m4a1s/v_m4a1s.mdl")
SWEP.WorldModel				= Model("models/weapons/rif_m4a1s/w_m4a1s.mdl")
SWEP.Icon                   = "vgui/ttt/weapon_m4a1_hyperbeast"

SWEP.IronSightsPos			= Vector( -5.265, 0, 2.17 )
SWEP.IronSightsAng			= Vector( 1.2, -0.1, 0 )

SWEP.AmmoEnt                = "item_ammo_pistol_ttt"
SWEP.Primary.Ammo           = "Pistol"
SWEP.HoldType               = "ar2"
SWEP.Kind                   = WEAPON_HEAVY                              -- WEAPON_HEAVY, WEAPON_PISTOL, WEAPON_NADE, WEAPON_EQUIP1, WEAPON_EQUIP2