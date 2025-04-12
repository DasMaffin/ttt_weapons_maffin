sound.Add( { 
    name = "Weapon_Glock.Fire",
    channel = CHAN_WEAPON,
    volume = 0.90,
    level = SNDLVL_GUNFIRE,
    sound = { 
      "weapons/pistol/glock18_candy_apple/fire01.wav",
      "weapons/pistol/glock18_candy_apple/fire02.wav"
    }
  } )
  sound.Add( { name = "Weapon_Glock.ClipOut", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/pistol/glock18_candy_apple/clipout.wav" } )
  sound.Add( { name = "Weapon_Glock.ClipIn", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/pistol/glock18_candy_apple/clipin.wav" } )
  sound.Add( { name = "Weapon_Glock.SlideForward", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/pistol/glock18_candy_apple/slideforward.wav" } )
  sound.Add( { name = "Weapon_Glock.SlideBack", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/pistol/glock18_candy_apple/slideback.wav" } )
  sound.Add( { name = "Weapon_Glock.Draw", channel = CHAN_STATIC, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/pistol/glock18_candy_apple/draw.wav" } )

SWEP.Base = "pistol_base"
DEFINE_BASECLASS("pistol_base")

SWEP.PrintName              = "Glock-18 | Candy Apple"

SWEP.ViewModel				      = Model( "models/weapons/pistol/glock18_candy_apple/v_glock18.mdl" )
SWEP.WorldModel				      = Model( "models/weapons/pistol/glock18_candy_apple/w_glock18.mdl" )
SWEP.Icon                   = "vgui/ttt/kalashnikov/empress/weapon_kalash_empress"

SWEP.IronSightsPos			= Vector( -3.58, -3, 2.15 )
SWEP.IronSightsAng			= Vector( -0.75, 0, 0 )

SWEP.AmmoEnt                = "item_ammo_pistol_ttt"
SWEP.Primary.Ammo           = "Pistol"
SWEP.HoldType               = "Pistol"
SWEP.Kind                   = WEAPON_PISTOL                              -- WEAPON_HEAVY, WEAPON_PISTOL, WEAPON_NADE, WEAPON_EQUIP1, WEAPON_EQUIP2
SWEP.Spawnable 				= true

SWEP.Primary.Sound		= Sound( "Weapon_Glock.Fire" )