sound.Add( { 
name = "Weapon_UMP45.Fire",
channel = CHAN_WEAPON,
volume = 0.90,
level = SNDLVL_GUNFIRE,
sound = { 
    "weapons/heavy_smg/ump45/fire01.wav",
    "weapons/heavy_smg/ump45/fire02.wav"
}
} )
sound.Add( { name = "Weapon_UMP45.ClipOut", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/heavy_smg/ump45/clipout.wav" } )
sound.Add( { name = "Weapon_UMP45.ClipIn", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/heavy_smg/ump45/clipin.wav" } )
sound.Add( { name = "Weapon_UMP45.BoltForward", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/heavy_smg/ump45/boltforward.wav" } )
sound.Add( { name = "Weapon_UMP45.BoltBack", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/heavy_smg/ump45/boltback.wav" } )
sound.Add( { name = "Weapon_UMP45.Draw", channel = CHAN_STATIC, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/heavy_smg/ump45/draw.wav" } )

SWEP.Base = "heavy_smg_base"
DEFINE_BASECLASS("heavy_smg_base")

SWEP.ClassName              = "weapon_ttt_ump45_blaze"
SWEP.PrintName              = "UMP-45 | Blaze"

SWEP.ViewModel				= Model( "models/weapons/heavy_smg/ump45/blaze/v_ump45.mdl" )
SWEP.WorldModel				= Model( "models/weapons/heavy_smg/ump45/blaze/w_ump45.mdl" )
SWEP.Icon                   = "vgui/ttt/kalashnikov/empress/weapon_kalash_empress"

SWEP.IronSightsPos			= Vector( -5.12, 0, 3 )
SWEP.IronSightsAng			= Vector( 1.1, 0, 0 )

SWEP.AmmoEnt                = "item_ammo_smg1_ttt"
SWEP.Primary.Ammo           = "SMG1"
SWEP.HoldType               = "smg"
SWEP.Kind                   = WEAPON_HEAVY                              -- WEAPON_HEAVY, WEAPON_PISTOL, WEAPON_NADE, WEAPON_EQUIP1, WEAPON_EQUIP2
SWEP.ViewModelFlip          = false
SWEP.Spawnable 				= true
SWEP.Primary.Sound		    = Sound( "Weapon_UMP45.Fire" ) 