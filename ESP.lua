repeat task.wait() until game:IsLoaded()

local Keybind = shared.Keybind or "RightShift"
local collectionService = game:GetService("CollectionService")
local debris = game:GetService("Debris")
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local localPlayer = Players.LocalPlayer
local Camera = workspace.CurrentCamera

local Icons = {
    ["iron"] = "rbxassetid://6850537969",
    ["natures_essence_1"] = "rbxassetid://15286282857",
    ["crit_star"] = "rbxassetid://10165036155",
    ["vitality_star"] = "rbxassetid://10165045356",
    ["arrow"] = "rbxassetid://6034280261"
}

local CategoryColors = {
    ["Iron"] = Color3.fromRGB(150, 150, 150),
    ["Crit"] = Color3.fromRGB(255, 220, 0),
    ["Vitality"] = Color3.fromRGB(0, 180, 255),
    ["General"] = Color3.fromRGB(255, 255, 255),
    ["Player"] = Color3.fromRGB(255, 0, 0) 
}

local espobjs = {}
local playerESP = {}
local espfold = Instance.new("Folder", localPlayer.PlayerGui)
local gui = Instance.new("ScreenGui", localPlayer.PlayerGui)
gui.Name = "MasterESP"
gui.ResetOnSpawn = false

local hidden = false


local function clearPlayerESP(player)
    if playerESP[player] then
        if playerESP[player].highlight then playerESP[player].highlight:Destroy() end
        if playerESP[player].billboard then playerESP[player].billboard:Destroy() end
        playerESP[player] = nil
    end
end

local function addPlayerESP(player)
    if player == localPlayer then return end

    local function updateESP()
        clearPlayerESP(player)

        local isTeammate = player.Team ~= nil and player.Team == localPlayer.Team
        if isTeammate then return end

        local char = player.Character
        if not char then return end

        local highlight = Instance.new("Highlight")
        highlight.Name = "PlayerHighlight"
        highlight.FillTransparency = 1 
        highlight.OutlineColor = CategoryColors.Player
        highlight.OutlineTransparency = 0
        highlight.Adornee = char
        highlight.Parent = espfold
        
        local billboard = Instance.new("BillboardGui", espfold)
        billboard.Size = UDim2.new(0, 100, 0, 50)
        billboard.AlwaysOnTop = true
        billboard.StudsOffset = Vector3.new(0, 3, 0)
        billboard.Adornee = char:WaitForChild("Head", 5)

        local label = Instance.new("TextLabel", billboard)
        label.Size = UDim2.new(1, 0, 1, 0)
        label.BackgroundTransparency = 1
        label.Text = player.Name
        label.TextColor3 = CategoryColors.Player
        label.Font = Enum.Font.GothamBold
        label.TextSize = 14
        label.TextStrokeTransparency = 0.5

        playerESP[player] = {highlight = highlight, billboard = billboard, label = label}
    end

    player.CharacterAdded:Connect(updateESP)
    player:GetPropertyChangedSignal("Team"):Connect(updateESP)
    if player.Character then updateESP() end
end


localPlayer:GetPropertyChangedSignal("Team"):Connect(function()
    for _, p in pairs(Players:GetPlayers()) do
        addPlayerESP(p)
    end
end)


local function espadd(v, icon, category)
    if not v then return end
    local color = CategoryColors[category] or CategoryColors.General

    local billboard = Instance.new("BillboardGui", espfold)
    billboard.Size = UDim2.new(0, 50, 0, 50)
    billboard.StudsOffsetWorldSpace = Vector3.new(0, 3, 0)
    billboard.AlwaysOnTop = true
    billboard.Adornee = v

    local image = Instance.new("ImageLabel", billboard)
    image.BackgroundTransparency = 1
    image.Image = Icons[icon] or ""
    image.Size = UDim2.new(0, 35, 0, 35)
    image.AnchorPoint = Vector2.new(0.5, 0.5)
    image.Position = UDim2.new(0.5, 0, 0.4, 0)

    local distLabel = Instance.new("TextLabel", billboard)
    distLabel.BackgroundTransparency = 1
    distLabel.Size = UDim2.new(1, 0, 0, 15)
    distLabel.Position = UDim2.new(0.5, 0, 0.9, 0)
    distLabel.Font = Enum.Font.GothamBold
    distLabel.TextColor3 = color
    distLabel.TextSize = 12
    distLabel.TextStrokeTransparency = 0.5
    distLabel.Text = "..."

    local arrow = Instance.new("ImageLabel", gui)
    arrow.Size = UDim2.new(0, 25, 0, 25)
    arrow.AnchorPoint = Vector2.new(0.5, 0.5)
    arrow.BackgroundTransparency = 1
    arrow.Image = Icons["arrow"]
    arrow.ImageColor3 = color
    arrow.Visible = false

    espobjs[v] = {gui = billboard, img = image, text = distLabel, arrow = arrow, color = color}
end

RunService.RenderStepped:Connect(function()
    if hidden then return end
    local root = localPlayer.Character and localPlayer.Character:FindFirstChild("HumanoidRootPart")
    if not root then return end

  
    for part, data in pairs(espobjs) do
        if part and part.Parent then
            local pos, onScreen = Camera:WorldToViewportPoint(part.Position)
            local distance = (root.Position - part.Position).Magnitude
            data.text.Text = math.floor(distance) .. " studs"
            
            if not onScreen then
                data.arrow.Visible = true
                local screenCenter = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)
                local direction = (Vector2.new(pos.X, pos.Y) - screenCenter).Unit
                local clampedX = math.clamp(pos.X, 50, Camera.ViewportSize.X - 50)
                local clampedY = math.clamp(pos.Y, 50, Camera.ViewportSize.Y - 50)
                data.arrow.Position = UDim2.new(0, clampedX, 0, clampedY)
                data.arrow.Rotation = math.deg(math.atan2(direction.Y, direction.X)) + 90
            else
                data.arrow.Visible = false
            end
        else
            if data.arrow then data.arrow:Destroy() end
            if data.gui then data.gui:Destroy() end
            espobjs[part] = nil
        end
    end

   
    for player, data in pairs(playerESP) do
        if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            local dist = (root.Position - player.Character.HumanoidRootPart.Position).Magnitude
            data.label.Text = player.Name .. "\n[" .. math.floor(dist) .. "s]"
        else
         
            clearPlayerESP(player)
        end
    end
end)

--- SETUP ---
local function setup()
    local function add(tag, icon, cat, custom)
        if custom then
            for _, v in pairs(workspace:GetChildren()) do 
                if v.Name == tag then 
                    espadd(v.PrimaryPart or v:FindFirstChildWhichIsA("BasePart"), icon, cat) 
                end 
            end
        else
            for _, v in pairs(collectionService:GetTagged(tag)) do 
                espadd(v.PrimaryPart or v:FindFirstChildWhichIsA("BasePart"), icon, cat) 
            end
        end
    end

    add("hidden-metal", "iron", "Iron", false)
    add("treeOrb", "natures_essence_1", "General", false)
    add("CritStar", "crit_star", "Crit", true)
    add("VitalityStar", "vitality_star", "Vitality", true)

    for _, p in pairs(Players:GetPlayers()) do addPlayerESP(p) end
    Players.PlayerAdded:Connect(addPlayerESP)
    Players.PlayerRemoving:Connect(clearPlayerESP)
end

setup()