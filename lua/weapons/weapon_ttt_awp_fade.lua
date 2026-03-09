sound.Add( { 
    name = "Weapon_AWP.Fire",
    channel = CHAN_WEAPON,
    volume = 0.90,
    level = SNDLVL_GUNFIRE,
    sound = { 
      "weapons/heavy_sniper/awp/fire01.wav",
      "weapons/heavy_sniper/awp/fire02.wav"
    }
  } )
  sound.Add( { name = "Weapon_AWP.ClipOut", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/heavy_sniper/awp/clipout.wav" } )
  sound.Add( { name = "Weapon_AWP.ClipIn", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/heavy_sniper/awp/clipin.wav" } )
  sound.Add( { name = "Weapon_AWP.ClipHit", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/heavy_sniper/awp/cliphit.wav" } )
  sound.Add( { name = "Weapon_AWP.BoltForward", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/heavy_sniper/awp/boltforward.wav" } )
  sound.Add( { name = "Weapon_AWP.BoltBack", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/heavy_sniper/awp/boltback.wav" } )
  sound.Add( { name = "Weapon_AWP.Draw", channel = CHAN_STATIC, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/heavy_sniper/awp/draw.wav" } )
  sound.Add( { name = "Weapon_AWP.Zoom", channel = CHAN_STATIC, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/heavy_sniper/awp/zoom.wav" } )

SWEP.Base = "heavy_sniper_base"
DEFINE_BASECLASS("heavy_sniper_base")

SWEP.ClassName              = "weapon_ttt_awp_fade"
SWEP.PrintName              = "AWP | Fade"

SWEP.ViewModel				= Model( "models/weapons/heavy_sniper/awp/fade/v_awp.mdl" )
SWEP.WorldModel				= Model( "models/weapons/heavy_sniper/awp/fade/w_awp.mdl" )
SWEP.Icon                   = "vgui/ttt/kalashnikov/empress/weapon_kalash_empress"

SWEP.IronSightsPos			= Vector( 0, 0, 0 )
SWEP.IronSightsAng			= Vector( 0, 0, 0 )

SWEP.AmmoEnt                = "item_ammo_357_ttt"
SWEP.Primary.Ammo           = "357"
SWEP.HoldType               = "rpg"
SWEP.Kind                   = WEAPON_HEAVY                              -- WEAPON_HEAVY, WEAPON_PISTOL, WEAPON_NADE, WEAPON_EQUIP1, WEAPON_EQUIP2
SWEP.Spawnable 				= true
SWEP.ViewModelFlip          = false

SWEP.Primary.Sound		= Sound( "Weapon_AWP.Fire" )