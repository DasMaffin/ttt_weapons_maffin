sound.Add({ name = "pop_sound", channel = CHAN_USER_BASE+10, volume = 1.0, sound = "weapons/heavy_sniper/l96/dragon/G_MZC_AWM_FIRE.wav" }) 
sound.Add({ name = "Weapon_CFAWP.Bolt", channel = CHAN_ITEM, volume = 1.0, sound = "weapons/heavy_sniper/l96/dragon/G_RELOAD_AWM.wav" }) 
sound.Add({ name = "Weapon_CFAWP.Clipout", channel = CHAN_ITEM, volume = 1.0, sound = "weapons/heavy_sniper/l96/dragon/G_MZC_AWM_CLIPOUT.wav" }) 
sound.Add({ name = "Weapon_CFAWP.Clipin", channel = CHAN_ITEM, volume = 1.0, sound = "weapons/heavy_sniper/l96/dragon/G_MZC_AWM_CLIPIN.wav" })

SWEP.Base = "heavy_sniper_base"
DEFINE_BASECLASS("heavy_sniper_base")

SWEP.ClassName              = "weapon_ttt_l96_dragon"
SWEP.PrintName              = "L96 | Dragon"

SWEP.ViewModel				= Model( "models/weapons/heavy_sniper/l96/dragon/v_snip_awp.mdl" )
SWEP.WorldModel				= Model( "models/weapons/heavy_sniper/l96/dragon/w_snip_awm.mdl" )
SWEP.Icon                   = "vgui/ttt/kalashnikov/empress/weapon_kalash_empress"

SWEP.IronSightsPos			= Vector( 0, 0, 0 )
SWEP.IronSightsAng			= Vector( 0, 0, 0 )

SWEP.AmmoEnt                = "item_ammo_357_ttt"
SWEP.Primary.Ammo           = "357"
SWEP.HoldType               = "rpg"
SWEP.Kind                   = WEAPON_HEAVY                              -- WEAPON_HEAVY, WEAPON_PISTOL, WEAPON_NADE, WEAPON_EQUIP1, WEAPON_EQUIP2
SWEP.Spawnable 				= true
SWEP.ViewModelFlip          = false

SWEP.Primary.Sound		= Sound( "pop_sound" )