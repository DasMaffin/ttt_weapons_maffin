----------========== Fields that are to be overridden by the child class ==========----------

SWEP.HoldType               = ""
SWEP.PrintName              = "Maffin Base"
SWEP.Slot                   = 0                 -- 0 = knife, 1 = pistol, 2 = smg, rifle, shotgun, sniper, machinegun
SWEP.Kind                   = WEAPON_PISTOL     -- WEAPON_HEAVY, WEAPON_PISTOL, WEAPON_NADE, WEAPON_EQUIP1, WEAPON_EQUIP2

SWEP.AmmoEnt                = ""
SWEP.Primary.Ammo           = ""                -- AlyxGun = revolver, 357 = 357 (sniper), Buckshot = box_buckshot (shotgun), Pistol = pistol, SMG1 = smg1
SWEP.Primary.Recoil         = 0
SWEP.Primary.Damage         = 0
SWEP.Primary.Delay          = 0
SWEP.Primary.Cone           = 0
SWEP.Primary.ClipSize       = 0
SWEP.Primary.DefaultClip    = 0
SWEP.Primary.Automatic      = false
SWEP.Primary.Sound          = nil               -- The shooting sound.

SWEP.HeadshotMultiplier = 2.7

SWEP.ViewModel              = ""
SWEP.WorldModel             = ""

----------==========                                                     ==========----------

----------========== Fields that may be overridden by the child class ==========----------

SWEP.ViewModelFlip          = false
SWEP.Icon                   = "vgui/ttt/icon_deagle"
SWEP.AutoSpawnable          = false
SWEP.IronSightsPos          = nil               -- Vector(-5.95, -4, 2.799)
SWEP.IronSightsAng          = nil               -- Vector(0, 0, 0)
SWEP.Primary.ADSBonus       = 0                 -- Proprietary field to remove the magic number from the accuracy bonus when sighting.

----------==========                                                  ==========----------

----------========== DO NOT TOUCH Fields ==========----------

SWEP.Primary.ClipMax        = 36                -- We set this so in ttt bullets get saved on weapon drop.
SWEP.Author                 = "Maffin"
SWEP.UseHands               = true
DEFINE_BASECLASS("weapon_tttbase")
SWEP.Base                   = "weapon_tttbase"

function SWEP:Reload()
	if self:Clip1() == self.Primary.ClipSize or self:GetOwner():GetAmmoCount( self.Primary.Ammo ) <= 0 then return end
	self:DefaultReload( ACT_VM_RELOAD )
	self:SetZoom( false )
	
	self:SetIronsights( false )
	BaseClass.Reload(self)
end

function SWEP:Think()
	if self:GetOwner():KeyPressed( IN_RELOAD ) and not self:GetIronsights() then
		self:SendWeaponAnim( ACT_VM_FIDGET )
    end
	BaseClass.Think(self)
end

SWEP.Primary.WasMultiplied = false

function SWEP:GetPrimaryCone()
	if self:GetIronsights() and self.Primary.WasMultiplied == false then
		self.Primary.WasMultiplied = true
		self.Primary.Cone = self.Primary.Cone * self.Primary.ADSBonus		
	elseif not self:GetIronsights() and self.Primary.WasMultiplied == true then
		self.Primary.WasMultiplied = false
		self.Primary.Cone = self.Primary.Cone / self.Primary.ADSBonus
	end
    return self.Primary.Cone
end

----------==========                     ==========----------