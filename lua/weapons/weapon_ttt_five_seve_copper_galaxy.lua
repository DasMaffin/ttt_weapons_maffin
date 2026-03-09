sound.Add( { name = "Weapon_FiveSeven.Fire", channel = CHAN_WEAPON, volume = 0.90, level = SNDLVL_GUNFIRE, sound = "weapons/pistol/five_seven_copper_galaxy/fire.wav" } )
sound.Add( { name = "Weapon_FiveSeven.ClipOut", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/pistol/five_seven_copper_galaxy/clipout.wav" } )
sound.Add( { name = "Weapon_FiveSeven.ClipIn", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/pistol/five_seven_copper_galaxy/clipin.wav" } )
sound.Add( { name = "Weapon_FiveSeven.SlideForward", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/pistol/five_seven_copper_galaxy/slideforward.wav" } )
sound.Add( { name = "Weapon_FiveSeven.SlideBack", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/pistol/five_seven_copper_galaxy/slideback.wav" } )
sound.Add( { name = "Weapon_FiveSeven.Draw", channel = CHAN_STATIC, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/pistol/five_seven_copper_galaxy/draw.wav" } )

SWEP.Base = "pistol_base"
DEFINE_BASECLASS("pistol_base")

SWEP.ClassName              = "weapon_ttt_five_seve_copper_galaxy"
SWEP.PrintName              = "Five-SeveN | Copper Galaxy"

SWEP.ViewModel				= Model( "models/weapons/pistol/five_seven_copper_galaxy/v_fiveseven.mdl" )
SWEP.WorldModel				= Model( "models/weapons/pistol/five_seven_copper_galaxy/w_fiveseven.mdl" )
SWEP.Icon                   = "vgui/ttt/kalashnikov/empress/weapon_kalash_empress"

SWEP.IronSightsPos			= Vector( -3.58, -3, 2.15 )
SWEP.IronSightsAng			= Vector( -0.75, 0, 0 )

SWEP.AmmoEnt                = "item_ammo_pistol_ttt"
SWEP.Primary.Ammo           = "Pistol"
SWEP.HoldType               = "Pistol"
SWEP.Kind                   = WEAPON_PISTOL                              -- WEAPON_HEAVY, WEAPON_PISTOL, WEAPON_NADE, WEAPON_EQUIP1, WEAPON_EQUIP2
SWEP.Spawnable 				= true

SWEP.Primary.Sound		= Sound( "Weapon_FiveSeven.Fire" )