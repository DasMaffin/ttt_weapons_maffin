sound.Add( { name = "Weapon_AUG.Fire", channel = CHAN_WEAPON, volume = 0.90, level = SNDLVL_GUNFIRE, sound = { "weapons/aug/bengal_tiger/fire01.wav", "weapons/aug/bengal_tiger/fire02.wav", "weapons/aug/bengal_tiger/fire03.wav", "weapons/aug/bengal_tiger/fire04.wav" } } )
sound.Add( { name = "Weapon_AUG.ClipOut", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/aug/bengal_tiger/clipout.wav" } )
sound.Add( { name = "Weapon_AUG.ClipIn", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/aug/bengal_tiger/clipin.wav" } )
sound.Add( { name = "Weapon_AUG.ClipHit", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/aug/bengal_tiger/cliphit.wav" } )
sound.Add( { name = "Weapon_AUG.BoltForward", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/aug/bengal_tiger/boltforward.wav" } )
sound.Add( { name = "Weapon_AUG.BoltBack", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/aug/bengal_tiger/boltback.wav" } )
sound.Add( { name = "Weapon_AUG.Draw", channel = CHAN_STATIC, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/aug/bengal_tiger/draw.wav" } )
sound.Add( { name = "Weapon_AUG.ZoomIn", channel = CHAN_STATIC, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/aug/bengal_tiger/zoomin.wav" } )
sound.Add( { name = "Weapon_AUG.ZoomOut", channel = CHAN_STATIC, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/aug/bengal_tiger/zoomout.wav" } )

SWEP.Base = "aug_base"
DEFINE_BASECLASS("aug_base")

SWEP.PrintName              = "AUG | Bengal Tiger"

SWEP.ViewModel				= Model( "models/weapons/aug/bengal_tiger/v_aug.mdl" )
SWEP.WorldModel				= Model( "models/weapons/aug/bengal_tiger/w_aug.mdl" )
SWEP.Icon                   = "vgui/ttt/kalashnikov/empress/weapon_kalash_empress"

SWEP.IronSightsPos			= Vector( -3.58, -3, 2.15 )
SWEP.IronSightsAng			= Vector( -0.75, 0, 0 )

SWEP.AmmoEnt                = "item_ammo_smg1_ttt"
SWEP.Primary.Ammo           = "SMG1"
SWEP.HoldType               = "ar2"
SWEP.Kind                   = WEAPON_HEAVY                              -- WEAPON_HEAVY, WEAPON_PISTOL, WEAPON_NADE, WEAPON_EQUIP1, WEAPON_EQUIP2
SWEP.Spawnable 				= true


SWEP.Primary.Sound		= Sound( "Weapon_AUG.Fire" )