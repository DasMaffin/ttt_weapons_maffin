sound.Add( { name = "TFA_CSGO_M4A4.Fire", channel = CHAN_WEAPON, volume = 0.90, level = SNDLVL_GUNFIRE, sound = { "weapons/m4a4/fire01.wav", "weapons/m4a4/fire02.wav", "weapons/m4a4/fire03.wav", "weapons/m4a4/fire04.wav" }} )
sound.Add( { name = "TFA_CSGO_M4A4.ClipOut", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/m4a4/clipout.wav" } )
sound.Add( { name = "TFA_CSGO_M4A4.ClipIn", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/m4a4/clipin.wav" } )
sound.Add( { name = "TFA_CSGO_M4A4.ClipHit", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/m4a4/cliphit.wav" } )
sound.Add( { name = "TFA_CSGO_M4A4.BoltForward", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/m4a4/boltforward.wav" } )
sound.Add( { name = "TFA_CSGO_M4A4.BoltBack", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/m4a4/boltback.wav" } )
sound.Add( { name = "TFA_CSGO_M4A4.Draw", channel = CHAN_STATIC, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/m4a4/draw.wav" } )
-- TODO Add these sounds to the animations

SWEP.Base = "m4a1_base"
DEFINE_BASECLASS("m4a1_base")

SWEP.PrintName              = "M4A4 | Dragon King"

SWEP.ViewModel				= Model("models/weapons/tfa_csgo/c_m4a4.mdl")
SWEP.WorldModel				= Model("models/weapons/tfa_csgo/w_m4a4.mdl")
SWEP.Icon                   = "vgui/ttt/m4/dragonking/icon_dragonking"

SWEP.IronSightsPos			= Vector( -5.19, 0, 2.8 )
SWEP.IronSightsAng			= Vector( 0, -0.1, -2 )

SWEP.AmmoEnt                = "item_ammo_pistol_ttt"
SWEP.Primary.Ammo           = "Pistol"
SWEP.HoldType               = "ar2"
SWEP.Kind                   = WEAPON_HEAVY                              -- WEAPON_HEAVY, WEAPON_PISTOL, WEAPON_NADE, WEAPON_EQUIP1, WEAPON_EQUIP2

SWEP.WElements = {
	["models/weapons/tfa_csgo/w_m4a4.mdl"] = { type = "Model", model = "models/weapons/tfa_csgo/w_m4a4.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(6, 1, -3.401), angle = Angle(0, 0, 180), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}