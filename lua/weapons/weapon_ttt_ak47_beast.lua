sound.Add( { name = "Weapon_AK47.Fire", channel = CHAN_WEAPON, volume = 0.90, level = SNDLVL_GUNFIRE, sound = "weapons/ak_beast/ak-1.wav" } )
sound.Add( { name = "Weapon_AKMP.ClipOut", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/ak_beast/ak_clipout.wav" } )
sound.Add( { name = "Weapon_AKMP.ClipIn", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/ak_beast/ak_clipin.wav" } )
sound.Add( { name = "Weapon_AKMP.BoltPull", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/ak_beast/ak_boltpull.wav" } )

SWEP.Base = "kalashnikov_base"
DEFINE_BASECLASS("kalashnikov_base")

SWEP.PrintName              = "AK-47 | Beast"

SWEP.ViewModel				= Model( "models/weapons/kalashnikov/beast/v_rif_ak47.mdl" )
SWEP.WorldModel				= Model( "models/weapons/kalashnikov/beast/w_rif_akmp.mdl" )
SWEP.Icon                   = "vgui/ttt/kalashnikov/empress/weapon_kalash_empress"

SWEP.IronSightsPos          = Vector(7.965, 0, 4.95)
SWEP.IronSightsAng          = Vector(-0.101, 3.569, 0)

SWEP.AmmoEnt                = "item_ammo_smg1_ttt"
SWEP.Primary.Ammo           = "SMG1"
SWEP.HoldType               = "ar2"
SWEP.Kind                   = WEAPON_HEAVY                              -- WEAPON_HEAVY, WEAPON_PISTOL, WEAPON_NADE, WEAPON_EQUIP1, WEAPON_EQUIP2
SWEP.Primary.Sound			= Sound("weapons/AK_Beast/ak-1.wav")
SWEP.ViewModelFlip          = true