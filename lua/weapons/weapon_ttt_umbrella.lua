sound.Add({ name = "M3_Shot", channel = CHAN_USER_BASE+10, volume = 1.0, sound = "weapons/shotgun/m3_umbrella/Umbrella Gun Fire.wav" }) 
sound.Add({ name = "Umbrella Gun.Insert", channel = CHAN_ITEM, volume = 1.0, sound = "weapons/shotgun/m3_umbrella/Umbrella Gun Insert.wav" }) 
sound.Add({ name = "Umbrella Gun.After Reload", channel = CHAN_ITEM, volume = 1.0, sound = "weapons/shotgun/m3_umbrella/Umbrella Gun After Reload.wav" }) 
sound.Add({ name = "Umbrella Gun.Start Reload", channel = CHAN_ITEM, volume = 1.0, sound = "weapons/shotgun/m3_umbrella/Umbrella Gun Start Reload.wav" }) 
sound.Add({ name = "Umbrella Gun.Draw", channel = CHAN_ITEM, volume = 1.0, sound = "weapons/shotgun/m3_umbrella/Umbrella Gun Draw.wav" })

SWEP.Base = "shotgun_base"
DEFINE_BASECLASS("shotgun_base")

SWEP.ClassName              = "weapon_ttt_umbrella"
SWEP.PrintName              = "M3 | Umbrella"

SWEP.ViewModel				= Model( "models/weapons/shotgun/m3_umbrella/v_shot_m3umbrela.mdl" )
SWEP.WorldModel				= Model( "models/weapons/shotgun/m3_umbrella/w_shot_m3umbrela.mdl" )
SWEP.Icon                   = "vgui/ttt/kalashnikov/empress/weapon_kalash_empress"

SWEP.IronSightsPos = Vector(3.359, 0, 2.519)
SWEP.IronSightsAng = Vector(-1.043, 0.488, 0)

SWEP.AmmoEnt                = "item_box_buckshot_ttt"
SWEP.Primary.Ammo           = "Buckshot"
SWEP.HoldType               = "Shotgun"
SWEP.Kind                   = WEAPON_HEAVY                              -- WEAPON_HEAVY, WEAPON_PISTOL, WEAPON_NADE, WEAPON_EQUIP1, WEAPON_EQUIP2
SWEP.ViewModelFlip          = true
SWEP.Spawnable 				= true
SWEP.Primary.Sound		    = Sound( "M3_Shot" ) 