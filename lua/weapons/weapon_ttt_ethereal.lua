sound.Add({
	name = 			"E_Shot",
	channel = 		CHAN_USER_BASE+10, --see how this is a different channel? Gunshots go here
	volume = 		1.0,
	sound = 			"weapons/kalashnikov/ethereal/SF Ethereal Fire.wav"
})

sound.Add({
	name = 			"SF Ethereal.Deploy",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/E_Blastkalashnikov/etherealer/SF Ethereal Deploy.wav"
})

sound.Add({
	name = 			"SF Ethereal.Reload",
	channel = 		CHAN_ITEM,
	volume = 		1.0,
	sound = 			"weapons/kalashnikov/ethereal/SF Ethereal Reload.wav"
})

SWEP.Base = "kalashnikov_base"
DEFINE_BASECLASS("kalashnikov_base")

SWEP.ClassName              = "weapon_ttt_ethereal"
SWEP.PrintName              = "SF Ethereal"

SWEP.ViewModel				= Model( "models/weapons/kalashnikov/ethereal/v_rif_ethe.mdl" )
SWEP.WorldModel				= Model( "models/weapons/kalashnikov/ethereal/w_rif_ethe.mdl" )
SWEP.Icon                   = "vgui/ttt/kalashnikov/empress/weapon_kalash_empress"

SWEP.IronSightsPos			= Vector( -4.98, 0, 2.77 )
SWEP.IronSightsAng			= Vector( 1.1, 0.14, -2 )

SWEP.AmmoEnt                = "item_ammo_smg1_ttt"
SWEP.Primary.Ammo           = "SMG1"
SWEP.HoldType               = "ar2"
SWEP.Kind                   = WEAPON_HEAVY                              -- WEAPON_HEAVY, WEAPON_PISTOL, WEAPON_NADE, WEAPON_EQUIP1, WEAPON_EQUIP2
SWEP.ViewModelFlip			= true
SWEP.Primary.Sound          = Sound("E_Shot")               -- The shooting sound.