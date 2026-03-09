sound.Add( { 
    name = "Weapon_Deagle.Fire",
    channel = CHAN_WEAPON,
    volume = 0.90,
    level = SNDLVL_GUNFIRE,
    sound = { 
      "weapons/deagle/blaze/fire01.wav",
      "weapons/deagle/blaze/fire02.wav"
    }
  } )
  sound.Add( { name = "Weapon_Deagle.ClipOut", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/deagle/blaze/clipout.wav" } )
  sound.Add( { name = "Weapon_Deagle.ClipIn", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/deagle/blaze/clipin.wav" } )
  sound.Add( { name = "Weapon_Deagle.SlideForward", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/deagle/blaze/slideforward.wav" } )
  sound.Add( { name = "Weapon_Deagle.SlideBack", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/deagle/blaze/slideback.wav" } )
  sound.Add( { name = "Weapon_Deagle.Draw", channel = CHAN_STATIC, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/deagle/blaze/draw.wav" } )
  sound.Add( { name = "Weapon_Deagle.Spin01", channel = CHAN_STATIC, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/deagle/blaze/spin01.wav" } )
  sound.Add( { name = "Weapon_Deagle.Spin02", channel = CHAN_STATIC, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/deagle/blaze/spin02.wav" } )
  sound.Add( { name = "Weapon_Deagle.Spin03", channel = CHAN_STATIC, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/deagle/blaze/spin03.wav" } )
  sound.Add( { name = "Weapon_Deagle.Spin04", channel = CHAN_STATIC, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/deagle/blaze/spin04.wav" } )
  sound.Add( { name = "Weapon_Deagle.Spin05", channel = CHAN_STATIC, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/deagle/blaze/spin05.wav" } )
  sound.Add( { name = "Weapon_Deagle.Spin06", channel = CHAN_STATIC, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/deagle/blaze/spin06.wav" } )
  sound.Add( { name = "Weapon_Deagle.Spin07", channel = CHAN_STATIC, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/deagle/blaze/spin07.wav" } )
  sound.Add( { name = "Weapon_Deagle.Spin08", channel = CHAN_STATIC, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/deagle/blaze/spin08.wav" } )
  sound.Add( { name = "Weapon_Deagle.Spin09", channel = CHAN_STATIC, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/deagle/blaze/spin09.wav" } )

SWEP.Base = "deagle_base"
DEFINE_BASECLASS("deagle_base")

SWEP.ClassName              = "weapon_ttt_deagle_blaze"
SWEP.PrintName              = "Deagle | Blaze"

SWEP.ViewModel				= Model( "models/weapons/deagle/blaze/v_deagle.mdl" )
SWEP.WorldModel				= Model( "models/weapons/deagle/blaze/w_deagle.mdl" )
SWEP.Icon                   = "vgui/ttt/kalashnikov/empress/weapon_kalash_empress"

SWEP.IronSightsPos			= Vector( -3.71, 0, 2.33 )
SWEP.IronSightsAng			= Vector( 0.75, 0.4, 0 )

SWEP.AmmoEnt                = "item_ammo_revolver_ttt"
SWEP.Primary.Ammo           = "AlyxGun"
SWEP.HoldType               = "revolver"
SWEP.Kind                   = WEAPON_PISTOL                              -- WEAPON_HEAVY, WEAPON_PISTOL, WEAPON_NADE, WEAPON_EQUIP1, WEAPON_EQUIP2