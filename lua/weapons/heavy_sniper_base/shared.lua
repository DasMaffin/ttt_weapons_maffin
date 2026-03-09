SWEP.Base = "scope_base"
DEFINE_BASECLASS("scope_base")

SWEP.Slot                   = 2                                         -- 0 = knife, 1 = pistol, 2 = smg, rifle, shotgun, sniper, machinegun
SWEP.Kind                   = WEAPON_HEAVY                              -- WEAPON_HEAVY, WEAPON_PISTOL, WEAPON_NADE, WEAPON_EQUIP1, WEAPON_EQUIP2
SWEP.HoldType               = "ar2"

SWEP.AmmoEnt                = "item_ammo_357_ttt"
SWEP.Primary.Ammo           = "357"                                    -- AlyxGun = revolver, 357 = 357 (sniper), Buckshot = box_buckshot (shotgun), Pistol = pistol, SMG1 = smg1
SWEP.Primary.Recoil         = 10
SWEP.Primary.Damage         = 101
SWEP.Primary.Delay          = 1.875
SWEP.Primary.Cone           = 0.25
SWEP.Primary.ADSBonus       = 0.001
SWEP.Primary.ClipSize       = 10
SWEP.Primary.DefaultClip    = 10
SWEP.Primary.Automatic      = false
SWEP.HeadshotMultiplier     = 3

SWEP.Secondary.ScopeZoomMin		= 5
SWEP.Secondary.ScopeZoomMax		= 12
SWEP.Secondary.ScopeZoom		= 12	
SWEP.Secondary.UseACOG			= false -- Choose one scope type
SWEP.Secondary.UseMilDot		= true	-- I mean it, only one	
SWEP.Secondary.UseSVD			= false	-- If you choose more than one, your scope will not show up at all
SWEP.Secondary.UseParabolic		= false	
SWEP.Secondary.UseElcan			= false
SWEP.Secondary.UseGreenDuplex	= false	

SWEP.ScopeScale 			= 0.5

function SWEP:SetupDataTables()
    self:NetworkVar("Int", 0, "ScopeZoom") -- slot 0, integer
	return BaseClass.SetupDataTables( self )
end

function SWEP:Initialize()
    self:SetScopeZoom(self.Secondary.ScopeZoom or self.Secondary.ScopeZoomMax)
    return BaseClass.Initialize(self)
end

function SWEP:PrimaryAttack()
    BaseClass.PrimaryAttack(self)
    
    if !self.Owner:KeyDown(IN_USE) and !self.Owner:KeyDown(IN_SPEED) then
		self.Owner:SetFOV( 0, 0.2 )
		self:SetIronsights(false, self.Owner)
		-- Set the ironsight false
		if CLIENT then return end
		self.Owner:DrawViewModel(true)
	end
end

function SWEP:ChangeScopeZoom(dir)
    net.Start("SWEP_ScopeZoom")
    net.WriteEntity(self)
    net.WriteInt(dir, 6)
    net.SendToServer()
end


if CLIENT then
    function SWEP:DrawHUD()
        if self:GetIronsights() then
            return BaseClass.DrawHUD(self)
        end
    end

    function SWEP:Deploy()        
        hook.Add("PlayerBindPress", "SWEP_MouseWheel", function(ply, bind, pressed)
            if not pressed then return end

            local wep = ply:GetActiveWeapon()
            if not IsValid(wep) then return end

            if bind == "invnext" and wep:GetIronsights() then
                wep:OnMouseWheelDown()
                return true -- block normal weapon switch
            elseif bind == "invprev" and wep:GetIronsights() then
                wep:OnMouseWheelUp()
                return true
            end
        end)
        return BaseClass.Deploy(self)
    end

    function SWEP:Holster()
        hook.Remove("PlayerBindPress", "SWEP_MouseWheel")
        return BaseClass.Holster(self)
    end

    function SWEP:OnMouseWheelUp()
        self:ChangeScopeZoom(1)
    end

    function SWEP:OnMouseWheelDown()
        self:ChangeScopeZoom(-1)
    end
elseif SERVER then
    util.AddNetworkString("SWEP_ScopeZoom")
    net.Receive("SWEP_ScopeZoom", function(_, ply)
        local wep = net.ReadEntity()
        local dir = net.ReadInt(6)

        if not IsValid(wep) then return end
        if wep.Owner ~= ply then return end -- security check
        if not wep:GetIronsights() then return end

        local newZoom = math.Clamp(wep:GetScopeZoom() + dir, wep.Secondary.ScopeZoomMin, wep.Secondary.ScopeZoomMax)
        wep.Secondary.ScopeZoom = newZoom
        wep:SetScopeZoom(newZoom)
        ply:SetFOV(75 / wep:GetScopeZoom(), 0.15)
    end)
end