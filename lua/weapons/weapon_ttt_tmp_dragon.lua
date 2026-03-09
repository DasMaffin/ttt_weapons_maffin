sound.Add({ name = "TMP_Shot", channel = CHAN_USER_BASE+10, volume = 1.0, sound = "weapons/light_smg/tmp_dragon/Dragon TMP Fire.wav"})
sound.Add({ name = "Dragon TMP.In", channel = CHAN_ITEM, volume = 1.0, sound = "weapons/light_smg/tmp_dragon/Dragon TMP In.wav"})
sound.Add({ name = "Dragon TMP.Out", channel = CHAN_ITEM, volume = 1.0, sound = "weapons/light_smg/tmp_dragon/Dragon TMP Out.wav"})
sound.Add({ name = "Dragon TMP.Deploy", channel = CHAN_ITEM, volume = 1.0, sound = "weapons/light_smg/tmp_dragon/Dragon TMP Deploy.wav"})

SWEP.Base = "light_smg_base"
DEFINE_BASECLASS("light_smg_base")

SWEP.ClassName              = "weapon_ttt_tmp_dragon"
SWEP.PrintName              = "TMP | Dragon"

SWEP.ViewModel				= Model( "models/weapons/light_smg/tmp_dragon/v_smg_tmd.mdl" )
SWEP.WorldModel				= Model( "models/weapons/light_smg/tmp_dragon/w_smg_tmd.mdl" )
SWEP.Icon                   = "vgui/ttt/kalashnikov/empress/weapon_kalash_empress"

SWEP.IronSightsPos          = Vector(0,0,0)
SWEP.IronSightsAng          = Vector(0,0,0)

SWEP.AmmoEnt                = "item_ammo_smg1_ttt"
SWEP.Primary.Ammo           = "SMG1"
SWEP.HoldType               = "smg"
SWEP.Kind                   = WEAPON_HEAVY                              -- WEAPON_HEAVY, WEAPON_PISTOL, WEAPON_NADE, WEAPON_EQUIP1, WEAPON_EQUIP2
SWEP.ViewModelFlip          = true
SWEP.Spawnable 				= true
SWEP.Primary.Sound		    = Sound( "TMP_Shot" ) 