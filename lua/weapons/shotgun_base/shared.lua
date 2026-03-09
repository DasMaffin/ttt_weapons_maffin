SWEP.Base = "maffin_base"
DEFINE_BASECLASS("maffin_base")

SWEP.Slot                   = 2                                         -- 0 = knife, 1 = pistol, 2 = smg, rifle, shotgun, sniper, machinegun
SWEP.Kind                   = WEAPON_HEAVY                              -- WEAPON_HEAVY, WEAPON_PISTOL, WEAPON_NADE, WEAPON_EQUIP1, WEAPON_EQUIP2
SWEP.HoldType               = "shotgun"

SWEP.AmmoEnt                = "item_box_buckshot_ttt"
SWEP.Primary.Ammo           = "Buckshot"                                    -- AlyxGun = revolver, 357 = 357 (sniper), Buckshot = box_buckshot (shotgun), Pistol = pistol, SMG1 = smg1
SWEP.Primary.Recoil         = 1.2
SWEP.Primary.Damage         = 11
SWEP.Primary.Delay          = 0.857
SWEP.Primary.Cone           = 0.18 
SWEP.Primary.ADSBonus       = 0.85
SWEP.Primary.ClipSize       = 8
SWEP.Primary.DefaultClip    = 8
SWEP.Primary.Automatic      = true
SWEP.Primary.NumShots       = 14
SWEP.HeadshotMultiplier     = 2

function SWEP:SetZoom(state)
    if not (IsValid(self:GetOwner()) and self:GetOwner():IsPlayer()) then return end
    if state then
        self:GetOwner():SetFOV(35, 0.5)
    else
        self:GetOwner():SetFOV(0, 0.2)
    end
end

function SWEP:SecondaryAttack()
    if not self.IronSightsPos then return end
    if self:GetNextSecondaryFire() > CurTime() then return end
    self:SendWeaponAnim( ACT_VM_IDLE )

    local bIronsights = not self:GetIronsights()

    self:SetIronsights( bIronsights )

    self:SetZoom( bIronsights )

    self:SetNextSecondaryFire( CurTime() + 0.3 )
end

function SWEP:PreDrop()
    self:SetZoom(false)
    self:SetIronsights(false)
    return BaseClass.PreDrop(self)
end

function SWEP:Holster()
    self:SetIronsights(false)
    self:SetZoom(false)
    return true
end

if CLIENT then
    function SWEP:DrawHUD()
        if self:GetIronsights() then return end

        return BaseClass.DrawHUD(self)
    end

    function SWEP:AdjustMouseSensitivity()
        return (self:GetIronsights() and 0.2) or nil
    end
end









function SWEP:SetupDataTables()
	self:NetworkVar( "Float", 0, "LastFireTime" )
	self:NetworkVar( "Float", 1, "InspectTime" )
	--Ironsights
	self:NetworkVar( "Bool", 2, "IronsightsPredicted" )
	self:NetworkVar( "Float", 2, "IronsightsTime" )
	--Shotgun
	self:NetworkVar("Bool", 3, "Reloading")
	self:NetworkVar("Float", 3, "ReloadTimer")
end

function SWEP:Think()
	if self:GetReloading() then
		if self:GetOwner():KeyDown( IN_ATTACK ) then
			self:FinishReload()
			return
		end

		if self:GetReloadTimer() <= CurTime() then
			if self:GetOwner():GetAmmoCount( self.Primary.Ammo ) <= 0 then
				self:FinishReload()
			elseif self:Clip1() < self.Primary.ClipSize then
				self:PerformReload()
			else
				self:FinishReload()
			end
			return
		end
	end
	return BaseClass.Think( self )
end

function SWEP:CanPrimaryAttack()
	if self.Owner:WaterLevel() > 2 then
		self:SetNextPrimaryFire( CurTime() + 0.2 )
		self:EmitSound( self.Primary.EmptySound )
		return false
	end
	if self:Clip1() <= 0 then
		self:SetNextPrimaryFire( CurTime() + 0.2 )
		self:EmitSound( self.Primary.EmptySound )
		--self:StartReload()
		return false
	end
	return true
end

function SWEP:Reload()
	if self:GetReloading() then return end
	
	if self:Clip1() < self.Primary.ClipSize and self:GetOwner():GetAmmoCount( self.Primary.Ammo ) > 0 then
		if self:StartReload() then return end
	end
end

function SWEP:StartReload()
	if self:GetReloading() then return false end

	self:SetNextPrimaryFire( CurTime() + self.Primary.Delay )

	local ply = self:GetOwner()
	if not ply or ply:GetAmmoCount(self.Primary.Ammo) <= 0 then return false end

	if self:Clip1() >= self.Primary.ClipSize then return false end

	self:SendWeaponAnim( ACT_SHOTGUN_RELOAD_START )


	self:SetIronsights( false )
	self:SetZoom( false )
	self:SetInspectTime( CurTime() + self:SequenceDuration() )
	self:SetReloadTimer(CurTime() + self:SequenceDuration())

	self:SetReloading(true)

	return true
end

function SWEP:PerformReload()
	local ply = self:GetOwner()

	self:SetNextPrimaryFire( CurTime() + self.Primary.Delay )
	self:SetInspectTime( CurTime() + self:SequenceDuration() )

	if not ply or ply:GetAmmoCount(self.Primary.Ammo) <= 0 then return end

	if self:Clip1() >= self.Primary.ClipSize then return end

	self:GetOwner():RemoveAmmo( 1, self.Primary.Ammo, false )
	self:SetClip1( self:Clip1() + 1 )

	self:SendWeaponAnim( ACT_VM_RELOAD )

	self:SetInspectTime( CurTime() + self:SequenceDuration() )
	self:SetReloadTimer( CurTime() + self:SequenceDuration() )
end

function SWEP:FinishReload()
	self:SetReloading( false )
	self:SendWeaponAnim( ACT_SHOTGUN_RELOAD_FINISH )

	self:SetInspectTime( CurTime() + self:SequenceDuration() )
	self:SetReloadTimer( CurTime() + self:SequenceDuration() )
end

function SWEP:Deploy()
	self:SetReloading( false )
	self:SetReloadTimer( 0 )
	return BaseClass.Deploy( self )
end