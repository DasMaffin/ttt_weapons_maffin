SWEP.Base = "auto_sniper_base"
DEFINE_BASECLASS("auto_sniper_base")

SWEP.ClassName              = "weapon_ttt_xbow"
SWEP.PrintName              = "X-Bow"

SWEP.ViewModel				= Model( "models/weapons/auto_sniper/xbow/v_snip_xxbow.mdl" )
SWEP.WorldModel				= Model( "models/weapons/auto_sniper/xbow/w_snip_xxbow.mdl" )
SWEP.Icon                   = "vgui/ttt/kalashnikov/empress/weapon_kalash_empress"

SWEP.IronSightsPos = Vector(5.079, -4.016, 1.2)
SWEP.IronSightsAng = Vector(0, 0, 0)

SWEP.AmmoEnt                = "item_ammo_357_ttt"
SWEP.Primary.Ammo           = "357"
SWEP.HoldType               = "ar2"
SWEP.Kind                   = WEAPON_HEAVY                              -- WEAPON_HEAVY, WEAPON_PISTOL, WEAPON_NADE, WEAPON_EQUIP1, WEAPON_EQUIP2
SWEP.Spawnable 				= true
SWEP.ViewModelFlip          = true

SWEP.Primary.Sound			= Sound("weapons/Xbow/Crossbow_Fire.wav")