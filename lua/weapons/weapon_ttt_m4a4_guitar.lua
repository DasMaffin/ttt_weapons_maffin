sound.Add({ name = "Guitar_Shot", channel = CHAN_USER_BASE+10, volume = 1.0, sound = "weapons/m4a4/guitar/Guitar Fire.wav"})
sound.Add({ name = "Guitar.Out", channel = CHAN_ITEM, volume = 1.0, sound = "weapons/m4a4/guitar/Guitar Out.wav"})
sound.Add({ name = "Guitar.On", channel = CHAN_ITEM, volume = 1.0, sound = "weapons/m4a4/guitar/Guitar On.wav"})
sound.Add({ name = "Guitar.In", channel = CHAN_ITEM, volume = 1.0, sound = "weapons/m4a4/guitar/Guitar In.wav"})
sound.Add({ name = "Guitar.Deploy", channel = CHAN_ITEM, volume = 1.0, sound = "weapons/m4a4/guitar/Guitar Deploy.wav"})

SWEP.Base = "m4a1_base"
DEFINE_BASECLASS("m4a1_base")

SWEP.PrintName              = "M4A1 | Guitar"

SWEP.ViewModel				= Model("models/weapons/m4a4/guitar/v_smg_lmp.mdl")
SWEP.WorldModel				= Model("models/weapons/m4a4/guitar/w_smg_lmp.mdl")
SWEP.Icon                   = "vgui/ttt//m4/howl/weapon_m4a4howl"

SWEP.IronSightsPos = Vector(9.239, -5.119, 2.359)
SWEP.IronSightsAng = Vector(-0.145, 6.276, 0)

SWEP.AmmoEnt                = "item_ammo_pistol_ttt"
SWEP.Primary.Ammo           = "Pistol"
SWEP.HoldType               = "ar2"
SWEP.Kind                   = WEAPON_HEAVY                              -- WEAPON_HEAVY, WEAPON_PISTOL, WEAPON_NADE, WEAPON_EQUIP1, WEAPON_EQUIP2
SWEP.ViewModelFlip = true

SWEP.Primary.Sound			= Sound("Guitar_Shot")