sound.Add({ name = "Temp_Shot", channel = CHAN_USER_BASE+10, volume = 1.0, sound = "weapons/heavy_smg/smg_tempest/SF_SMG_Fire.wav"})
sound.Add({ name = "SF_SMG.Out", channel = CHAN_ITEM, volume = 1.0, sound = "weapons/heavy_smg/smg_tempest/SF_SMG_Out.wav"})
sound.Add({ name = "SF_SMG.In_1", channel = CHAN_ITEM, volume = 1.0, sound = "weapons/heavy_smg/smg_tempest/SF_SMG_In_1.wav"})
sound.Add({ name = "SF_SMG.In_2", channel = CHAN_ITEM, volume = 1.0, sound = "weapons/heavy_smg/smg_tempest/SF_SMG_In_2.wav"})
sound.Add({ name = "SF_SMG.Deploy", channel = CHAN_ITEM, volume = 1.0, sound = "weapons/heavy_smg/smg_tempest/SF_SMG_Deploy.wav"})

SWEP.Base = "heavy_smg_base"
DEFINE_BASECLASS("heavy_smg_base")

SWEP.ClassName              = "weapon_ttt_smg_tempest"
SWEP.PrintName              = "SF SMG | Tempest"

SWEP.ViewModel				= Model( "models/weapons/heavy_smg/smg_tempest/v_rif_temps.mdl" )
SWEP.WorldModel				= Model( "models/weapons/heavy_smg/smg_tempest/w_rif_temps.mdl" )
SWEP.Icon                   = "vgui/ttt/kalashnikov/empress/weapon_kalash_empress"

SWEP.IronSightsPos = Vector(4.639, 0, 1)
SWEP.IronSightsAng = Vector(2.48, -0.276, 0)

SWEP.AmmoEnt                = "item_ammo_smg1_ttt"
SWEP.Primary.Ammo           = "SMG1"
SWEP.HoldType               = "smg"
SWEP.Kind                   = WEAPON_HEAVY                              -- WEAPON_HEAVY, WEAPON_PISTOL, WEAPON_NADE, WEAPON_EQUIP1, WEAPON_EQUIP2
SWEP.ViewModelFlip          = true
SWEP.Spawnable 				= true
SWEP.Primary.Sound		    = Sound( "Temp_Shot" ) 