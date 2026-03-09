sound.Add( { 
    name = "Weapon_Bizon.Fire",
    channel = CHAN_WEAPON,
    volume = 0.90,
    level = SNDLVL_GUNFIRE,
    sound = { 
      "weapons/light_smg/bizon/fire01.wav",
      "weapons/light_smg/bizon/fire02.wav"
    }
  } )
  sound.Add( { name = "Weapon_Bizon.ClipOut", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/light_smg/bizon/clipout.wav" } )
  sound.Add( { name = "Weapon_Bizon.ClipIn", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/light_smg/bizon/clipin.wav" } )
  sound.Add( { name = "Weapon_Bizon.BoltForward", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/light_smg/bizon/boltforward.wav" } )
  sound.Add( { name = "Weapon_Bizon.BoltBack", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/light_smg/bizon/boltback.wav" } )
  sound.Add( { name = "Weapon_Bizon.Draw", channel = CHAN_STATIC, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/light_smg/bizon/draw.wav" } )

SWEP.Base = "light_smg_base"
DEFINE_BASECLASS("light_smg_base")

SWEP.ClassName              = "weapon_ttt_bizon_candy_apple"
SWEP.PrintName              = "PP-Bizon | Candy Apple"

SWEP.ViewModel				= Model( "models/weapons/light_smg/bizon/candy_apple/v_bizon.mdl" )
SWEP.WorldModel				= Model( "models/weapons/light_smg/bizon/candy_apple/w_bizon.mdl" )
SWEP.Icon                   = "vgui/ttt/kalashnikov/empress/weapon_kalash_empress"

SWEP.IronSightsPos			= Vector( -5.1, 0, 2.67 )
SWEP.IronSightsAng			= Vector( 0.9, 0, 0 )

SWEP.AmmoEnt                = "item_ammo_smg1_ttt"
SWEP.Primary.Ammo           = "SMG1"
SWEP.HoldType               = "ar2"
SWEP.Kind                   = WEAPON_HEAVY                              -- WEAPON_HEAVY, WEAPON_PISTOL, WEAPON_NADE, WEAPON_EQUIP1, WEAPON_EQUIP2
SWEP.ViewModelFlip          = false
SWEP.Spawnable 				= true
SWEP.Primary.Sound		    = Sound( "Weapon_Bizon.Fire" ) 