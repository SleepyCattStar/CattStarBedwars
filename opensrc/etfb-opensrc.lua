-- This was in the development phase when this script was released in cattstar  

local TS = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local UIS = game:GetService("UserInputService")
local Players = game:GetService("Players")

local Player = Players.LocalPlayer
local Mouse = Player:GetMouse()
local ClickConnection
local GodmodeConnection

local AllZones = {
    ["Zone1"] = CFrame.new(248, 3.38, -139.28),
    ["Zone2"] = CFrame.new(355.4, 3.32, -129),
    ["Zone3"] = CFrame.new(486, 3.4, -132),
    ["Zone4"] = CFrame.new(662, 3.5, -132),
    ["Zone5"] = CFrame.new(901, 3.6, -132),
    ["Zone6"] = CFrame.new(1569, 3.7, -131),
}

local ZoneOrder = {"Zone1", "Zone2", "Zone3", "Zone4", "Zone5", "Zone6"}


local SafeZone = CFrame.new(131, 3, 15)

local function smoothTween(targetCFrame, customSpeed)
    local char = Player.Character
    if not char or not char:FindFirstChild("HumanoidRootPart") then return end
    
    local root = char.HumanoidRootPart
    local distance = (root.Position - targetCFrame.Position).Magnitude
    local speed = customSpeed or (Fluent and Fluent.Options.TweenSpeed.Value) or 350
    local duration = distance / speed
    
    local info = TweenInfo.new(duration, Enum.EasingStyle.Linear)
    local tween = TS:Create(root, info, {CFrame = targetCFrame})
    
    tween:Play()
    return tween
end

local function tweenToZone(targetZone)
    local char = Player.Character
    local root = char and char:FindFirstChild("HumanoidRootPart")
    if not root then return end


    if not AllZones[targetZone] then 
        Fluent:Notify({
            Title = "Error",
            Content = "Invalid zone selected!",
            Duration = 3
        })
        return 
    end


    local noclip = RunService.Stepped:Connect(function()
        for _, v in pairs(char:GetDescendants()) do
            if v:IsA("BasePart") then v.CanCollide = false end
        end
    end)

    task.spawn(function()
        local currentPos = root.Position
        local nearestZone = nil
        local shortestDistance = math.huge
        
        for zoneName, zoneCFrame in pairs(AllZones) do
            local distance = (currentPos - zoneCFrame.Position).Magnitude
            if distance < shortestDistance then
                shortestDistance = distance
                nearestZone = zoneName
            end
        end
        
        if nearestZone and nearestZone ~= targetZone then
            local nearestTarget = AllZones[nearestZone]
            if nearestTarget then
                local t = smoothTween(nearestTarget, 350)
                if t then t.Completed:Wait() end
                task.wait(0.1)
            end
        end
        
    
        local finalTarget = AllZones[targetZone]
        if finalTarget then
            local t = smoothTween(finalTarget, 350)
            if t then t.Completed:Wait() end
        end
        
       
        if noclip then noclip:Disconnect() end
        
        Fluent:Notify({
            Title = "Travel Complete",
            Content = "Arrived at " .. targetZone .. "!",
            Duration = 3
        })
    end)
end


local function getTargetBrainrot()
    for _, item in pairs(workspace:GetDescendants()) do
        if item:IsA("BasePart") and item.Name:find("Brainrot") then 
            return item
        end
    end
    return nil
end


local VIPBypassEnabled = false

local function applyVIPBypass()
    for _, obj in pairs(workspace:GetDescendants()) do
        if obj.Name:lower():find("vip") or obj.Name:lower():find("premium") then
            if obj:IsA("BasePart") then
                obj.CanCollide = false
                obj.Transparency = 0.8
            end
        end
    end
    
    pcall(function()
        if Player:FindFirstChild("VIPPass") then
            Player.VIPPass.Value = true
        end
        if Player:FindFirstChild("isPremium") then
            Player.isPremium.Value = true
        end
    end)
    
    
    pcall(function()
        local MarketplaceService = game:GetService("MarketplaceService")
        local oldPromptPurchase = MarketplaceService.PromptProductPurchase
        local oldPromptGamePass = MarketplaceService.PromptGamePassPurchase
        
        MarketplaceService.PromptProductPurchase = function() end
        MarketplaceService.PromptGamePassPurchase = function() end
    end)
end



local function enableGodmode(enabled)
    local char = Player.Character
    if not char then return end
    
    local humanoid = char:FindFirstChildOfClass("Humanoid")
    if not humanoid then return end
    
    if GodmodeConnection then
        GodmodeConnection:Disconnect()
        GodmodeConnection = nil
    end
    
    if enabled then
        
        GodmodeConnection = humanoid:GetPropertyChangedSignal("Health"):Connect(function()
            if humanoid.Health <= 1 then
                humanoid.Health = humanoid.MaxHealth
            end
        end)
        
        humanoid.MaxHealth = math.huge
        humanoid.Health = math.huge
        
        Fluent:Notify({
            Title = "Godmode Enabled",
            Content = "You now have 2 lives!",
            Duration = 2.5
        })
    else
        humanoid.MaxHealth = 100
        humanoid.Health = 100
        
        Fluent:Notify({
            Title = "Godmode Disabled",
            Content = "Godmode turned off.",
            Duration = 3
        })
    end
end


Player.CharacterAdded:Connect(function(char)
    if Fluent and Fluent.Options.Godmode and Fluent.Options.Godmode.Value then
        task.wait(0.5) 
        enableGodmode(true)
    end
end)



local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/SleepyCattStar/CattStarTemp/refs/heads/main/InterfaceManager.lua"))()


local Window = Fluent:CreateWindow({
    Title = "CattStar v1.0 | Escape Tsunami",
    SubTitle = "",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 480),
    Acrylic = true,
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.RightShift 
})

local Tabs = {
    Main = Window:AddTab({ Title = "Main", Icon = "scroll" }),
    Collection = Window:AddTab({ Title = "Collection", Icon = "shopping-cart" }),
    VIP = Window:AddTab({ Title = "VIP & Godmode", Icon = "shield" }),
    Misc = Window:AddTab({ Title = "Settings", Icon = "settings" })
}

local Options = Fluent.Options


Tabs.Main:AddSection("Wave Detector")

local TsunamiDisplay = Tabs.Main:AddParagraph({
    Title = "🌊 Tsunami Status",
    Content = "Detector is OFF"
})

Tabs.Main:AddToggle("WaveDetector", {
    Title = "Enable Wave Detector",
    Description = "detects incoming waves",
    Default = false,
    Callback = function(Value)
        task.spawn(function()
            while Value do
                local player = game.Players.LocalPlayer
                local char = player.Character
                local hrp = char and char:FindFirstChild("HumanoidRootPart")
                local tsunamiFolder = workspace:FindFirstChild("ActiveTsunamis")
                
                if hrp and tsunamiFolder then
                    local closestDist = math.huge
                    local foundIncoming = false
                    
                    for _, wave in pairs(tsunamiFolder:GetChildren()) do
                        
                        local wavePos = nil
                        if wave:IsA("Model") then
                            wavePos = wave:GetPivot().Position
                        elseif wave:IsA("BasePart") then
                            wavePos = wave.Position
                        end

                        if wavePos then
                            -- [[ THE LOGIC YOU ASKED FOR ]] --
                            -- Only check this wave if its X is GREATER than ours
                            if wavePos.X > hrp.Position.X then
                                local dist = (hrp.Position - wavePos).Magnitude
                                
                                -- Find the closest one among the valid "incoming" waves
                                if dist < closestDist then
                                    closestDist = dist
                                    foundIncoming = true
                                end
                            end
                        end
                    end

                    -- Update UI
                    if foundIncoming then
                        local distNum = math.floor(closestDist)
                        if closestDist < 150 then
                            TsunamiDisplay:SetTitle("🚨 INCOMING WAVE! 🚨")
                            TsunamiDisplay:SetDesc("DISTANCE: " .. distNum .. " Studs\nSTATUS: CRITICAL")
                        elseif closestDist < 400 then
                            TsunamiDisplay:SetTitle("⚠️ Wave Approaching")
                            TsunamiDisplay:SetDesc("Distance: " .. distNum .. " Studs")
                        else
                            TsunamiDisplay:SetTitle("🌊 Wave Detected")
                            TsunamiDisplay:SetDesc("Distance: " .. distNum .. " Studs (Safe)")
                        end
                    else
                        TsunamiDisplay:SetTitle("✅ Status: Clear")
                        TsunamiDisplay:SetDesc("No incoming waves detected.\n(Any active waves have passed)")
                    end
                else
                    TsunamiDisplay:SetTitle("❌ Error")
                    TsunamiDisplay:SetDesc("Character or Folder not found")
                end
                
                task.wait(0.1)
            end
            
            -- Reset when untoggled
            TsunamiDisplay:SetTitle("🌊 Tsunami Status")
            -- TsunamiDisplay:SetDesc("Detector is OFF")
        end)
    end
})


Tabs.Main:AddParagraph({
    Title = "Fast Zone Farming",
    Content = "Select a zone to tween. Goes to nearest zone first, then directly to your target!"
})

Tabs.Main:AddSlider("TweenSpeed", {
    Title = "Tween Speed",
    Description = "Adjust movement speed (Default: 350)",
    Default = 350,
    Min = 50,
    Max = 500,
    Rounding = 0,
    Callback = function() end
})

Tabs.Main:AddButton({
    Title = "🏃 Tween to Safe Zone",
    Description = "Escape to safety instantly",
    Callback = function() 
        smoothTween(SafeZone, 350)
        Fluent:Notify({
            Title = "Teleporting",
            Content = "Heading to safe zone...",
            Duration = 2
        })
    end
})

Tabs.Main:AddDropdown("ZoneSelector", {
    Title = "Select Zone to Tween",
    Description = "Auto-travels through all zones up to selected",
    Values = {"Zone 1", "Zone 2", "Zone 3", "Zone 4", "Zone 5", "Zone 6"},
    Multi = false,
    Default = 1,
})

Tabs.Main:AddButton({
    Title = "⚡ Travel to Selected Zone",
    Description = "Tweens sequentially through zones",
    Callback = function()
        local selected = Options.ZoneSelector.Value
        if selected then
            
            local zoneName = selected:gsub(" ", "")
            tweenToZone(zoneName)
        else
            Fluent:Notify({
                Title = "Error",
                Content = "Please select a zone first!",
                Duration = 3
            })
        end
    end
})

Tabs.Main:AddToggle("ClickToTP", {
    Title = "Click to Teleport",
    Description = "Click anywhere to TP",
    Default = false,
    Callback = function(Value)
        if ClickConnection then ClickConnection:Disconnect() end
        if Value then
            ClickConnection = UIS.InputBegan:Connect(function(input, gameProcessed)
                if input.UserInputType == Enum.UserInputType.MouseButton1 and not gameProcessed then
                    local root = Player.Character and Player.Character:FindFirstChild("HumanoidRootPart")
                    if root and Mouse.Hit then
                        root.CFrame = CFrame.new(Mouse.Hit.Position + Vector3.new(0, 3, 0))
                    end
                end
            end)
        end
    end
})


-- Tabs.Collection:AddParagraph({
--     Title = "Auto Farming",
--     Content = "Automatically collect Brainrots scattered across the map."
-- })

-- Tabs.Collection:AddToggle("AutoCollect", {
--     Title = "Auto Farm Brainrots", 
--     Description = "Farms items automatically",
--     Default = false
-- })

Tabs.Collection:AddParagraph({
    Title = "Auto Upgrade System",
    Content = "Select upgrade type and click to auto-purchase until coins run out."
})


Tabs.Collection:AddDropdown("UpgradeSelector", {
    Title = "Select Upgrade Type",
    Description = "Choose which stat to upgrade",
    Values = {"Speed", "Carry"},
    Multi = false,
    Default = 1,
})

Tabs.Collection:AddButton({
    Title = "🚀 Auto Upgrade Selected",
    Description = "Buys until you run out of coins",
    Callback = function()
        local selectedUpgrade = Options.UpgradeSelector.Value
        
        if not selectedUpgrade then
            Fluent:Notify({Title = "Error", Content = "Select an upgrade first!", Duration = 3})
            return
        end
        
        if isUpgrading then
            Fluent:Notify({Title = "Warning", Content = "Already upgrading!", Duration = 3})
            return
        end
        
        isUpgrading = true
        
        Fluent:Notify({
            Title = "Started",
            Content = "Purchasing " .. selectedUpgrade .. " upgrades...",
            Duration = 3
        })
        
        task.spawn(function()
            local purchaseCount = 0
            local ReplicatedStorage = game:GetService("ReplicatedStorage")
            local RemoteFunctions = ReplicatedStorage:FindFirstChild("RemoteFunctions")
            local args = { [1] = 1 }
            
            if not RemoteFunctions then 
                isUpgrading = false
                return 
            end

            while isUpgrading do
                -- [[ THIS IS THE FIXED LOGIC ]] --
                local remoteName = ""
                if selectedUpgrade == "Speed" then
                    remoteName = "UpgradeSpeed"
                elseif selectedUpgrade == "Carry" then
                    remoteName = "UpgradeCarry"
                elseif selectedUpgrade == "Base" then
                    remoteName = "UpgradeBase" -- Assuming the remote is named UpgradeBase
                end
                
                local remote = RemoteFunctions:FindFirstChild(remoteName)
                
                if remote then
                    local success, result = pcall(function()
                        return remote:InvokeServer(unpack(args))
                    end)
                    
                    -- If the purchase failed (false/nil), we stop
                    if not success or result == false or result == nil then
                        Fluent:Notify({
                            Title = "Upgrade Stopped",
                            Content = "Maxed out or no money (" .. purchaseCount .. " bought)",
                            Duration = 4
                        })
                        break
                    end
                    
                    purchaseCount = purchaseCount + 1
                    task.wait(0.5)
                else
                    warn("Remote " .. remoteName .. " not found!")
                    break
                end
            end
            isUpgrading = false
        end)
    end
})

-- [[ STOP BUTTON (Recommended to keep) ]] --
Tabs.Collection:AddButton({
    Title = "🛑 Stop Upgrading",
    Description = "",
    Callback = function()
        if isUpgrading then
            isUpgrading = false
            Fluent:Notify({Title = "Stopped", Content = "Upgrading stopped.", Duration = 2})
        end
    end
})

Tabs.Collection:AddButton({
    Title = " Upgrade Base",
    Description = "Upgrades your plot base once",
    Callback = function()
        local ReplicatedStorage = game:GetService("ReplicatedStorage")
        local Packages = ReplicatedStorage:WaitForChild("Packages")
        local Net = Packages:WaitForChild("Net")
        
        local upgradeRemote = Net:FindFirstChild("RE/Plot.UpgradeBase")
        if upgradeRemote then
            
            upgradeRemote:FireServer()
            
            Fluent:Notify({
                Title = "Success",
                Content = "Upgraded Base!",
                Duration = 2
            })
        else
            Fluent:Notify({
                Title = "Error",
                Content = "Could not find UpgradeBase remote!",
                Duration = 3
            })
            warn("Errrorrrrr!")
        end
    end
})


Tabs.VIP:AddParagraph({
    Title = "Premium Features",
    Content = "Access VIP areas and enable godmode protection."
})


-- local function enableFreeVIP()
--     local ws = game:GetService("Workspace")

--     local folder = ws:FindFirstChild("DefaultMap_SharedInstances") or ws:FindFirstChild("ArcadeMap_SharedInstances")
--     if folder then
--         local vipWalls = folder:FindFirstChild("VIPWalls")
--         if vipWalls then
--             vipWalls:Destroy()
--         end
--     end
-- end

local function enableFreeVIP()
    local ws = game:GetService("Workspace")

    -- Loop through every object in Workspace
    for _, folder in pairs(ws:GetChildren()) do
        -- Check if the folder name ends with "_SharedInstances"
        if folder.Name:match("_SharedInstances$") then 
            
            -- If we found a matching folder, look for the walls inside
            local vipWalls = folder:FindFirstChild("VIPWalls")
            
            if vipWalls then
                vipWalls:Destroy()
                -- Optional: print("Removed walls from " .. folder.Name)
            end
        end
    end
end

Tabs.VIP:AddButton({
    Title = "🔓 Enable Free VIP Access",
    Description = "Bypass VIP barriers and doors (Auto-Loop)",
    Callback = function()
        
        task.spawn(function()
            while task.wait(0.51) do
                enableFreeVIP()
            end
        end)
    end
})



Tabs.VIP:AddToggle("Godmode", {
    Title = " Godmode",
    Description = "2 lives (survives tsunami)",
    Default = false,
    Callback = function(Value)
        enableGodmode(Value)
    end
})

Tabs.VIP:AddParagraph({
    Title = "How Godmode Works",
    Content = "• Prevents HP from reaching 0\n• Grants extra life after tsunami hit\n• Auto-reapplies on respawn"
})


Tabs.VIP:AddButton({
    Title = "⚡ Instant Proximity Prompts",
    Description = "Instantly pickup Brainrots",
    Callback = function()
        for _, v in pairs(workspace:GetDescendants()) do
            if v:IsA("ProximityPrompt") then v.HoldDuration = 0.01 end
        end
        workspace.DescendantAdded:Connect(function(v)
            if v:IsA("ProximityPrompt") then v.HoldDuration = 0.01 end
        end)
        
        Fluent:Notify({
            Title = "Prompts Modified",
            Content = "All prompts are now instant!",
            Duration = 3
        })
    end
})

Tabs.Misc:AddButton({
    Title = "Server Hop",
    Description = "Jump to a different server",
    Callback = function()
        local TeleportService = game:GetService("TeleportService")
        local Players = game:GetService("Players")
        
        Fluent:Notify({
            Title = "Server Hopping",
            Content = "Finding a new server...",
            Duration = 3
        })
        
        local success, err = pcall(function()
            TeleportService:Teleport(game.PlaceId, Players.LocalPlayer)
        end)
        
        if not success then
            Fluent:Notify({
                Title = "Error",
                Content = "Failed to server hop!",
                Duration = 3
            })
        end
    end
})

Tabs.Misc:AddButton({
    Title = "Join Discord Server",
    Description = "Copy invite link to clipboard",
    Callback = function()
        local discordLink = "https://discord.gg/CxHaR5qWrk" 
        
        setclipboard(discordLink)
        
        Fluent:Notify({
            Title = "Discord Link Copied!",
            Content = "Paste it in your browser to join",
            Duration = 5
        })
    end
})


InterfaceManager:SetLibrary(Fluent)
InterfaceManager:BuildInterfaceSection(Tabs.Misc)

Window:SelectTab(1)

Fluent:Notify({
    Title = "CattStar Loaded Successfully!",
    Content = "Press RightShift to toggle UI | v1.0",
    Duration = 6
})


-- smarter ZONE MOVING


--- FIX AUTO PURCHASE SPEED UPGRADES
-- ADD AUTO-SELL 

-- CHECKING THAT REMOTE FUNCTIONS ADD A ENTITY HIT MAYBE? LIKE A KA , AND TELEPORT TO PLAYER
