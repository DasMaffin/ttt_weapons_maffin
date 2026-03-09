sound.Add({ name = "gunshot_sound", channel = CHAN_USER_BASE+10, volume = 1.0, sound = "weapons/heavy_smg/g36c_balrog/B5_fire.wav"})
sound.Add({ name = "B5.Out", channel = CHAN_ITEM, volume = 1.0, sound = "weapons/heavy_smg/g36c_balrog/B5_Out.wav"})
sound.Add({ name = "B5.In_1", channel = CHAN_ITEM, volume = 1.0, sound = "weapons/heavy_smg/g36c_balrog/B5_In1.wav"})
sound.Add({ name = "B5.In_2", channel = CHAN_ITEM, volume = 1.0, sound = "weapons/heavy_smg/g36c_balrog/B5_In2.wav"})
sound.Add({ name = "B5.Deploy", channel = CHAN_ITEM, volume = 1.0, sound = "weapons/heavy_smg/g36c_balrog/B5_Deploy.wav"})

SWEP.Base = "heavy_smg_base"
DEFINE_BASECLASS("heavy_smg_base")

SWEP.ClassName              = "weapon_ttt_g36c_balrogv"
SWEP.PrintName              = "G36C | Balrog V"

SWEP.ViewModel				= Model( "models/weapons/heavy_smg/g36c_balrog/v_rifl_g36b.mdl" )
SWEP.WorldModel				= Model( "models/weapons/w_smg_ump45.mdl" )
SWEP.Icon                   = "vgui/ttt/kalashnikov/empress/weapon_kalash_empress"

SWEP.IronSightsPos          = Vector(4.159, 0, 0.2)
SWEP.IronSightsAng          = Vector(0, 0, 0)

SWEP.AmmoEnt                = "item_ammo_smg1_ttt"
SWEP.Primary.Ammo           = "SMG1"
SWEP.HoldType               = "smg"
SWEP.Kind                   = WEAPON_HEAVY                              -- WEAPON_HEAVY, WEAPON_PISTOL, WEAPON_NADE, WEAPON_EQUIP1, WEAPON_EQUIP2
SWEP.ViewModelFlip          = true
SWEP.Spawnable 				= true
SWEP.Primary.Sound		    = Sound( "gunshot_sound" ) 