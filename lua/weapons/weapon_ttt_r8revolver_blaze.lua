sound.Add( { name = "Weapon_Revolver.Fire", channel = CHAN_WEAPON, volume = 0.90, level = SNDLVL_NORM, sound = "weapons/r8/fire.wav" } )
sound.Add( { name = "Weapon_Revolver.ClipOut", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/r8/clipout.wav" } )
sound.Add( { name = "Weapon_Revolver.ClipIn", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/r8/clipin.wav" } )
sound.Add( { name = "Weapon_Revolver.SlideForward", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/r8/slideforward.wav" } )
sound.Add( { name = "Weapon_Revolver.SlideBack", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/r8/slideback.wav" } )
sound.Add( { name = "Weapon_Revolver.Draw", channel = CHAN_STATIC, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/r8/draw.wav" } )
sound.Add( { name = "Weapon_Revolver.Prepare", channel = CHAN_STATIC, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/r8/prepare.wav" } )
sound.Add( { name = "Weapon_Revolver.Hammer", channel = CHAN_STATIC, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/r8/hammer.wav" } )

--TODO Make a proper r8 base.
SWEP.Base = "deagle_base"
DEFINE_BASECLASS("deagle_base")

SWEP.ClassName              = "weapon_ttt_r8revolver_blaze"
SWEP.PrintName              = "R8 Revolver | Blaze"

SWEP.ViewModel				= Model( "models/weapons/r8/blaze/v_revolver.mdl" )
SWEP.WorldModel				= Model( "models/weapons/r8/blaze/w_revolver.mdl" )
SWEP.Icon                   = "vgui/ttt/kalashnikov/empress/weapon_kalash_empress"

SWEP.IronSightsPos			= Vector( -3.72, 0, 2.95 )
SWEP.IronSightsAng			= Vector( 0, -0.4, 0 )

SWEP.AmmoEnt                = "item_ammo_revolver_ttt"
SWEP.Primary.Ammo           = "AlyxGun"
SWEP.HoldType               = "revolver"
SWEP.Kind                   = WEAPON_PISTOL                              -- WEAPON_HEAVY, WEAPON_PISTOL, WEAPON_NADE, WEAPON_EQUIP1, WEAPON_EQUIP2