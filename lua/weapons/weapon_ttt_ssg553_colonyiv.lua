sound.Add( { name = "Weapon_SG553.Fire", channel = CHAN_WEAPON, volume = 0.90, level = SNDLVL_GUNFIRE, sound = { "weapons/aug/sg553_colonyiv/fire01.wav", "weapons/aug/sg553_colonyiv/fire02.wav", "weapons/aug/sg553_colonyiv/fire03.wav", "weapons/aug/sg553_colonyiv/fire04.wav" } } )
sound.Add( { name = "Weapon_SG553.ClipOut", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/aug/sg553_colonyiv/clipout.wav" } )
sound.Add( { name = "Weapon_SG553.ClipIn", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/aug/sg553_colonyiv/clipin.wav" } )
sound.Add( { name = "Weapon_SG553.ClipHit", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/aug/sg553_colonyiv/cliphit.wav" } )
sound.Add( { name = "Weapon_SG553.BoltForward", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/aug/sg553_colonyiv/boltforward.wav" } )
sound.Add( { name = "Weapon_SG553.BoltBack", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/aug/sg553_colonyiv/boltback.wav" } )
sound.Add( { name = "Weapon_SG553.Draw", channel = CHAN_STATIC, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/aug/sg553_colonyiv/draw.wav" } )
sound.Add( { name = "Weapon_SG553.ZoomIn", channel = CHAN_STATIC, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/aug/sg553_colonyiv/zoomin.wav" } )
sound.Add( { name = "Weapon_SG553.ZoomOut", channel = CHAN_STATIC, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/aug/sg553_colonyiv/zoomout.wav" } )

SWEP.Base = "aug_base"
DEFINE_BASECLASS("aug_base")

SWEP.ClassName              = "weapon_ttt_ssg553_colonyiv"
SWEP.PrintName              = "SG 553 | Colony IV"

SWEP.ViewModel				= Model( "models/weapons/aug/sg553_colonyiv/v_sg553.mdl" )
SWEP.WorldModel				= Model( "models/weapons/aug/sg553_colonyiv/w_sg553.mdl" )
SWEP.Icon                   = "vgui/ttt/kalashnikov/empress/weapon_kalash_empress"

SWEP.IronSightsPos			= Vector( -5.15, -4, 3.4 )
SWEP.IronSightsAng			= Vector( -1, 0, 0 )

SWEP.AmmoEnt                = "item_ammo_smg1_ttt"
SWEP.Primary.Ammo           = "SMG1"
SWEP.HoldType               = "ar2"
SWEP.Kind                   = WEAPON_HEAVY                              -- WEAPON_HEAVY, WEAPON_PISTOL, WEAPON_NADE, WEAPON_EQUIP1, WEAPON_EQUIP2
SWEP.Spawnable 				= true


SWEP.Primary.Sound		= Sound( "Weapon_SG553.Fire" )