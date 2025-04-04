sound.Add({ name = "awp_asiimov.shot", channel = CHAN_USER_BASE+10, volume = 1.0, sound = "weapons/heavy_sniper/awp/asiimov/awp1.wav" }) 
sound.Add({ name = "WEAPON_ASI.boltup", channel = CHAN_ITEM, volume = 1.0, sound = "weapons/heavy_sniper/awp/asiimov/awp_draw.wav" }) 
sound.Add({ name = "WEAPON_ASI.boltback", channel = CHAN_ITEM, volume = 1.0, sound = "weapons/heavy_sniper/awp/asiimov/awp_boltback.wav" }) 
sound.Add({ name = "WEAPON_ASI.boltforward", channel = CHAN_ITEM, volume = 1.0, sound = "weapons/heavy_sniper/awp/asiimov/awp_boltforward.wav" }) 
sound.Add({ name = "WEAPON_ASI.clipout", channel = CHAN_ITEM, volume = 1.0, sound = "weapons/heavy_sniper/awp/asiimov/awp_clipout.wav" }) 
sound.Add({ name = "WEAPON_ASI.clipin", channel = CHAN_ITEM, volume = 1.0, sound = "weapons/heavy_sniper/awp/asiimov/awp_clipin.wav" }) 
sound.Add({ name = "Weapon_awp_cliphit", channel = CHAN_ITEM, volume = 1.0, sound = "weapons/heavy_sniper/awp/asiimov/awp_cliphit.wav" })

SWEP.Base = "heavy_sniper_base"
DEFINE_BASECLASS("heavy_sniper_base")

SWEP.PrintName              = "AWP | Asiimov"

SWEP.ViewModel				= Model( "models/weapons/heavy_sniper/awp/asiimov/v_asii_awp.mdl" )
SWEP.WorldModel				= Model( "models/weapons/heavy_sniper/awp/asiimov/w_asii_awp.mdl" )
SWEP.Icon                   = "vgui/ttt/kalashnikov/empress/weapon_kalash_empress"

SWEP.IronSightsPos			= Vector( 0, 0, 0 )
SWEP.IronSightsAng			= Vector( 0, 0, 0 )

SWEP.AmmoEnt                = "item_ammo_357_ttt"
SWEP.Primary.Ammo           = "357"
SWEP.HoldType               = "rpg"
SWEP.Kind                   = WEAPON_HEAVY                              -- WEAPON_HEAVY, WEAPON_PISTOL, WEAPON_NADE, WEAPON_EQUIP1, WEAPON_EQUIP2
SWEP.Spawnable 				= true
SWEP.ViewModelFlip          = true

SWEP.Primary.Sound		= Sound( "awp_asiimov.shot" )