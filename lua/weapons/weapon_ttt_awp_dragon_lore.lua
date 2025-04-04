sound.Add({ name = "dragon_shot_sound", channel = CHAN_USER_BASE+10, volume = 1.0, sound = "weapons/heavy_sniper/awp/dragon_lore/dragonfire.wav" })
sound.Add( { name = "Weapon_AWP.ClipOut", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/heavy_sniper/awp/clipout.wav" } )
sound.Add( { name = "Weapon_AWP.ClipIn", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/heavy_sniper/awp/clipin.wav" } )
sound.Add( { name = "Weapon_AWP.ClipHit", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/heavy_sniper/awp/cliphit.wav" } )
sound.Add( { name = "Weapon_AWP.BoltForward", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/heavy_sniper/awp/boltforward.wav" } )
sound.Add( { name = "Weapon_AWP.BoltBack", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/heavy_sniper/awp/boltback.wav" } )
sound.Add( { name = "Weapon_AWP.Draw", channel = CHAN_STATIC, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/heavy_sniper/awp/draw.wav" } )
sound.Add( { name = "Weapon_AWP.Zoom", channel = CHAN_STATIC, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/heavy_sniper/awp/zoom.wav" } )

SWEP.Base = "heavy_sniper_base"
DEFINE_BASECLASS("heavy_sniper_base")

SWEP.PrintName              = "AWP | Dragon Lore"

SWEP.ViewModel				= Model( "models/weapons/heavy_sniper/awp/dragon_lore/v_cloutawp.mdl" )
SWEP.WorldModel				= Model( "models/weapons/heavy_sniper/awp/dragon_lore/w_cloutawp.mdl" )
SWEP.Icon                   = "vgui/ttt/kalashnikov/empress/weapon_kalash_empress"

SWEP.IronSightsPos			= Vector( 0, 0, 0 )
SWEP.IronSightsAng			= Vector( 0, 0, 0 )

SWEP.AmmoEnt                = "item_ammo_357_ttt"
SWEP.Primary.Ammo           = "357"
SWEP.HoldType               = "rpg"
SWEP.Kind                   = WEAPON_HEAVY                              -- WEAPON_HEAVY, WEAPON_PISTOL, WEAPON_NADE, WEAPON_EQUIP1, WEAPON_EQUIP2
SWEP.Spawnable 				= true
SWEP.ViewModelFlip          = true

SWEP.Primary.Sound		= Sound( "dragon_shot_sound" )