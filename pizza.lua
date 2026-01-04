local CORRECT_PLACE_ID = 13453017135 

if game.PlaceId == CORRECT_PLACE_ID then

    print("Script is running in the correct place!") 

else

    warn("Script is running in the wrong place! Terminating execution.")
    script:Destroy()
end


local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/erterdterxtwerferqq-sys/Saved2/refs/heads/main/source.lua'))()

local Window = Rayfield:CreateWindow({
   Name = "Rayfield in PTR",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "Rayfield in PTR",
   LoadingSubtitle = "by dumbcat and V3NOM",
   ShowText = "SIGMA", -- for mobile users to unhide rayfield, change if you'd like
   Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   ToggleUIKeybind = "K", -- The keybind to toggle the UI visibility (string like "K" or Enum.KeyCode)

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Big Hub"
   },

   Discord = {
      Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
      RememberJoins = false -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local Tab = Window:CreateTab("infect", 4483362458) -- Title, Image

local Button = Tab:CreateButton({
   Name = "infect",
   Callback = function()
   local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local LocalPlayer = Players.LocalPlayer
local Char = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
local HRP = Char:WaitForChild("HumanoidRootPart")
local Humanoid = Char:WaitForChild("Humanoid")

local RANGE = 30

local closest, closestDist

for _, plr in ipairs(Players:GetPlayers()) do
    if plr ~= LocalPlayer
        and plr.Character
        and plr.Character:FindFirstChild("HumanoidRootPart") then

        local dist = (plr.Character.HumanoidRootPart.Position - HRP.Position).Magnitude
        if dist <= RANGE and (not closestDist or dist < closestDist) then
            closest = plr
            closestDist = dist
        end
    end
end

if closest then
    local targetHRP = closest.Character.HumanoidRootPart

    local args = {
        Humanoid,
        HRP,
        targetHRP,
        CFrame.new(
            159.06976318359375, -29.000001907348633, 836.2417602539062,
            0.32115504145622253, -4.046454193940008e-08, 0.9470266103744507,
            3.080657062781711e-09, 1, 4.168327549791684e-08,
            -0.9470266103744507, -1.046933029158481e-08, 0.32115504145622253
        ),
        Vector3.new(-0.9470266103744507, -4.168327549791684e-08, -0.32115504145622253)
    }

    ReplicatedStorage:WaitForChild("monsterevent"):FireServer(unpack(args))
end
   end,
})

local Keybind = Tab:CreateKeybind({
   Name = "infect ez boi so tuff",
   CurrentKeybind = "J",
   HoldToInteract = false,
   Flag = "Keybind1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Keybind)
   local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local LocalPlayer = Players.LocalPlayer
local Char = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
local HRP = Char:WaitForChild("HumanoidRootPart")
local Humanoid = Char:WaitForChild("Humanoid")

local RANGE = 30

local closest, closestDist

for _, plr in ipairs(Players:GetPlayers()) do
    if plr ~= LocalPlayer
        and plr.Character
        and plr.Character:FindFirstChild("HumanoidRootPart") then

        local dist = (plr.Character.HumanoidRootPart.Position - HRP.Position).Magnitude
        if dist <= RANGE and (not closestDist or dist < closestDist) then
            closest = plr
            closestDist = dist
        end
    end
end

if closest then
    local targetHRP = closest.Character.HumanoidRootPart

    local args = {
        Humanoid,
        HRP,
        targetHRP,
        CFrame.new(
            159.06976318359375, -29.000001907348633, 836.2417602539062,
            0.32115504145622253, -4.046454193940008e-08, 0.9470266103744507,
            3.080657062781711e-09, 1, 4.168327549791684e-08,
            -0.9470266103744507, -1.046933029158481e-08, 0.32115504145622253
        ),
        Vector3.new(-0.9470266103744507, -4.168327549791684e-08, -0.32115504145622253)
    }

    ReplicatedStorage:WaitForChild("monsterevent"):FireServer(unpack(args))
end
   end,
})

local Keybind = Tab:CreateKeybind({
   Name = "sleepgun someone(EQUIP SLEEPGUN BEFORE)",
   CurrentKeybind = "H",
   HoldToInteract = false,
   Flag = "Keybind1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Keybind)
   local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local localPlayer = Players.LocalPlayer
local character = localPlayer.Character or localPlayer.CharacterAdded:Wait()
local rootPart = character:WaitForChild("HumanoidRootPart")

local closestHumanoid = nil
local closestDistance = math.huge

for _, player in ipairs(Players:GetPlayers()) do
    if player ~= localPlayer and player.Character then
        local humanoid = player.Character:FindFirstChild("Humanoid")
        local hrp = player.Character:FindFirstChild("HumanoidRootPart")

        if humanoid and hrp and humanoid.Health > 0 then
            local distance = (hrp.Position - rootPart.Position).Magnitude
            if distance < closestDistance then
                closestDistance = distance
                closestHumanoid = humanoid
            end
        end
    end
end

if closestHumanoid then
    local args = {
        2,
        closestHumanoid,
        character:WaitForChild("sleepgun")
    }

    ReplicatedStorage:WaitForChild("sleepevent"):FireServer(unpack(args))
end

   -- The function that takes place when the keybind is pressed
   -- The variable (Keybind) is a boolean for whether the keybind is being held or not (HoldToInteract needs to be true)
   end,
})

local Button = Tab:CreateButton({
   Name = "sleepgun abuse (EQUIP SLEEPGUN BEFORE USING)",
   Callback = function()
   local args = {
    2,
    game:GetService("Players"):WaitForChild("max964561").Character:WaitForChild("Humanoid"),
    game:GetService("Players").LocalPlayer.Character:WaitForChild("sleepgun")
}
game:GetService("ReplicatedStorage"):WaitForChild("sleepevent"):FireServer(unpack(args))
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local localPlayer = Players.LocalPlayer
local character = localPlayer.Character or localPlayer.CharacterAdded:Wait()
local rootPart = character:WaitForChild("HumanoidRootPart")

local closestHumanoid = nil
local closestDistance = math.huge

for _, player in ipairs(Players:GetPlayers()) do
    if player ~= localPlayer and player.Character then
        local humanoid = player.Character:FindFirstChild("Humanoid")
        local hrp = player.Character:FindFirstChild("HumanoidRootPart")

        if humanoid and hrp and humanoid.Health > 0 then
            local distance = (hrp.Position - rootPart.Position).Magnitude
            if distance < closestDistance then
                closestDistance = distance
                closestHumanoid = humanoid
            end
        end
    end
end

if closestHumanoid then
    local args = {
        2,
        closestHumanoid,
        character:WaitForChild("sleepgun")
    }

    ReplicatedStorage:WaitForChild("sleepevent"):FireServer(unpack(args))
end
   end,
})
















local Players = game:GetService("Players")
local player = Players.LocalPlayer

local targetCFrame = CFrame.lookAt(
	Vector3.new(-1009, 3, -96),
	Vector3.new(-1009, 3, -97)
)

local prompts = {}
for _, m in ipairs(workspace:GetDescendants()) do
	if m:IsA("Model") and m.Name == "zippymachine" then
		local part = m:FindFirstChild("proxpart", true)
		if part then
			local prompt = part:FindFirstChild("prox", true)
			if prompt and prompt:IsA("ProximityPrompt") then
				table.insert(prompts, prompt)
			end
		end
	end
end

local running = false
local savedAnchor

local function getHRP()
	local char = player.Character or player.CharacterAdded:Wait()
	return char:WaitForChild("HumanoidRootPart")
end

local Toggle = Tab:CreateToggle({
	Name = "Auto Roll (gambling) CREDITS TO V3NOM(not saying his DC u dum nig)",
	CurrentValue = false,
	Flag = "Toggle1",
	Callback = function(Value)
		running = Value
		local hrp = getHRP()
		if running then
			savedAnchor = hrp.Anchored
			hrp.CFrame = targetCFrame
			hrp.Anchored = true
			task.spawn(function()
				while running do
					for _, p in ipairs(prompts) do
						pcall(function()
							fireproximityprompt(p)
						end)
					end
					task.wait(0.1)
				end
			end)
		else
			hrp.Anchored = savedAnchor or false
		end
	end,
})

local Button = Tab:CreateButton({
   Name = "DESTROY(ultrakill ref?) the ass anticheat",
   Callback = function()
   local rs = game:GetService("ReplicatedStorage")
local ev = rs:FindFirstChild("kickevent")
if ev then
	ev:Destroy()
end
   -- The function that takes place when the button is pressed
   end,
})

local Button = Tab:CreateButton({
   Name = "DESTROY(another ultrakill ref?) the ass ban event",
   Callback = function()
   game:GetService("ReplicatedStorage").peoplebanevent:Destroy()
   -- The function that takes place when the button is pressed
   end,
})

local Input = Tab:CreateInput({
    Name = "give (bug) snowball to (u gotta write their WHOLE and correct username)",
    PlaceholderText = "Enter username here...",
    RemoveTextAfterFocusLost = false,
    CurrentValue = "",
    Flag = "SnowballTarget", -- optional but recommended
    
    Callback = function(Text)
        if Text == "" then return end
        
        local success, err = pcall(function()
            local targetPlayer = game:GetService("Players"):FindFirstChild(Text)
            
            if targetPlayer then
                -- Try to find the snowball remote in multiple common places
                local character = targetPlayer.Character
                if character then
                    local snowball = character:FindFirstChild("snowball", true) -- recursive search
                    if snowball then
                        local remote = snowball:FindFirstChild("snowevent", true)
                        
                        if remote and remote:IsA("RemoteEvent") then
                            remote:FireServer()
                            warn("✅ Snowball thrown at: " .. Text)
                        else
                            warn("❌ Couldn't find snowevent RemoteEvent")
                        end
                    else
                        warn("❌ No snowball found in " .. Text .. "'s character")
                    end
                else
                    warn("❌ " .. Text .. " has no character loaded")
                end
            else
                warn("❌ Player not found: " .. Text)
            end
        end)
        
        if not success then
            warn("Error while trying to throw snowball: " .. tostring(err))
        end
    end
})

local Players = game:GetService("Players")
local VirtualInputManager = game:GetService("VirtualInputManager")

local LocalPlayer = Players.LocalPlayer

local Players = game:GetService("Players")
local VirtualInputManager = game:GetService("VirtualInputManager")

local LocalPlayer = Players.LocalPlayer

-- Positions to visit
local Positions = {
    Vector3.new(185, 3, 1017),
    Vector3.new(1015, 3, 241),
    Vector3.new(22, 3, -1019),
    Vector3.new(-1019, 3, -118),
}

-- 🔧 SETTINGS (edit these)
local TELEPORT_DELAY = 0.2   -- ⬅️ changed to 0.5
local KEY_DELAY = 0.1
local LOOP_DELAY = 0.5

-- Control variable
local running = false

local function getHRP()
    local char = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
    return char:WaitForChild("HumanoidRootPart")
end

task.spawn(function()
    while true do
        if running then
            local HRP = getHRP()

            for _, position in ipairs(Positions) do
                if not running then break end

                -- Teleport
                HRP.CFrame = CFrame.new(position)
                task.wait(TELEPORT_DELAY)

                if not running then break end

                -- Press E
                VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.E, false, game)
                task.wait(KEY_DELAY)
                VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.E, false, game)

                task.wait(0.5)
            end

            task.wait(LOOP_DELAY)
        else
            task.wait(0.1)
        end
    end
end)

local Toggle = Tab:CreateToggle({
    Name = "Auto mail Loop(EXECUTE REMOVE RESETEVENTS FIRST BOI)",
    CurrentValue = false,
    Flag = "Toggle1",

    Callback = function(Value)
        running = Value

        if Value then
            warn("✅ Auto loop ENABLED")
        else
            warn("🛑 Auto loop DISABLED")
        end
    end,
})

local Button = Tab:CreateButton({
   Name = "remove resetevent2",
   Callback = function()
   game:GetService("StarterPlayer"):WaitForChild("StarterCharacterScripts"):FindFirstChild("resetevent2"):Destroy()
   end,
})

local Button = Tab:CreateButton({
   Name = "remove resetevent",
   Callback = function()
   game:GetService("StarterPlayer"):WaitForChild("StarterCharacterScripts"):FindFirstChild("resetevent"):Destroy()
   end,
})
