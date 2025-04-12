sound.Add( { 
    name = "Weapon_pistols/dual_berettas_duelist.Fire",
    channel = CHAN_WEAPON,
    volume = 0.90,
    level = SNDLVL_GUNFIRE,
    sound = { 
      "weapons/pistol/dual_berettas_duelist/fire01.wav",
      "weapons/pistol/dual_berettas_duelist/fire02.wav",
      "weapons/pistol/dual_berettas_duelist/fire03.wav",
      "weapons/pistol/dual_berettas_duelist/fire04.wav"
    }
  } )
  sound.Add( { name = "Weapon_pistols/dual_berettas_duelist.ClipOut", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/pistol/dual_berettas_duelist/clipout.wav" } )
  sound.Add( { name = "Weapon_pistols/dual_berettas_duelist.LeftClipIn", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/pistol/dual_berettas_duelist/leftclipin.wav" } )
  sound.Add( { name = "Weapon_pistols/dual_berettas_duelist.RightClipIn", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/pistol/dual_berettas_duelist/rightclipin.wav" } )
  sound.Add( { name = "Weapon_pistols/dual_berettas_duelist.SlideForward", channel = CHAN_ITEM, volume = 0.70, level = SNDLVL_NORM, sound = "weapons/pistol/dual_berettas_duelist/slideforward.wav" } )
  sound.Add( { name = "Weapon_pistols/dual_berettas_duelist.Tap", channel = CHAN_ITEM, volume = 0.50, level = SNDLVL_NORM, sound = "weapons/pistol/dual_berettas_duelist/tap.wav" } )
  sound.Add( { name = "Weapon_pistols/dual_berettas_duelist.Draw", channel = CHAN_STATIC, volume = 0.50, level = SNDLVL_NORM, sound = "weapons/pistol/dual_berettas_duelist/draw.wav" } )

SWEP.Base = "pistol_base"
DEFINE_BASECLASS("pistol_base")

SWEP.PrintName              = "Dual Berettas | Duelist"

SWEP.ViewModel				= Model( "models/weapons/pistol/dual_berettas_duelist/v_elite.mdl" )
SWEP.WorldModel				= Model( "models/weapons/pistol/dual_berettas_duelist/w_elite.mdl" )
SWEP.Icon                   = "vgui/ttt/kalashnikov/empress/weapon_kalash_empress"

SWEP.IronSightsPos			= Vector( -3.58, -3, 2.15 )
SWEP.IronSightsAng			= Vector( -0.75, 0, 0 )

SWEP.AmmoEnt                = "item_ammo_pistol_ttt"
SWEP.Primary.Ammo           = "Pistol"
SWEP.HoldType               = "Pistol"
SWEP.Kind                   = WEAPON_PISTOL                              -- WEAPON_HEAVY, WEAPON_PISTOL, WEAPON_NADE, WEAPON_EQUIP1, WEAPON_EQUIP2
SWEP.Spawnable 				= true

SWEP.Primary.Sound		= Sound( "Weapon_pistols/dual_berettas_duelist.Fire" )

function SWEP:SetupDataTables()
	self:NetworkVar( "Bool", 0, "UseLeft" )
	return BaseClass.SetupDataTables( self )
end

function SWEP:PrimaryAttack()
    if not self:CanPrimaryAttack() then return end
	BaseClass.PrimaryAttack( self )
	self:SetUseLeft( !self:GetUseLeft() )

    if self:GetUseLeft() then
		self:SendWeaponAnim( ACT_VM_PRIMARYATTACK )
	else
		self:SendWeaponAnim( ACT_VM_SECONDARYATTACK )
	end
end