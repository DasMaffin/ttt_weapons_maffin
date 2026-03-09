SWEP.Base = "pistol_base"
DEFINE_BASECLASS("pistol_base")

SWEP.ClassName              = "weapon_ttt_usps_neo_noir"
SWEP.PrintName              = "USP-S | Neo-Noir"

SWEP.ViewModel				= Model( "models/weapons/pistol_s/usp/neo_noir/v_pist_usp.mdl" )
SWEP.WorldModel				= Model( "models/weapons/pistol_s/usp/neo_noir/w_pist_223.mdl" )
SWEP.Icon                   = "vgui/ttt/kalashnikov/empress/weapon_kalash_empress"

SWEP.IronSightsPos = Vector( -5.3539, -10.9007, 3.8296 )
SWEP.IronSightsAng = Vector( 0, 0, 0 )

SWEP.AmmoEnt                = "item_ammo_pistol_ttt"
SWEP.Primary.Ammo           = "Pistol"
SWEP.HoldType               = "Pistol"
SWEP.Kind                   = WEAPON_PISTOL                              -- WEAPON_HEAVY, WEAPON_PISTOL, WEAPON_NADE, WEAPON_EQUIP1, WEAPON_EQUIP2
SWEP.Spawnable 				= true

SWEP.Primary.Sound		= Sound( "weapons/pistol_s/usp/neo_noir/usp_01.wav" )

-- TODO Make sounds play from animation in .qc file then we dont need these.
function SWEP:Reload()
    if (self:Clip1() == self.Primary.ClipSize or
        self:GetOwner():GetAmmoCount(self.Primary.Ammo) <= 0) then
       return
    end
    self:SetIronsights( false )
    timer.Simple(0.4,function() self.Weapon:EmitSound("weapons/pistol_s/usp/neo_noir/usp_clipout.wav") end)
    timer.Simple(0.9,function() self.Weapon:EmitSound("weapons/pistol_s/usp/neo_noir/usp_clipin.wav") end)
    timer.Simple(1.6,function() self.Weapon:EmitSound("weapons/pistol_s/usp/neo_noir/usp_slideback.wav") end)
    timer.Simple(1.8,function() self.Weapon:EmitSound("weapons/pistol_s/usp/neo_noir/usp_sliderelease.wav") end)
    self.Weapon:DefaultReload( ACT_VM_RELOAD_SILENCED );
    -- BaseClass.Reload(self)
end

function SWEP:Deploy()
    self.Weapon:SendWeaponAnim(ACT_VM_DRAW_SILENCED)
    self.Weapon:EmitSound("weapons/pistol_s/usp/neo_noir/usp_draw.wav")
    timer.Simple(0.3,function() self.Weapon:EmitSound("weapons/pistol_s/usp/neo_noir/usp_slideback.wav") end)
    timer.Simple(0.45,function() self.Weapon:EmitSound("weapons/pistol_s/usp/neo_noir/usp_sliderelease.wav") end)
    self:SetIronsights(false)
    BaseClass.Deploy(self)
end

function SWEP:ShootBullet( dmg, recoil, numbul, cone )
    BaseClass.ShootBullet(self, dmg, recoil, numbul, cone)
    self:SendWeaponAnim(ACT_VM_PRIMARYATTACK_SILENCED)
end




local IRONSIGHT_TIME = 0.25


function SWEP:GetViewModelPosition( pos, ang )

	if ( !self.IronSightsPos ) then return pos, ang end

	local bIron = self.Weapon:GetNetworkedBool( "Ironsights" )
	
	if ( bIron != self.bLastIron ) then
	
		self.bLastIron = bIron 
		self.fIronTime = CurTime()
		
		if ( bIron ) then 
			self.SwayScale 	= 0.3
			self.BobScale 	= 0.1
		else 
			self.SwayScale 	= 1.0
			self.BobScale 	= 1.0
		end
	
	end
	
	local fIronTime = self.fIronTime or 0

	if ( !bIron && fIronTime < CurTime() - IRONSIGHT_TIME ) then 
		return pos, ang 
	end
	
	local Mul = 1.0
	
	if ( fIronTime > CurTime() - IRONSIGHT_TIME ) then
	
		Mul = math.Clamp( (CurTime() - fIronTime) / IRONSIGHT_TIME, 0, 1 )
		
		if (!bIron) then Mul = 1 - Mul end
	
	end

	local Offset	= self.IronSightsPos
	
	if ( self.IronSightsAng ) then
	
		ang = ang * 1
		ang:RotateAroundAxis( ang:Right(), 		self.IronSightsAng.x * Mul )
		ang:RotateAroundAxis( ang:Up(), 		self.IronSightsAng.y * Mul )
		ang:RotateAroundAxis( ang:Forward(), 	self.IronSightsAng.z * Mul )
	
	
	end
	
	local Right 	= ang:Right()
	local Up 		= ang:Up()
	local Forward 	= ang:Forward()
	
	

	pos = pos + Offset.x * Right * Mul
	pos = pos + Offset.y * Forward * Mul
	pos = pos + Offset.z * Up * Mul

	return pos, ang
	
end

function SWEP:SetIronsights( b )

	self.Weapon:SetNetworkedBool( "Ironsights", b )

end


SWEP.NextSecondaryAttack = 0

function SWEP:SecondaryAttack()

	if ( !self.IronSightsPos ) then return end
	if ( self.NextSecondaryAttack > CurTime() ) then return end
	
	bIronsights = !self.Weapon:GetNetworkedBool( "Ironsights", false )
	
	self:SetIronsights( bIronsights )
	
	self.NextSecondaryAttack = CurTime() + 0.3
	
end


function SWEP:OnRestore()

	self.NextSecondaryAttack = 0
	self:SetIronsights( false )
	
end