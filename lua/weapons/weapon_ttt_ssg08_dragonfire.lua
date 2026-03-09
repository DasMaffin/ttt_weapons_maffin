sound.Add({ name = "ssg08.Single", channel = CHAN_USER_BASE+10, volume = 1.0, sound = "weapons/light_sniper/ssg_08/dragonfire/shoot.wav" }) 
sound.Add({ name = "ssg08_dragon.boltback", channel = CHAN_ITEM, volume = 1.0, sound = "weapons/light_sniper/ssg_08/dragonfire/boltback.wav" }) 
sound.Add({ name = "ssg08_dragon.boltforward", channel = CHAN_ITEM, volume = 1.0, sound = "weapons/light_sniper/ssg_08/dragonfire/boltforward.wav" }) 
sound.Add({ name = "ssg08_dragon.clipin", channel = CHAN_ITEM, volume = 1.0, sound = "weapons/light_sniper/ssg_08/dragonfire/clipin.wav" }) 
sound.Add({ name = "ssg08_dragon.clipout", channel = CHAN_ITEM, volume = 1.0, sound = "weapons/light_sniper/ssg_08/dragonfire/clipout.wav" }) 
sound.Add({ name = "ssg08_dragon.cliphit", channel = CHAN_ITEM, volume = 1.0, sound = "weapons/light_sniper/ssg_08/dragonfire/cliphit.wav" }) 
sound.Add({ name = "ssg08_dragon.draw", channel = CHAN_ITEM, volume = 1.0, sound = "weapons/light_sniper/ssg_08/dragonfire/draw.wav" })

SWEP.Base = "light_sniper_base"
DEFINE_BASECLASS("light_sniper_base")

SWEP.ClassName              = "weapon_ttt_ssg08_dragonfire"
SWEP.PrintName              = "SSG-08 | Dragonfire"

SWEP.ViewModel				= Model( "models/weapons/light_sniper/ssg_08/dragonfire/v_ssg08_drgn.mdl" )
SWEP.WorldModel				= Model( "models/weapons/light_sniper/ssg_08/dragonfire/w_ssg08_drgn.mdl" )
SWEP.Icon                   = "vgui/ttt/kalashnikov/empress/weapon_kalash_empress"

SWEP.IronSightsPos          = Vector (2.4537, 1.0923, 0.2696)
SWEP.IronSightsAng          = Vector (0.0186, -0.0547, 0)

SWEP.AmmoEnt                = "item_ammo_357_ttt"
SWEP.Primary.Ammo           = "357"
SWEP.HoldType               = "ar2"
SWEP.Kind                   = WEAPON_HEAVY                              -- WEAPON_HEAVY, WEAPON_PISTOL, WEAPON_NADE, WEAPON_EQUIP1, WEAPON_EQUIP2
SWEP.Spawnable 				= true
SWEP.ViewModelFlip          = false

SWEP.Primary.Sound			= Sound("ssg08.Single")