SWEP.Base = "maffin_base"
DEFINE_BASECLASS("maffin_base")

SWEP.Slot                   = 2                                         -- 0 = knife, 1 = pistol, 2 = smg, rifle, shotgun, sniper, machinegun
SWEP.Kind                   = WEAPON_HEAVY                              -- WEAPON_HEAVY, WEAPON_PISTOL, WEAPON_NADE, WEAPON_EQUIP1, WEAPON_EQUIP2
SWEP.HoldType               = "ar2"

SWEP.AmmoEnt                = "item_ammo_smg1_ttt"
SWEP.Primary.Ammo           = "SMG1"                                    -- AlyxGun = revolver, 357 = 357 (sniper), Buckshot = box_buckshot (shotgun), Pistol = pistol, SMG1 = smg1
SWEP.Primary.Recoil         = 1.2
SWEP.Primary.Damage         = 24
SWEP.Primary.Delay          = 0.17
SWEP.Primary.Cone           = 0.025 
SWEP.Primary.ADSBonus       = 0.4
SWEP.Primary.ClipSize       = 30
SWEP.Primary.DefaultClip    = 30
SWEP.Primary.Automatic      = true
SWEP.HeadshotMultiplier     = 1.8

SWEP.Secondary.ScopeZoom		= 8	
SWEP.Secondary.UseACOG			= false -- Choose one scope type
SWEP.Secondary.UseMilDot		= true	-- I mean it, only one	
SWEP.Secondary.UseSVD			= false	-- If you choose more than one, your scope will not show up at all
SWEP.Secondary.UseParabolic		= false	
SWEP.Secondary.UseElcan			= false
SWEP.Secondary.UseGreenDuplex	= false	

SWEP.ScopeScale 			= 0.5

function SWEP:SetZoom(state)
    if not (IsValid(self:GetOwner()) and self:GetOwner():IsPlayer()) then return end
    if state then
        self:GetOwner():SetFOV(35, 0.5)
    else
        self:GetOwner():SetFOV(0, 0.2)
    end
end

function SWEP:SecondaryAttack()
    if self:GetNextSecondaryFire() > CurTime() then return end
    self:SendWeaponAnim( ACT_VM_IDLE )

    local bIronsights = not self:GetIronsights()

    if bIronsights == true and !self.Owner:KeyDown(IN_SPEED) and not (self.Weapon:GetNWBool("Reloading")) then
        self.Owner:SetFOV( 75/self.Secondary.ScopeZoom, 0.15 )                      		
        self.IronSightsPos = self.SightsPos					-- Bring it up
        self.IronSightsAng = self.SightsAng					-- Bring it up
        self:SetIronsights(true, self.Owner)
        if CLIENT then return end
        self.Owner:DrawViewModel(false)
    elseif bIronsights == true and not (self.Weapon:GetNWBool("Reloading")) and self.Owner:KeyDown(IN_SPEED) then
        self.Weapon:SetNextPrimaryFire(CurTime()+0.3)				-- Make it so you can't shoot for another quarter second
        self.IronSightsPos = self.RunSightsPos					-- Hold it down
        self.IronSightsAng = self.RunSightsAng					-- Hold it down
        self:SetIronsights(true, self.Owner)					-- Set the ironsight true
        self.Owner:SetFOV( 0, 0.2 )
    end

	if (bIronsights == false || self.Owner:KeyDown(IN_SPEED)) and !self.Owner:KeyDown(IN_USE) and !self.Owner:KeyDown(IN_SPEED) then
		self.Owner:SetFOV( 0, 0.2 )
		self:SetIronsights(false, self.Owner)
		-- Set the ironsight false
		if CLIENT then return end
		self.Owner:DrawViewModel(true)
	end

    if bIronsights == true and !self.Owner:KeyDown(IN_USE) and !self.Owner:KeyDown(IN_SPEED) then
        self.SwayScale 	= 0.05
        self.BobScale 	= 0.05
    else
        self.SwayScale 	= 1.0
        self.BobScale 	= 1.0
    end


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

function SWEP:Initialize()

    if CLIENT then
		local iScreenWidth = surface.ScreenWidth()
		local iScreenHeight = surface.ScreenHeight()

        self.ScopeTable = {}
		self.ScopeTable.l = iScreenHeight*self.ScopeScale
		self.ScopeTable.x1 = 0.5*(iScreenWidth + self.ScopeTable.l)
		self.ScopeTable.y1 = 0.5*(iScreenHeight - self.ScopeTable.l)
		self.ScopeTable.x2 = self.ScopeTable.x1
		self.ScopeTable.y2 = 0.5*(iScreenHeight + self.ScopeTable.l)
		self.ScopeTable.x3 = 0.5*(iScreenWidth - self.ScopeTable.l)
		self.ScopeTable.y3 = self.ScopeTable.y2
		self.ScopeTable.x4 = self.ScopeTable.x3
		self.ScopeTable.y4 = self.ScopeTable.y1
		self.ScopeTable.l = (iScreenHeight + 1)*self.ScopeScale -- I don't know why this works, but it does.

        self.QuadTable = {}
		self.QuadTable.x1 = 0
		self.QuadTable.y1 = 0
		self.QuadTable.w1 = iScreenWidth
		self.QuadTable.h1 = 0.5*iScreenHeight - self.ScopeTable.l
		self.QuadTable.x2 = 0
		self.QuadTable.y2 = 0.5*iScreenHeight + self.ScopeTable.l
		self.QuadTable.w2 = self.QuadTable.w1
		self.QuadTable.h2 = self.QuadTable.h1
		self.QuadTable.x3 = 0
		self.QuadTable.y3 = 0
		self.QuadTable.w3 = 0.5*iScreenWidth - self.ScopeTable.l
		self.QuadTable.h3 = iScreenHeight
		self.QuadTable.x4 = 0.5*iScreenWidth + self.ScopeTable.l
		self.QuadTable.y4 = 0
		self.QuadTable.w4 = self.QuadTable.w3
		self.QuadTable.h4 = self.QuadTable.h3

        self.LensTable = {}
		self.LensTable.x = self.QuadTable.w3
		self.LensTable.y = self.QuadTable.h1
		self.LensTable.w = 2*self.ScopeTable.l
		self.LensTable.h = 2*self.ScopeTable.l
    end
    BaseClass.Initialize(self)
end

if CLIENT then
    function SWEP:DrawHUD()
        if engine.ActiveGamemode() == "terrortown" and self:GetIronsights() then
            if self.Secondary.UseACOG then
                -- Draw the FAKE SCOPE THANG
                surface.SetDrawColor(0, 0, 0, 255)
                surface.SetTexture(surface.GetTextureID("scope/gdcw_closedsight"))
                surface.DrawTexturedRect(self.LensTable.x, self.LensTable.y, self.LensTable.w, self.LensTable.h)
    
                -- Draw the CHEVRON
                surface.SetDrawColor(0, 0, 0, 255)
                surface.SetTexture(surface.GetTextureID("scope/gdcw_acogchevron"))
                surface.DrawTexturedRect(self.ReticleTable.x, self.ReticleTable.y, self.ReticleTable.w, self.ReticleTable.h)
    
                -- Draw the ACOG REFERENCE LINES
                surface.SetDrawColor(0, 0, 0, 255)
                surface.SetTexture(surface.GetTextureID("scope/gdcw_acogcross"))
                surface.DrawTexturedRect(self.ReticleTable.x, self.ReticleTable.y, self.ReticleTable.w, self.ReticleTable.h)
            end

            if self.Secondary.UseMilDot then
                -- Draw the MIL DOT SCOPE
                surface.SetDrawColor(0, 0, 0, 255)
                surface.SetTexture(surface.GetTextureID("scope/gdcw_scopesight"))
                surface.DrawTexturedRect(self.LensTable.x, self.LensTable.y, self.LensTable.w, self.LensTable.h)
            end

            if self.Secondary.UseSVD then
                -- Draw the SVD SCOPE
                surface.SetDrawColor(0, 0, 0, 255)
                surface.SetTexture(surface.GetTextureID("scope/gdcw_svdsight"))
                surface.DrawTexturedRect(self.LensTable.x, self.LensTable.y, self.LensTable.w, self.LensTable.h)
            end

            if self.Secondary.UseParabolic then
                -- Draw the PARABOLIC SCOPE
                surface.SetDrawColor(0, 0, 0, 255)
                surface.SetTexture(surface.GetTextureID("scope/gdcw_parabolicsight"))
                surface.DrawTexturedRect(self.LensTable.x, self.LensTable.y, self.LensTable.w, self.LensTable.h)
            end

            if self.Secondary.UseElcan then
                -- Draw the RETICLE
                surface.SetDrawColor(0, 0, 0, 255)
                surface.SetTexture(surface.GetTextureID("scope/gdcw_elcanreticle"))
                surface.DrawTexturedRect(self.ReticleTable.x, self.ReticleTable.y, self.ReticleTable.w, self.ReticleTable.h)
                
                -- Draw the ELCAN SCOPE
                surface.SetDrawColor(0, 0, 0, 255)
                surface.SetTexture(surface.GetTextureID("scope/gdcw_elcansight"))
                surface.DrawTexturedRect(self.LensTable.x, self.LensTable.y, self.LensTable.w, self.LensTable.h)
            end

            if self.Secondary.UseGreenDuplex then
                -- Draw the RETICLE
                surface.SetDrawColor(0, 0, 0, 255)
                surface.SetTexture(surface.GetTextureID("scope/gdcw_nvgilluminatedduplex"))
                surface.DrawTexturedRect(self.ReticleTable.x, self.ReticleTable.y, self.ReticleTable.w, self.ReticleTable.h)

                -- Draw the SCOPE
                surface.SetDrawColor(0, 0, 0, 255)
                surface.SetTexture(surface.GetTextureID("scope/gdcw_closedsight"))
                surface.DrawTexturedRect(self.LensTable.x, self.LensTable.y, self.LensTable.w, self.LensTable.h)
            end
            
            if self.Secondary.UseAimpoint then
                -- Draw the RETICLE
                surface.SetDrawColor(0, 0, 0, 255)
                surface.SetTexture(surface.GetTextureID("scope/aimpoint"))
                surface.DrawTexturedRect(self.ReticleTable.x, self.ReticleTable.y, self.ReticleTable.w, self.ReticleTable.h)

                -- Draw the SCOPE
                surface.SetDrawColor(0, 0, 0, 255)
                surface.SetTexture(surface.GetTextureID("scope/gdcw_closedsight"))
                surface.DrawTexturedRect(self.LensTable.x, self.LensTable.y, self.LensTable.w, self.LensTable.h)
            
            end
            
            if self.Secondary.UseMatador then
            
                -- Draw the SCOPE
                surface.SetDrawColor(0, 0, 0, 255)
                surface.SetTexture(surface.GetTextureID("scope/rocketscope"))
                surface.DrawTexturedRect(self.LensTable.x-1, self.LensTable.y, self.LensTable.w, self.LensTable.h)

            end
            return
        end

        return BaseClass.DrawHUD(self)
    end

    if engine.ActiveGamemode() == "terrortown" then
        function SWEP:AdjustMouseSensitivity()
            return (self:GetIronsights() and 0.2) or nil
        end
    end
end