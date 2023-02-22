_G.FastAttackNormalSpeed = true


getgenv().Setting = {
    ["Auto Farm Level"] = false,
    ["Auto Second Quest"] = false,
    ["Auto Zou Quest"] = false,
        --Boss
	["Auto Farm Boss"] = false,
	["Auto Farm All Boss"] = false,
	["Auto Farm All Boss Hop"] = false,
        --Cake Prince
	["Cake Prince"] = false,
	["Cake Prince Spawner"] = false,
         --Ectoplasm
	 ["Auto Farm Ectoplasm"] = false,
         --Elite Hunter
	 ["Elite Hunter"] = false,
	 ["Elite Hunter Hop"] = false,
         --Bone
	 ["Auto Farm Bone"] = false,
	 ["Auto Random Bone"] = false
 }

 
 if not game:IsLoaded() then
    local d = Instance.new("Message", game.Workspace)
    d.Text = "Waiting"
    game.Loaded:Wait()
    d:Destroy()
    task.wait(5)
end

-- [Join Team]

repeat wait() until game.Players
repeat wait() until game.Players.LocalPlayer
repeat wait() until game.ReplicatedStorage
repeat wait() until game.ReplicatedStorage:FindFirstChild("Remotes");
repeat wait() until game.Players.LocalPlayer:FindFirstChild("PlayerGui");
repeat wait() until game.Players.LocalPlayer.PlayerGui:FindFirstChild("Main");
repeat wait() until game:GetService("Players")
repeat wait() until game:GetService("Players").LocalPlayer.Character:FindFirstChild("Energy")
if not game:IsLoaded() then repeat game.Loaded:Wait() until game:IsLoaded() end
--Team
if game:GetService("Players").LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam") then
	repeat wait()
		if game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("Main").ChooseTeam.Visible == true then
			if getgenv().Team == "Pirate" then
				for i, v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.Activated)) do                                                                                                
					v.Function()
				end
			elseif getgenv().Team == "Marine" then
				for i, v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Marines.Frame.ViewportFrame.TextButton.Activated)) do                                                                                                
					v.Function()
				end
			else
				for i, v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.Activated)) do                                                                                                
					v.Function()
				end
			end
		end
	until game.Players.LocalPlayer.Team ~= nil and game:IsLoaded()
end

-- [CheckQuest]

local placeId = game.PlaceId;
						 if placeId == 2753915549 then
							OldWorld = true;
						 elseif placeId == 4442272183 then
							NewWorld = true;
						 elseif placeId == 7449423635 then
							Three = true;
							do
							   local count = 0;
							   for i,v in pairs(game:GetService("Workspace").Map.Turtle:GetChildren()) do
								  if v.Name == "Model" and #v:GetChildren() >= 40 and v:FindFirstChild("Meshes/Plank7") and i > 20 then
									 v:Destroy()
									 count = count + 1
									 if count > 2 then
										break
									 end
								  end
							   end
							end
						 end
						 function CheckQuest()
							local MyLevel = game.Players.LocalPlayer.Data.Level.Value
							if OldWorld then
							   if MyLevel == 1 or MyLevel <= 9 then -- Bandit
								Ms = "Bandit [Lv. 5]"
								NaemQuest = "BanditQuest1"
								LevelQuest = 1
								NameMon = "Bandit"
								CFrameQuest = CFrame.new(1061.66699, 16.5166187, 1544.52905, -0.942978859, -3.33851502e-09, 0.332852632, 7.04340497e-09, 1, 2.99841325e-08, -0.332852632, 3.06188177e-08, -0.942978859)
								CFrameMon = CFrame.new(1199.31287, 52.2717781, 1536.91516, -0.929782331, 6.60215846e-08, -0.368109822, 3.9077392e-08, 1, 8.06501603e-08, 0.368109822, 6.06023249e-08, -0.929782331)
							elseif MyLevel == 10 or MyLevel <= 14 then -- Monkey
								magbring = 400
								Ms = "Monkey [Lv. 14]"
								NaemQuest = "JungleQuest"
								LevelQuest = 1
								NameMon = "Monkey"
								CFrameQuest = CFrame.new(-1604.12012, 36.8521118, 154.23732, 0.0648873374, -4.70858913e-06, -0.997892559, 1.41431883e-07, 1, -4.70933674e-06, 0.997892559, 1.64442184e-07, 0.0648873374)
								CFrameMon = CFrame.new(-1502.74609, 98.5633316, 90.6417007, 0.836947978, 0, 0.547282517, -0, 1, -0, -0.547282517, 0, 0.836947978)
							elseif MyLevel == 15 or MyLevel <= 29 then -- Gorilla
								magbring = 240
								Ms = "Gorilla [Lv. 20]"
								NaemQuest = "JungleQuest"
								LevelQuest = 2
								NameMon = "Gorilla"
								CFrameQuest = CFrame.new(-1604.12012, 36.8521118, 154.23732, 0.0648873374, -4.70858913e-06, -0.997892559, 1.41431883e-07, 1, -4.70933674e-06, 0.997892559, 1.64442184e-07, 0.0648873374)
								CFrameMon = CFrame.new(-1223.52808, 6.27936459, -502.292664, 0.310949147, -5.66602516e-08, 0.950426519, -3.37275488e-08, 1, 7.06501808e-08, -0.950426519, -5.40241736e-08, 0.310949147)
							elseif MyLevel == 30 or MyLevel <= 39 then -- Pirate
								Dis = 150
								Ms = "Pirate [Lv. 35]"
								NaemQuest = "BuggyQuest1"
								LevelQuest = 1
								NameMon = "Pirate"
								CFrameQuest = CFrame.new(-1139.59717, 4.75205183, 3825.16211, -0.959730506, -7.5857054e-09, 0.280922383, -4.06310328e-08, 1, -1.11807175e-07, -0.280922383, -1.18718916e-07, -0.959730506)
								CFrameMon = CFrame.new(-1219.32324, 4.75205183, 3915.63452, -0.966492832, -6.91238853e-08, 0.25669381, -5.21195496e-08, 1, 7.3047012e-08, -0.25669381, 5.72206496e-08, -0.966492832)
							elseif MyLevel == 40 or MyLevel <= 59 then -- Brute
								Dis = 150
								Ms = "Brute [Lv. 45]"
								NaemQuest = "BuggyQuest1"
								LevelQuest = 2
								NameMon = "Brute"
								CFrameQuest = CFrame.new(-1139.59717, 4.75205183, 3825.16211, -0.959730506, -7.5857054e-09, 0.280922383, -4.06310328e-08, 1, -1.11807175e-07, -0.280922383, -1.18718916e-07, -0.959730506)
								CFrameMon = CFrame.new(-1146.49646, 96.0936813, 4312.1333, -0.978175163, -1.53222057e-08, 0.207781896, -3.33316912e-08, 1, -8.31738873e-08, -0.207781896, -8.82843523e-08, -0.978175163)
							elseif MyLevel == 60 or MyLevel <= 74 then -- Desert Bandit
								Ms = "Desert Bandit [Lv. 60]"
								NaemQuest = "DesertQuest"
								LevelQuest = 1
								NameMon = "Desert Bandit"
								CFrameQuest = CFrame.new(897.031128, 6.43846416, 4388.97168, -0.804044724, 3.68233266e-08, 0.594568789, 6.97835176e-08, 1, 3.24365246e-08, -0.594568789, 6.75715199e-08, -0.804044724)
								CFrameMon = CFrame.new(932.788818, 6.4503746, 4488.24609, -0.998625934, 3.08948351e-08, 0.0524050146, 2.79967303e-08, 1, -5.60361286e-08, -0.0524050146, -5.44919629e-08, -0.998625934)
							elseif MyLevel == 75 or MyLevel <= 89 then -- Desert Officre
								Ms = "Desert Officer [Lv. 70]"
								NaemQuest = "DesertQuest"
								LevelQuest = 2
								NameMon = "Desert Officer"
								CFrameQuest = CFrame.new(897.031128, 6.43846416, 4388.97168, -0.804044724, 3.68233266e-08, 0.594568789, 6.97835176e-08, 1, 3.24365246e-08, -0.594568789, 6.75715199e-08, -0.804044724)
								CFrameMon = CFrame.new(1580.03198, 4.61375761, 4366.86426, 0.135744005, -6.44280718e-08, -0.990743816, 4.35738308e-08, 1, -5.90598574e-08, 0.990743816, -3.51534837e-08, 0.135744005)
							elseif MyLevel == 90 or MyLevel <= 99 then -- Snow Bandits
								Ms = "Snow Bandit [Lv. 90]"
								NaemQuest = "SnowQuest"
								LevelQuest = 1
								NameMon = "Snow Bandits"
								CFrameQuest = CFrame.new(1384.14001, 87.272789, -1297.06482, 0.348555952, -2.53947841e-09, -0.937287986, 1.49860568e-08, 1, 2.86358204e-09, 0.937287986, -1.50443711e-08, 0.348555952)
								CFrameMon = CFrame.new(1370.24316, 102.403511, -1411.52905, 0.980274439, -1.12995728e-08, 0.197641045, -9.57343449e-09, 1, 1.04655214e-07, -0.197641045, -1.04482936e-07, 0.980274439)
							elseif MyLevel == 100 or MyLevel <= 119 then -- Snowman
								Ms = "Snowman [Lv. 100]"
								NaemQuest = "SnowQuest"
								LevelQuest = 2
								NameMon = "Snowman"
								CFrameQuest = CFrame.new(1384.14001, 87.272789, -1297.06482, 0.348555952, -2.53947841e-09, -0.937287986, 1.49860568e-08, 1, 2.86358204e-09, 0.937287986, -1.50443711e-08, 0.348555952)
								CFrameMon = CFrame.new(1370.24316, 102.403511, -1411.52905, 0.980274439, -1.12995728e-08, 0.197641045, -9.57343449e-09, 1, 1.04655214e-07, -0.197641045, -1.04482936e-07, 0.980274439)
							elseif MyLevel == 120 or MyLevel <= 149 then -- Chief Petty Officer
								Ms = "Chief Petty Officer [Lv. 120]"
								NaemQuest = "MarineQuest2"
								LevelQuest = 1
								NameMon = "Chief Petty Officer"
								CFrameQuest = CFrame.new(-5035.0835, 28.6520386, 4325.29443, 0.0243340395, -7.08064647e-08, 0.999703884, -6.36926814e-08, 1, 7.23777944e-08, -0.999703884, -6.54350671e-08, 0.0243340395)
								CFrameMon = CFrame.new(-4882.8623, 22.6520386, 4255.53516, 0.273695946, -5.40380647e-08, -0.96181643, 4.37720793e-08, 1, -4.37274998e-08, 0.96181643, -3.01326679e-08, 0.273695946)
							elseif MyLevel == 150 or MyLevel <= 174 then -- Sky Bandit
								Ms = "Sky Bandit [Lv. 150]"
								NaemQuest = "SkyQuest"
								LevelQuest = 1
								NameMon = "Sky Bandit"
								CFrameQuest = CFrame.new(-4841.83447, 717.669617, -2623.96436, -0.875942111, 5.59710216e-08, -0.482416272, 3.04023082e-08, 1, 6.08195947e-08, 0.482416272, 3.86078725e-08, -0.875942111)
								CFrameMon = CFrame.new(-4970.74219, 294.544342, -2890.11353, -0.994874597, -8.61311236e-08, -0.101116329, -9.10836206e-08, 1, 4.43614923e-08, 0.101116329, 5.33441664e-08, -0.994874597)
								if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
								end
							elseif MyLevel == 175 or MyLevel <= 189 then -- Dark Master
								Ms = "Dark Master [Lv. 175]"
								NaemQuest = "SkyQuest"
								LevelQuest = 2
								NameMon = "Dark Master"
								CFrameQuest = CFrame.new(-4841.83447, 717.669617, -2623.96436, -0.875942111, 5.59710216e-08, -0.482416272, 3.04023082e-08, 1, 6.08195947e-08, 0.482416272, 3.86078725e-08, -0.875942111)
								CFrameMon = CFrame.new(-5220.58594, 430.693298, -2278.17456, -0.925375521, 1.12086873e-08, 0.379051805, -1.05115507e-08, 1, -5.52320891e-08, -0.379051805, -5.50948407e-08, -0.925375521)
								if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
								end
							elseif MyLevel == 190 or MyLevel <= 209 then -- Dark Master
								Ms = "Prisoner [Lv. 190]"
								NaemQuest = "PrisonerQuest"
								LevelQuest = 1
								NameMon = "Prisoner"
								CFrameQuest = CFrame.new(5310.61, 0.350015, 474.947)
								CFrameMon = CFrame.new(4977.88525390625, 72.67780303955078, 498.108642578125)
							elseif MyLevel == 210 or MyLevel <= 249 then -- Dark Master
								Ms = "Dangerous Prisoner [Lv. 210]"
								NaemQuest = "PrisonerQuest"
								LevelQuest = 2
								NameMon = "Dangerous Prisoner"
								CFrameQuest = CFrame.new(5310.61, 0.350015, 474.947)
								CFrameMon = CFrame.new(5656.42333984375, 72.67793273925781, 866.1055908203125)
							elseif MyLevel == 250 or MyLevel <= 299 then -- Toga Warrior
								Ms = "Toga Warrior [Lv. 250]"
								NaemQuest = "ColosseumQuest"
								LevelQuest = 1
								NameMon = "Toga Warrior"
								CFrameQuest = CFrame.new(-1576.11743, 7.38933945, -2983.30762, 0.576966345, 1.22114863e-09, 0.816767931, -3.58496594e-10, 1, -1.24185606e-09, -0.816767931, 4.2370063e-10, 0.576966345)
								CFrameMon = CFrame.new(-1779.97583, 44.6077499, -2736.35474, 0.984437346, 4.10396339e-08, 0.175734788, -3.62286876e-08, 1, -3.05844168e-08, -0.175734788, 2.3741821e-08, 0.984437346)
							elseif MyLevel == 300 or MyLevel <= 325 then -- Military Soldier
								Ms = "Military Soldier [Lv. 300]"
								NaemQuest = "MagmaQuest"
								LevelQuest = 1
								NameMon = "Military Soldier"
								CFrameQuest = CFrame.new(-5316.55859, 12.2370615, 8517.2998, 0.588437557, -1.37880001e-08, -0.808542669, -2.10116209e-08, 1, -3.23446478e-08, 0.808542669, 3.60215964e-08, 0.588437557)
								CFrameMon = CFrame.new(-5376.13867, 60.2465515, 8313.62305, -0.693342566, -1.01933502e-07, 0.720608115, -9.95837439e-08, 1, 4.56390268e-08, -0.720608115, -4.01173743e-08, -0.693342566)
							elseif MyLevel == 325 or MyLevel <= 374 then -- Military Spy
								FM = false
								Ms = "Military Spy [Lv. 325]"
								NaemQuest = "MagmaQuest"
								LevelQuest = 2
								NameMon = "Military Spy"
								CFrameQuest = CFrame.new(-5316.55859, 12.2370615, 8517.2998, 0.588437557, -1.37880001e-08, -0.808542669, -2.10116209e-08, 1, -3.23446478e-08, 0.808542669, 3.60215964e-08, 0.588437557)
								CFrameMon = CFrame.new(-5960.86182, 82.3629303, 8893.15625, 0.942766786, 8.98857095e-08, 0.333452851, -5.81543986e-08, 1, -1.05141325e-07, -0.333452851, 7.9731997e-08, 0.942766786)
							elseif MyLevel == 375 or MyLevel <= 399 then -- Fishman Warrior
								FM = true
								Ms = "Fishman Warrior [Lv. 375]"
								NaemQuest = "FishmanQuest"
								LevelQuest = 1
								NameMon = "Fishman Warrior"
								CFrameQuest = CFrame.new(61122.5625, 18.4716396, 1568.16504, 0.893533468, 3.95251609e-09, 0.448996574, -2.34327455e-08, 1, 3.78297464e-08, -0.448996574, -4.43233645e-08, 0.893533468)
								CFrameMon = CFrame.new(60946.6094, 48.6735229, 1525.91687, -0.0817126185, 8.90751153e-08, 0.996655822, 2.00889794e-08, 1, -8.77269599e-08, -0.996655822, 1.28533992e-08, -0.0817126185)
								if getgenv().Setting["Auto Farm Level"] and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
								end

							elseif MyLevel == 400 or MyLevel <= 449 then -- Fishman Commando
								FM = true
								Ms = "Fishman Commando [Lv. 400]"
								NaemQuest = "FishmanQuest"
								LevelQuest = 2
								NameMon = "Fishman Commando"
								CFrameQuest = CFrame.new(61122.5625, 18.4716396, 1568.16504, 0.893533468, 3.95251609e-09, 0.448996574, -2.34327455e-08, 1, 3.78297464e-08, -0.448996574, -4.43233645e-08, 0.893533468)
								CFrameMon = CFrame.new(61885.5039, 18.4828243, 1504.17896, 0.577502489, 0, -0.816389024, -0, 1.00000012, -0, 0.816389024, 0, 0.577502489)
								if getgenv().Setting["Auto Farm Level"] and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000 then
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
								end
							elseif MyLevel == 450 or MyLevel <= 474 then -- God's Guards
								FM = false
								Ms = "God's Guard [Lv. 450]"
								NaemQuest = "SkyExp1Quest"
								LevelQuest = 1
								NameMon = "God's Guards"
								CFrameQuest = CFrame.new(-4721.71436, 845.277161, -1954.20105, -0.999277651, -5.56969759e-09, 0.0380011722, -4.14751478e-09, 1, 3.75035256e-08, -0.0380011722, 3.73188307e-08, -0.999277651)
								CFrameMon = CFrame.new(-4716.95703, 853.089722, -1933.92542, -0.93441087, -6.77488776e-09, -0.356197298, 1.12145182e-08, 1, -4.84390199e-08, 0.356197298, -4.92565206e-08, -0.93441087)
								if getgenv().AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
								end
							elseif MyLevel == 475 or MyLevel <= 524 then -- Shandas
								sky = false
								Ms = "Shanda [Lv. 475]"
								NaemQuest = "SkyExp1Quest"
								LevelQuest = 2
								NameMon = "Shandas"
								CFrameQuest = CFrame.new(-7863.63672, 5545.49316, -379.826324, 0.362120807, -1.98046344e-08, -0.93213129, 4.05822291e-08, 1, -5.48095125e-09, 0.93213129, -3.58431969e-08, 0.362120807)
								CFrameMon = CFrame.new(-7685.12354, 5601.05127, -443.171509, 0.150056243, 1.79768236e-08, -0.988677442, 6.67798661e-09, 1, 1.91962481e-08, 0.988677442, -9.48289181e-09, 0.150056243)
								if getgenv().AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
								end
							elseif MyLevel == 525 or MyLevel <= 549 then -- Royal Squad
								sky = true
								Ms = "Royal Squad [Lv. 525]"
								NaemQuest = "SkyExp2Quest"
								LevelQuest = 1
								NameMon = "Royal Squad"
								CFrameQuest = CFrame.new(-7902.66895, 5635.96387, -1411.71802, 0.0504222959, 2.5710392e-08, 0.998727977, 1.12541557e-07, 1, -3.14249675e-08, -0.998727977, 1.13982921e-07, 0.0504222959)
								CFrameMon = CFrame.new(-7685.02051, 5606.87842, -1442.729, 0.561947823, 7.69527464e-09, -0.827172697, -4.24974544e-09, 1, 6.41599973e-09, 0.827172697, -9.01838604e-11, 0.561947823)
							elseif MyLevel == 550 or MyLevel <= 624 then -- Royal Soldier
								Dis = 240
								sky = true
								Ms = "Royal Soldier [Lv. 550]"
								NaemQuest = "SkyExp2Quest"
								LevelQuest = 2
								NameMon = "Royal Soldier"
								CFrameQuest = CFrame.new(-7902.66895, 5635.96387, -1411.71802, 0.0504222959, 2.5710392e-08, 0.998727977, 1.12541557e-07, 1, -3.14249675e-08, -0.998727977, 1.13982921e-07, 0.0504222959)
								CFrameMon = CFrame.new(-7864.44775, 5661.94092, -1708.22351, 0.998389959, 2.28686137e-09, -0.0567218624, 1.99431383e-09, 1, 7.54200258e-08, 0.0567218624, -7.54117195e-08, 0.998389959)
							elseif MyLevel == 625 or MyLevel <= 649 then -- Galley Pirate
								Dis = 240
								sky = false
								Ms = "Galley Pirate [Lv. 625]"
								NaemQuest = "FountainQuest"
								LevelQuest = 1
								NameMon = "Galley Pirate"
								CFrameQuest = CFrame.new(5254.60156, 38.5011406, 4049.69678, -0.0504891425, -3.62066501e-08, -0.998724639, -9.87921389e-09, 1, -3.57534553e-08, 0.998724639, 8.06145284e-09, -0.0504891425)
								CFrameMon = CFrame.new(5595.06982, 41.5013695, 3961.47095, -0.992138803, -2.11610267e-08, -0.125142589, -1.34249509e-08, 1, -6.26613996e-08, 0.125142589, -6.04887518e-08, -0.992138803)
							elseif MyLevel >= 650 then -- Galley Captain
								Dis = 240
								Ms = "Galley Captain [Lv. 650]"
								NaemQuest = "FountainQuest"
								LevelQuest = 2
								NameMon = "Galley Captain"
								CFrameQuest = CFrame.new(5254.60156, 38.5011406, 4049.69678, -0.0504891425, -3.62066501e-08, -0.998724639, -9.87921389e-09, 1, -3.57534553e-08, 0.998724639, 8.06145284e-09, -0.0504891425)
								CFrameMon = CFrame.new(5658.5752, 38.5361786, 4928.93506, -0.996873081, 2.12391046e-06, -0.0790185928, 2.16989656e-06, 1, -4.96097414e-07, 0.0790185928, -6.66008248e-07, -0.996873081)
					   end
						elseif NewWorld then
							local MyLevel = game.Players.LocalPlayer.Data.Level.Value
							Dis = 240
							if MyLevel == 700 or MyLevel <= 724 then -- Raider [Lv. 700]
								Ms = "Raider [Lv. 700]"
								NaemQuest = "Area1Quest"
								LevelQuest = 1
								NameMon = "Raider"
								CFrameQuest = CFrame.new(337.276031, 39.1396255, 2320.86694, 0.999621809, -4.15421413e-20, -0.0275000762, 4.18174761e-20, 1, 9.43714367e-21, 0.0275000762, -1.05835578e-20, 0.999621809)
								CFrameMon = CFrame.new(310.3685302734375, 39.13898849487305, 2306.282958984375)
							elseif MyLevel == 725 or MyLevel <= 774 then -- Mercenary [Lv. 725]
								Ms = "Mercenary [Lv. 725]"
								NaemQuest = "Area1Quest"
								LevelQuest = 2
								NameMon = "Mercenary"
								CFrameQuest = CFrame.new(-424.080078, 73.0055847, 1836.91589, 0.253544956, -1.42165932e-08, 0.967323601, -6.00147771e-08, 1, 3.04272909e-08, -0.967323601, -6.5768397e-08, 0.253544956)
								CFrameMon = CFrame.new(-973.731995, 95.8733215, 1836.46936, 0.999135971, 2.02326991e-08, -0.0415605344, -1.90767793e-08, 1, 2.82094952e-08, 0.0415605344, -2.73922804e-08, 0.999135971)
							elseif MyLevel == 775 or MyLevel <= 799 then -- Swan Pirate [Lv. 775]
								Ms = "Swan Pirate [Lv. 775]"
								NaemQuest = "Area2Quest"
								LevelQuest = 1
								NameMon = "Swan Pirate"
								CFrameQuest = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
								CFrameMon = CFrame.new(970.369446, 142.653198, 1217.3667, 0.162079468, -4.85452638e-08, -0.986777723, 1.03357589e-08, 1, -4.74980872e-08, 0.986777723, -2.50063148e-09, 0.162079468)
							elseif MyLevel == 800 or MyLevel <= 874 then -- Factory Staff [Lv. 800]
								Ms = "Factory Staff [Lv. 800]"
								NaemQuest = "Area2Quest"
								LevelQuest = 2
								NameMon = "Factory Staff"
								CFrameQuest = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
								CFrameMon = CFrame.new(296.786499, 72.9948196, -57.1298141, -0.876037002, -5.32364979e-08, 0.482243896, -3.87658332e-08, 1, 3.99718729e-08, -0.482243896, 1.63222538e-08, -0.876037002)                            
							elseif MyLevel == 875 or MyLevel <= 899 then -- Marine Lieutenant [Lv. 875]
								Ms = "Marine Lieutenant [Lv. 875]"
								NaemQuest = "MarineQuest3"
								LevelQuest = 1
								NameMon = "Marine Lieutenant"
								CFrameQuest = CFrame.new(-2442.65015, 73.0511475, -3219.11523, -0.873540044, 4.2329841e-08, -0.486752301, 5.64383384e-08, 1, -1.43220786e-08, 0.486752301, -3.99823996e-08, -0.873540044)
								CFrameMon = CFrame.new(-2913.26367, 73.0011826, -2971.64282, 0.910507619, 0, 0.413492233, 0, 1.00000012, 0, -0.413492233, 0, 0.910507619)
							elseif MyLevel == 900 or MyLevel <= 949 then -- Marine Captain [Lv. 900]
								Ms = "Marine Captain [Lv. 900]"
								NaemQuest = "MarineQuest3"
								LevelQuest = 2
								NameMon = "Marine Captain"
								CFrameQuest = CFrame.new(-2442.65015, 73.0511475, -3219.11523, -0.873540044, 4.2329841e-08, -0.486752301, 5.64383384e-08, 1, -1.43220786e-08, 0.486752301, -3.99823996e-08, -0.873540044)
								CFrameMon = CFrame.new(-1868.67688, 73.0011826, -3321.66333, -0.971402287, 1.06502087e-08, 0.237439692, 3.68856199e-08, 1, 1.06050372e-07, -0.237439692, 1.11775684e-07, -0.971402287)
							elseif MyLevel == 950 or MyLevel <= 974 then -- Zombie [Lv. 950]
								Ms = "Zombie [Lv. 950]"
								NaemQuest = "ZombieQuest"
								LevelQuest = 1
								NameMon = "Zombie"
								CFrameQuest = CFrame.new(-5492.79395, 48.5151672, -793.710571, 0.321800292, -6.24695815e-08, 0.946807742, 4.05616092e-08, 1, 5.21931227e-08, -0.946807742, 2.16082796e-08, 0.321800292)
								CFrameMon = CFrame.new(-5634.83838, 126.067039, -697.665039, -0.992770672, 6.77618939e-09, 0.120025545, 1.65461245e-08, 1, 8.04023372e-08, -0.120025545, 8.18070234e-08, -0.992770672)
							elseif MyLevel == 975 or MyLevel <= 999 then -- Vampire [Lv. 975]
								Ms = "Vampire [Lv. 975]"
								NaemQuest = "ZombieQuest"
								LevelQuest = 2
								NameMon = "Vampire"
								CFrameQuest = CFrame.new(-5492.79395, 48.5151672, -793.710571, 0.321800292, -6.24695815e-08, 0.946807742, 4.05616092e-08, 1, 5.21931227e-08, -0.946807742, 2.16082796e-08, 0.321800292)
								CFrameMon = CFrame.new(-6030.32031, 6.4377408, -1313.5564, -0.856965423, 3.9138893e-08, -0.515373945, -1.12178942e-08, 1, 9.45958547e-08, 0.515373945, 8.68467822e-08, -0.856965423)
							elseif MyLevel == 1000 or MyLevel <= 1049 then -- Snow Trooper [Lv. 1000] **
								Ms = "Snow Trooper [Lv. 1000]"
								NaemQuest = "SnowMountainQuest"
								LevelQuest = 1
								NameMon = "Snow Trooper"
								CFrameQuest = CFrame.new(604.964966, 401.457062, -5371.69287, 0.353063971, 1.89520435e-08, -0.935599446, -5.81846002e-08, 1, -1.70033754e-09, 0.935599446, 5.50377841e-08, 0.353063971)
								CFrameMon = CFrame.new(535.893433, 401.457062, -5329.6958, -0.999524176, 0, 0.0308452044, 0, 1, -0, -0.0308452044, 0, -0.999524176)
							elseif MyLevel == 1050 or MyLevel <= 1099 then -- Winter Warrior [Lv. 1050]
								Ms = "Winter Warrior [Lv. 1050]"
								NaemQuest = "SnowMountainQuest"
								LevelQuest = 2
								NameMon = "Winter Warrior"
								CFrameQuest = CFrame.new(604.964966, 401.457062, -5371.69287, 0.353063971, 1.89520435e-08, -0.935599446, -5.81846002e-08, 1, -1.70033754e-09, 0.935599446, 5.50377841e-08, 0.353063971)
								CFrameMon = CFrame.new(1223.7417, 454.575226, -5170.02148, 0.473996818, 2.56845354e-08, 0.880526543, -5.62456428e-08, 1, 1.10811016e-09, -0.880526543, -5.00510211e-08, 0.473996818)
							elseif MyLevel == 1100 or MyLevel <= 1124 then -- Lab Subordinate [Lv. 1100]
								Ms = "Lab Subordinate [Lv. 1100]"
								NaemQuest = "IceSideQuest"
								LevelQuest = 1
								NameMon = "Lab Subordinate"
								CFrameQuest = CFrame.new(-6060.10693, 15.9868021, -4904.7876, -0.411000341, -5.06538868e-07, 0.91163528, 1.26306062e-07, 1, 6.12581289e-07, -0.91163528, 3.66916197e-07, -0.411000341)
								CFrameMon = CFrame.new(-5769.2041, 37.9288292, -4468.38721, -0.569419742, -2.49055017e-08, 0.822046936, -6.96206541e-08, 1, -1.79282633e-08, -0.822046936, -6.74401548e-08, -0.569419742)
							elseif MyLevel == 1125 or MyLevel <= 1174 then -- Horned Warrior [Lv. 1125]
								Ms = "Horned Warrior [Lv. 1125]"
								NaemQuest = "IceSideQuest"
								LevelQuest = 2
								NameMon = "Horned Warrior"
								CFrameQuest = CFrame.new(-6060.10693, 15.9868021, -4904.7876, -0.411000341, -5.06538868e-07, 0.91163528, 1.26306062e-07, 1, 6.12581289e-07, -0.91163528, 3.66916197e-07, -0.411000341)
								CFrameMon = CFrame.new(-6400.85889, 24.7645149, -5818.63574, -0.964845479, 8.65926566e-08, -0.262817472, 3.98261392e-07, 1, -1.13260398e-06, 0.262817472, -1.19745812e-06, -0.964845479)
							elseif MyLevel == 1175 or MyLevel <= 1199 then -- Magma Ninja [Lv. 1175]
								Ms = "Magma Ninja [Lv. 1175]"
								NaemQuest = "FireSideQuest"
								LevelQuest = 1
								NameMon = "Magma Ninja"
								CFrameQuest = CFrame.new(-5431.09473, 15.9868021, -5296.53223, 0.831796765, 1.15322464e-07, -0.555080295, -1.10814341e-07, 1, 4.17010995e-08, 0.555080295, 2.68240168e-08, 0.831796765)
								CFrameMon = CFrame.new(-5496.65576, 58.6890411, -5929.76855, -0.885073781, 0, -0.465450764, 0, 1.00000012, -0, 0.465450764, 0, -0.885073781)
							elseif MyLevel == 1200 or MyLevel <= 1249 then -- Lava Pirate [Lv. 1200]
								Ms = "Lava Pirate [Lv. 1200]"
								NaemQuest = "FireSideQuest"
								LevelQuest = 2
								NameMon = "Lava Pirate"
								CFrameQuest = CFrame.new(-5431.09473, 15.9868021, -5296.53223, 0.831796765, 1.15322464e-07, -0.555080295, -1.10814341e-07, 1, 4.17010995e-08, 0.555080295, 2.68240168e-08, 0.831796765)
								CFrameMon = CFrame.new(-5169.71729, 34.1234779, -4669.73633, -0.196780294, 0, 0.98044765, 0, 1.00000012, -0, -0.98044765, 0, -0.196780294)
							elseif MyLevel == 1250 or MyLevel <= 1274 then -- Ship Deckhand [Lv. 1250]
								Ms = "Ship Deckhand [Lv. 1250]"
								NaemQuest = "ShipQuest1"
								LevelQuest = 1
								NameMon = "Ship Deckhand"
								CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016, -0.244533166, -0, -0.969640911, -0, 1.00000012, -0, 0.96964103, 0, -0.244533136)
								CFrameMon = CFrame.new(1163.80872, 138.288452, 33058.4258, -0.998580813, 5.49076979e-08, -0.0532564968, 5.57436763e-08, 1, -1.42118655e-08, 0.0532564968, -1.71604082e-08, -0.998580813)
								if getgenv().Setting["Auto Farm Level"] and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
								end
							elseif MyLevel == 1275 or MyLevel <= 1299 then -- Ship Engineer [Lv. 1275]
								Ms = "Ship Engineer [Lv. 1275]"
								NaemQuest = "ShipQuest1"
								LevelQuest = 2
								NameMon = "Ship Engineer"
								CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016, -0.244533166, -0, -0.969640911, -0, 1.00000012, -0, 0.96964103, 0, -0.244533136)
								CFrameMon = CFrame.new(916.666504, 44.0920448, 32917.207, -0.99746871, -4.85034697e-08, -0.0711069331, -4.8925461e-08, 1, 4.19294288e-09, 0.0711069331, 7.66126895e-09, -0.99746871)
								if getgenv().Setting["Auto Farm Level"] and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
								end
							elseif MyLevel == 1300 or MyLevel <= 1324 then -- Ship Steward [Lv. 1300]
								Ms = "Ship Steward [Lv. 1300]"
								NaemQuest = "ShipQuest2"
								LevelQuest = 1
								NameMon = "Ship Steward"
								CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125, -0.869560242, 1.51905191e-08, -0.493826836, 1.44108379e-08, 1, 5.38534195e-09, 0.493826836, -2.43357912e-09, -0.869560242)
								CFrameMon = CFrame.new(918.743286, 129.591064, 33443.4609, -0.999792814, -1.7070947e-07, -0.020350717, -1.72559169e-07, 1, 8.91351277e-08, 0.020350717, 9.2628369e-08, -0.999792814)
								if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
								end
							elseif MyLevel == 1325 or MyLevel <= 1349 then -- Ship Officer [Lv. 1325]
								Ms = "Ship Officer [Lv. 1325]"
								NaemQuest = "ShipQuest2"
								LevelQuest = 2
								NameMon = "Ship Officer"
								CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125, -0.869560242, 1.51905191e-08, -0.493826836, 1.44108379e-08, 1, 5.38534195e-09, 0.493826836, -2.43357912e-09, -0.869560242)
								CFrameMon = CFrame.new(786.051941, 181.474106, 33303.2969, 0.999285698, -5.32193063e-08, 0.0377905183, 5.68968588e-08, 1, -9.62386864e-08, -0.0377905183, 9.83201005e-08, 0.999285698)
								if getgenv().AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
								end
							elseif MyLevel == 1350 or MyLevel <= 1374 then -- Arctic Warrior [Lv. 1350]
								Ms = "Arctic Warrior [Lv. 1350]"
								NaemQuest = "FrostQuest"
								LevelQuest = 1
								NameMon = "Arctic Warrior"
								CFrameQuest = CFrame.new(5669.43506, 28.2117786, -6482.60107, 0.888092756, 1.02705066e-07, 0.459664226, -6.20391774e-08, 1, -1.03572376e-07, -0.459664226, 6.34646895e-08, 0.888092756)
								CFrameMon = CFrame.new(5995.07471, 57.3188477, -6183.47314, 0.702747107, -1.53454167e-07, -0.711440146, -1.08168464e-07, 1, -3.22542007e-07, 0.711440146, 3.03620908e-07, 0.702747107)
								if getgenv().AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 5000.034996032715, -132.83953857422))
								end
							elseif MyLevel == 1375 or MyLevel <= 1424 then -- Snow Lurker [Lv. 1375]
								Ms = "Snow Lurker [Lv. 1375]"
								NaemQuest = "FrostQuest"
								LevelQuest = 2
								NameMon = "Snow Lurker"
								CFrameQuest = CFrame.new(5669.43506, 28.2117786, -6482.60107, 0.888092756, 1.02705066e-07, 0.459664226, -6.20391774e-08, 1, -1.03572376e-07, -0.459664226, 6.34646895e-08, 0.888092756)
								CFrameMon = CFrame.new(5518.00684, 60.5559731, -6828.80518, -0.650781393, -3.64292951e-08, 0.759265184, -4.07668654e-09, 1, 4.44854642e-08, -0.759265184, 2.58550248e-08, -0.650781393)
							elseif MyLevel == 1425 or MyLevel <= 1449 then -- Sea Soldier [Lv. 1425]
								Ms = "Sea Soldier [Lv. 1425]"
								NaemQuest = "ForgottenQuest"
								LevelQuest = 1
								NameMon = "Sea Soldier"
								CFrameQuest = CFrame.new(-3052.99097, 236.881363, -10148.1943, -0.997911751, 4.42321983e-08, 0.064591676, 4.90968759e-08, 1, 7.37270085e-08, -0.064591676, 7.67442998e-08, -0.997911751)
								CFrameMon = CFrame.new(-3029.78467, 66.944252, -9777.38184, -0.998552859, 1.09555076e-08, 0.0537791774, 7.79564235e-09, 1, -5.89660658e-08, -0.0537791774, -5.84614881e-08, -0.998552859)
							elseif MyLevel >= 1450 then -- Water Fighter [Lv. 1450]
								Ms = "Water Fighter [Lv. 1450]"
								NaemQuest = "ForgottenQuest"
								LevelQuest = 2
								NameMon = "Water Fighter"
								CFrameQuest = CFrame.new(-3052.99097, 236.881363, -10148.1943, -0.997911751, 4.42321983e-08, 0.064591676, 4.90968759e-08, 1, 7.37270085e-08, -0.064591676, 7.67442998e-08, -0.997911751)
								CFrameMon = CFrame.new(-3436.11401, 289.52652, -10504.2559, -0.999507904, 2.13766516e-08, 0.031368468, 2.18623413e-08, 1, 1.51404205e-08, -0.031368468, 1.58187579e-08, -0.999507904)
							end
						else
							local MyLevel =  game.Players.LocalPlayer.Data.Level.Value
							Dis = 240
							if MyLevel == 1500 or MyLevel <= 1524 then
								Ms = "Pirate Millionaire [Lv. 1500]"
								NaemQuest = "PiratePortQuest"
								LevelQuest = 1
								NameMon = "Pirate Millionaire"
								CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
								CFrameMon = CFrame.new(81.164993286133, 43.755737304688, 5724.7021484375)
							elseif MyLevel == 1525 or MyLevel <= 1574 then
								Ms = "Pistol Billionaire [Lv. 1525]"
								NaemQuest = "PiratePortQuest"
								LevelQuest = 2
								NameMon = "Pistol Billionaire"
								CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
								CFrameMon = CFrame.new(81.164993286133, 43.755737304688, 5724.7021484375)
							elseif MyLevel == 1575 or MyLevel <= 1599 then
								Ms = "Dragon Crew Warrior [Lv. 1575]"
								NaemQuest = "AmazonQuest"
								LevelQuest = 1
								NameMon = "Dragon Crew Warrior"
								CFrameQuest = CFrame.new(5832.83594, 51.6806107, -1101.51563, 0.898790359, -0, -0.438378751, 0, 1, -0, 0.438378751, 0, 0.898790359)
								CFrameMon = CFrame.new(6241.9951171875, 51.522083282471, -1243.9771728516)
							elseif MyLevel == 1600 or MyLevel <= 1624 then
								Ms = "Dragon Crew Archer [Lv. 1600]"
								NaemQuest = "AmazonQuest"
								LevelQuest = 2
								NameMon = "Dragon Crew Archer"
								CFrameQuest = CFrame.new(5832.83594, 51.6806107, -1101.51563, 0.898790359, -0, -0.438378751, 0, 1, -0, 0.438378751, 0, 0.898790359)
								CFrameMon = CFrame.new(6488.9155273438, 383.38375854492, -110.66246032715)
							elseif MyLevel == 1625 or MyLevel <= 1649 then
								Ms = "Female Islander [Lv. 1625]"
								NaemQuest = "AmazonQuest2"
								LevelQuest = 1
								NameMon = "Female Islander"
								CFrameQuest = CFrame.new(5448.86133, 601.516174, 751.130676, 0, 0, 1, 0, 1, -0, -1, 0, 0)
								CFrameMon = CFrame.new(4770.4990234375, 758.95520019531, 1069.8680419922)
							elseif MyLevel == 1650 or MyLevel <= 1699 then
								Ms = "Giant Islander [Lv. 1650]"
								NaemQuest = "AmazonQuest2"
								LevelQuest = 2
								NameMon = "Giant Islander"
								CFrameQuest = CFrame.new(5448.86133, 601.516174, 751.130676, 0, 0, 1, 0, 1, -0, -1, 0, 0)
								CFrameMon = CFrame.new(4530.3540039063, 656.75695800781, -131.60952758789)
							elseif MyLevel == 1700 or MyLevel <= 1724 then
								Ms = "Marine Commodore [Lv. 1700]"
								NaemQuest = "MarineTreeIsland"
								LevelQuest = 1
								NameMon = "Marine Commodore"
								CFrameQuest = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747)
								CFrameMon = CFrame.new(2490.0844726563, 190.4232635498, -7160.0502929688)
							elseif MyLevel == 1725 or MyLevel <= 1774 then
								Ms = "Marine Rear Admiral [Lv. 1725]"
								NaemQuest = "MarineTreeIsland"
								LevelQuest = 2
								NameMon = "Marine Rear Admiral"
								CFrameQuest = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747)
								CFrameMon = CFrame.new(3951.3903808594, 229.11549377441, -6912.81640625)
							elseif MyLevel == 1775 or MyLevel <= 1799 then
								Ms = "Fishman Raider [Lv. 1775]"
								NaemQuest = "DeepForestIsland3"
								LevelQuest = 1
								NameMon = "Fishman Raider"
								CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
								CFrameMon = CFrame.new(-10322.400390625, 390.94473266602, -8580.0908203125)
							elseif MyLevel == 1800 or MyLevel <= 1824 then
								Ms = "Fishman Captain [Lv. 1800]"
								NaemQuest = "DeepForestIsland3"
								LevelQuest = 2
								NameMon = "Fishman Captain"
								CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
								CFrameMon = CFrame.new(-11194.541992188, 442.02795410156, -8608.806640625)
							elseif MyLevel == 1825 or MyLevel <= 1849 then
								Ms = "Forest Pirate [Lv. 1825]"
								NaemQuest = "DeepForestIsland"
								LevelQuest = 1
								NameMon = "Forest Pirate"
								CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)
								CFrameMon = CFrame.new(-13225.809570313, 428.19387817383, -7753.1245117188)
							elseif MyLevel == 1850 or MyLevel <= 1899 then
								Ms = "Mythological Pirate [Lv. 1850]"
								NaemQuest = "DeepForestIsland"
								LevelQuest = 2
								NameMon = "Mythological Pirate"
								CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)
								CFrameMon = CFrame.new(-13869.172851563, 564.95251464844, -7084.4135742188)
							elseif MyLevel == 1900 or MyLevel <= 1924 then
								Ms = "Jungle Pirate [Lv. 1900]"
								NaemQuest = "DeepForestIsland2"
								LevelQuest = 1
								NameMon = "Jungle Pirate"
								CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
								CFrameMon = CFrame.new(-11982.221679688, 376.32522583008, -10451.415039063)
							elseif MyLevel == 1925 or MyLevel <= 1974 then
								Ms = "Musketeer Pirate [Lv. 1925]"
								NaemQuest = "DeepForestIsland2"
								LevelQuest = 2
								NameMon = "Musketeer Pirate"
								CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
								CFrameMon = CFrame.new(-13282.3046875, 496.23684692383, -9565.150390625)
							elseif MyLevel == 1975 or MyLevel <= 1999 then
								Ms = "Reborn Skeleton [Lv. 1975]"
								NaemQuest = "HauntedQuest1"
								LevelQuest = 1
								NameMon = "Reborn Skeleton"
								CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
								CFrameMon = CFrame.new(-8761.3154296875, 164.85829162598, 6161.1567382813)
							elseif MyLevel == 2000 or MyLevel <= 2024 then
								Ms = "Living Zombie [Lv. 2000]"
								NaemQuest = "HauntedQuest1"
								LevelQuest = 2
								NameMon = "Living Zombie"
								CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
								CFrameMon = CFrame.new(-10093.930664063, 237.38233947754, 6180.5654296875)
							elseif MyLevel == 2025 or MyLevel <= 2049 then
								Ms = "Demonic Soul [Lv. 2025]"
								NaemQuest = "HauntedQuest2"
								LevelQuest = 1
								NameMon = "Demonic Soul"
								CFrameQuest = CFrame.new(-9514.78027, 171.162918, 6078.82373, 0.301918149, 7.4535027e-09, 0.953333855, -3.22802141e-09, 1, -6.79604995e-09, -0.953333855, -1.02553133e-09, 0.301918149)
								CFrameMon = CFrame.new(-9503.9921875, 272.1305847167969, 6250.5703125)
							elseif MyLevel == 2050 or MyLevel <= 2074 then
								Ms = "Posessed Mummy [Lv. 2050]" 
								NaemQuest = "HauntedQuest2"
								LevelQuest = 2
								NameMon = "Posessed Mummy"
								CFrameQuest = CFrame.new(-9514.78027, 171.162918, 6078.82373, 0.301918149, 7.4535027e-09, 0.953333855, -3.22802141e-09, 1, -6.79604995e-09, -0.953333855, -1.02553133e-09, 0.301918149)
								CFrameMon = CFrame.new(-9589.93848, 4.85058546, 6190.27197)
							elseif MyLevel == 2075 or MyLevel <= 2099 then
								Ms = "Peanut Scout [Lv. 2075]"
								NaemQuest = "NutsIslandQuest"
								LevelQuest = 1
								NameMon = "Peanut Scout"
								CFrameQuest = CFrame.new(-2075.9643554688, 38.129207611084, -10172.815429688)
								CFrameMon = CFrame.new(-2150.587890625, 122.49767303467, -10358.994140625)
							elseif MyLevel == 2100 or MyLevel <= 2124 then
								Ms = "Peanut President [Lv. 2100]"
								NaemQuest = "NutsIslandQuest"
								LevelQuest = 2
								NameMon = "Peanut President"
								CFrameQuest = CFrame.new(-2075.9643554688, 38.129207611084, -10172.815429688)
								CFrameMon = CFrame.new(-2150.587890625, 122.49767303467, -10358.994140625)
							elseif MyLevel == 2125 or MyLevel <= 2149 then
								Ms = "Ice Cream Chef [Lv. 2125]"
								NaemQuest = "IceCreamIslandQuest"
								LevelQuest = 1
								NameMon = "Ice Cream Chef"
								CFrameQuest = CFrame.new(-819.84533691406, 65.845329284668, -10965.487304688)
								CFrameMon = CFrame.new(-890.55895996094, 186.34135437012, -11127.306640625)
							elseif MyLevel == 2150 or MyLevel <= 2199 then
								Ms = "Ice Cream Commander [Lv. 2150]"
								NaemQuest = "IceCreamIslandQuest"
								LevelQuest = 2
								NameMon = "Ice Cream Commander"
								CFrameQuest = CFrame.new(-819.84533691406, 65.845329284668, -10965.487304688)
								CFrameMon = CFrame.new(-890.55895996094, 186.34135437012, -11127.306640625)
							elseif MyLevel == 2200 or MyLevel <= 2224 then
								Ms = "Cookie Crafter [Lv. 2200]"
								NaemQuest = "CakeQuest1"
								LevelQuest = 1
								NameMon = "Cookie Crafter"
								CFrameQuest = CFrame.new(-2022.3, 36.9276, -12031)
								CFrameMon = CFrame.new(-2280.569091796875, 89.83930206298828, -12041.4326171875)
							elseif MyLevel == 2225 or MyLevel <= 2249 then
								Ms = "Cake Guard [Lv. 2225]"
								NaemQuest = "CakeQuest1"
								LevelQuest = 2
								NameMon = "Cake Guard"
								CFrameQuest = CFrame.new(-2022.3, 36.9276, -12031)
								CFrameMon = CFrame.new(-1621.9512939453125, 195.68287658691406, -12281.0908203125)
							elseif MyLevel == 2250 or MyLevel <= 2274 then
								Ms = "Baking Staff [Lv. 2250]"
								NaemQuest = "CakeQuest2"
								LevelQuest = 1
								NameMon = "Baking Staff"
								CFrameQuest = CFrame.new(-1928.32, 37.7297, -12840.6)
								CFrameMon = CFrame.new(-1912.928955078125, 113.134033203125, -12990.53515625)
							elseif MyLevel == 2275 or MyLevel <= 2299 then
								Ms = "Head Baker [Lv. 2275]"
								NaemQuest = "CakeQuest2"
								LevelQuest = 2
								NameMon = "Head Baker"
								CFrameQuest = CFrame.new(-1927.9107666015625, 37.79813003540039, -12843.78515625)
								CFrameMon = CFrame.new(-2203.302490234375, 109.90937042236328, -12788.7333984375)                            
							elseif MyLevel == 2300 or MyLevel <= 2324 then
								Ms = "Cocoa Warrior [Lv. 2300]"
								NaemQuest = "ChocQuest1"
								LevelQuest = 1
								NameMon = "Cocoa Warriors"
								CFrameQuest = CFrame.new(231.75, 23.9003, -12200.3)
								CFrameMon = CFrame.new(89.75547790527344, 73.66654968261719, -12315.4609375)
							elseif MyLevel == 2325 or MyLevel <= 2349 then
								Ms = "Chocolate Bar Battler [Lv. 2325]"
								NaemQuest = "ChocQuest1"
								LevelQuest = 2
								NameMon = "Chocolate Bar Battler"
								CFrameQuest = CFrame.new(231.75, 23.9003, -12200.3)
								CFrameMon = CFrame.new(614.6710205078125, 81.79888153076172, -12578.4521484375)
							elseif MyLevel == 2350 or MyLevel <= 2374 then
								Ms = "Sweet Thief [Lv. 2350]"
								NaemQuest = "ChocQuest2"
								LevelQuest = 1
								NameMon = "Sweet Thiefs"
								CFrameQuest = CFrame.new(147.222900390625, 24.819623947143555, -12775.2890625)
								CFrameMon = CFrame.new(-92.28578186035156, 132.29556274414062, -12655.9111328125)
							elseif MyLevel == 2375 or MyLevel <= 2399 then
								Ms = "Candy Rebel [Lv. 2375]"
								NaemQuest = "ChocQuest2"
								LevelQuest = 2
								NameMon = "Candy Rebel"
								CFrameQuest = CFrame.new(147.222900390625, 24.819623947143555, -12775.2890625)
								CFrameMon = CFrame.new(-118.311829, 119.293686, -12994.6602, -0.819944978, 7.49255165e-08, -0.572442293, 1.71222219e-08, 1, 1.06362222e-07, 0.572442293, 7.74096875e-08, -0.819944978)
							elseif MyLevel == 2400 or MyLevel <= 2424 then
								Ms = "Candy Pirate [Lv. 2400]"
								NaemQuest = "CandyQuest1"
								LevelQuest = 1
								NameMon = "Candy Pirates"
								CFrameQuest = CFrame.new(-1150.92224, 16.1330528, -14446.7168, -0.216739461, -1.54126809e-08, -0.976229489, -1.16627412e-07, 1, 1.0105289e-08, 0.976229489, 1.16045328e-07, -0.216739461)
								CFrameMon = CFrame.new(-1422.448, 116.137802, -14605.1836, -0.131237909, -8.23204829e-08, -0.991350889, -8.33612646e-08, 1, -7.20030826e-08, 0.991350889, 7.31907335e-08, -0.131237909)
							elseif MyLevel == 2425 or MyLevel <= 2449 then
								Ms = "Snow Demon [Lv. 2425]"
								NaemQuest = "CandyQuest1"
								LevelQuest = 2
								NameMon = "Snow Demons"
								CFrameQuest = CFrame.new(-1150.92224, 16.1330528, -14446.7168, -0.216739461, -1.54126809e-08, -0.976229489, -1.16627412e-07, 1, 1.0105289e-08, 0.976229489, 1.16045328e-07, -0.216739461)
								CFrameMon = CFrame.new(-969.235474, 114.227829, -14634.1367, 0.78648001, -6.67341311e-08, -0.617615759, 2.38086972e-08, 1, -7.77329063e-08, 0.617615759, 4.6430749e-08, 0.78648001)
							 elseif MyLevel >= 2450 then
								Ms = "Snow Demon [Lv. 2425]"
								NaemQuest = "CandyQuest1"
								LevelQuest = 2
								NameMon = "Snow Demons"
								CFrameQuest = CFrame.new(-1150.92224, 16.1330528, -14446.7168, -0.216739461, -1.54126809e-08, -0.976229489, -1.16627412e-07, 1, 1.0105289e-08, 0.976229489, 1.16045328e-07, -0.216739461)
								CFrameMon = CFrame.new(-969.235474, 114.227829, -14634.1367, 0.78648001, -6.67341311e-08, -0.617615759, 2.38086972e-08, 1, -7.77329063e-08, 0.617615759, 4.6430749e-08, 0.78648001)
							end
					end
				end
				task.spawn(function()
					game:GetService("RunService").Stepped:Connect(function()
						pcall(function()
											if getgenv().LongSword or _G.AutoEliteHunter or getgenv().TwinHooks or getgenv().DragonTrident or getgenv().AutoFarm or getgenv().BuddySword or getgenv().SerpentBow or _G.Tushitahop or _G.AutoAdvanceDungeon or _G.AutoDoughtBoss or _G.Auto_DungeonMobAura or _G.AutoFarmChest or _G.AutoFarmBossHallow or _G.AutoFarmSwanGlasses or _G.AutoLongSword or _G.AutoBlackSpikeycoat or _G.AutoElectricClaw or _G.AutoFarmGunMastery or _G.AutoHolyTorch or _G.AutoLawRaid or _G.AutoFarmBoss or Auto_Twin_Hooks or getgenv().DarkDagger or Auto_Dragon_Trident or _G.AutoSaber or _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.TeleportIsland or _G.Auto_EvoRace or _G.Auto_kill_Canvander or _G.AutoObservationv2 or _G.AutoMusketeerHat or _G.AutoEctoplasm or _G.AutoRengoku or _G.Auto_Rainbow_Haki or _G.AutoObservation or _G.AutoDarkDagger or _G.Safe_Mode or _G.MasteryFruit or _G.AutoBudySword or _G.AutoOderSword or _G.AutoBounty or _G.AutoAllBoss or _G.Auto_Bounty or _G.AutoSharkman or _G.Auto_Mastery_Fruit or _G.Auto_Mastery_Gun or _G.Auto_Dungeon or _G.Auto_Cavender or _G.Auto_Pole or _G.Auto_Kill_Ply or _G.Auto_Factory or _G.AutoSecondSea or _G.TeleportPly or _G.AutoBartilo or _G.Auto_DarkBoss or _G.GrabChest or _G.AutoFarmBounty or getgenv().DragonTrident or _G.Clip or FarmBoss or _G.AutoElitehunter or _G.AutoThirdSea or _G.Auto_Bone or getgenv().Canvander or _G.AutoFactory or Pole_Farm or Auto_Serpent_Bow or Auto_Canvander or getgenv().LegendarySwor or _G.AutoSaber2 or _G.AutoFarmAllBoss or _G.SOLSecond or _G.Auto_Next_Island or _G.AutoNextIsland or _G.Auto_Farm_Ectoplasm or getgenv().PoleSword or _G.Auto_Open_Dough_Dungeon or _G.Auto_Farm_Chest or _G.Auto_Soul_Reaper or _G.Auto_Cake_Prince or _G.Auto_Saber or _G.FastFarmPlayer or Auto_Cursed_Dual_Katana or AutoFarmMaterial or Auto_Quest_Yama_1 or Auto_Quest_Yama_2 or Auto_Quest_Yama_3 or Auto_Quest_Tushita_1 or Auto_Quest_Tushita_2 or Auto_Quest_Tushita_3 or getgenv().AutoThirdSea or _G.FastFarmPlayer1 or _G.Auto_Mystic_Island or _G.Auto_kill_Empress or _G.Auto_kill_Captain or _G.Auto_kill_Captains or _G.Auto_Next_Island2 or _G.BringFruit2 or _G.AutoTideKeeper or _G.AutoSwordSword or _G.FastFarmx or getgenv().AutoBone or getgenv().cakefarm or getgenv().Ectoplasm or getgenv().FarmBoss or getgenv().FarmAllBoss or getgenv().Elitehunter or _G.AutoMasterySwrod or getgenv().swordmas or getgenv().cakefarm or _G.FastFarmMode or getgenv().BossHallow or getgenv().Second or getgenv().PirateRaid or getgenv().Mobaura or getgenv().Grabchest or getgenv().Setting["Auto Farm Level"] or getgenv().FastFarmMode or getgenv().Setting["Auto Farm Boss"] or getgenv().Setting["Cake Prince"] or getgenv().Setting["Auto Farm All Boss"] or getgenv().Setting["Auto Farm Bone"] or getgenv().Setting["Auto Farm Ectoplasm"] == true then
								if syn then
									setfflag("HumanoidParallelRemoveNoPhysics", "False")
									setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False")
									game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
									if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit == true then
										game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit = false
									end
								else
									if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
										if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyVelocity1") then
											if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit == true then
												game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit = false
											end
											setfflag("HumanoidParallelRemoveNoPhysics", "False")
											local BodyVelocity = Instance.new("BodyVelocity")
											BodyVelocity.Name = "BodyVelocity1"
											BodyVelocity.Parent =  game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
											BodyVelocity.MaxForce = Vector3.new(10000, 10000, 10000)
											BodyVelocity.Velocity = Vector3.new(0, 0, 0)
										end
									end
									for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
										if v:IsA("BasePart") then
											v.CanCollide = false    
										end
									end
								end
							else
								if game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyVelocity1") then
									game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyVelocity1"):Destroy();
								end
							end
						end)
					end)
				end)

				-- [Combat

				task.spawn(function() 
					while true do task.wait(0.3);
					coroutine.wrap(function() 
					pcall(function() 
					game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring("Combat"));
					game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("unequipWeapon",tostring("Combat"));
					end);
					end)();
					end;
					end);

					-- [game.PlaceId
					
				if game.PlaceId == 2753915549 then
					World1 = true
				elseif game.PlaceId == 4442272183 then
					World2 = true
				elseif game.PlaceId == 7449423635 then
					World3 = true
				end

				-- [game.PlaceId

				if game.PlaceId == 2753915549 then
					W1 = true
				elseif game.PlaceId == 4442272183 then
					W2 = true
				elseif game.PlaceId == 7449423635 then
					W3 = true
				end
				
				game:GetService("Players").LocalPlayer.Character.LowerTorso:Destroy()
		
							function InMyNetWork(object)
								if isnetworkowner then
									return isnetworkowner(object)
								else
									if (object.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 200 then 
										return true
									end
									return false
								end
							end

							-- [Magnet
		
							task.spawn(function()
								while task.wait() do
									pcall(function()
										if MagnetActive then
											for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
												if not string.find(v.Name,"Boss") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 350 then
													if InMyNetWork(v.HumanoidRootPart) then
														v.HumanoidRootPart.CFrame = PosMon
														v.Humanoid.JumpPower = 0
														v.Humanoid.WalkSpeed = 0
														v.HumanoidRootPart.Size = Vector3.new(30,30,30)
														v.HumanoidRootPart.Transparency = 1
														v.HumanoidRootPart.CanCollide = false
														v.Head.CanCollide = false
														v.Humanoid:ChangeState(11)
														v.Humanoid:ChangeState(14)
													end
												end
											end
										end
									end)
								end
							end)

		                      -- [Magnet

								task.spawn(function()
									while task.wait() do
										pcall(function()
											if BringMobFarm then
												for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
													if not string.find(v.Name,"Boss") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 350 then
														if InMyNetWork(v.HumanoidRootPart) then
															v.HumanoidRootPart.CFrame = PosMon
															v.Humanoid.JumpPower = 0
															v.Humanoid.WalkSpeed = 0
															v.HumanoidRootPart.Size = Vector3.new(90,90,90)
															v.HumanoidRootPart.Transparency = 1
															v.HumanoidRootPart.CanCollide = false
															v.Head.CanCollide = false
															if v.Humanoid:FindFirstChild("Animator") then
																v.Humanoid.Animator:Destroy()
															end
															v.Humanoid:ChangeState(11)
															v.Humanoid:ChangeState(14)
														end
													end
												end
											end
										end)
									end
								end)

							-- [Magnet

								task.spawn(function()
									while task.wait() do
										pcall(function()
											if MagnetSword then
												for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
													if not string.find(v.Name,"Boss") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 500 then
														if InMyNetWork(v.HumanoidRootPart) then
															v.HumanoidRootPart.CFrame = PosMon
															v.Humanoid.JumpPower = 0
															v.Humanoid.WalkSpeed = 0
															v.HumanoidRootPart.Size = Vector3.new(90,90,90)
															v.HumanoidRootPart.Transparency = 1
															v.HumanoidRootPart.CanCollide = false
															v.Head.CanCollide = false
															if v.Humanoid:FindFirstChild("Animator") then
																v.Humanoid.Animator:Destroy()
															end
															v.Humanoid:ChangeState(11)
															v.Humanoid:ChangeState(14)
														end
													end
												end
											end
										end)
									end
								end)

               -- [Hop]
				function Hop()
					local PlaceID = game.PlaceId
					local AllIDs = {}
					local foundAnything = ""
					local actualHour = os.date("!*t").hour
					local Deleted = false
					function TPReturner()
					local Site;
					if foundAnything == "" then
					Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
					else
					Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
					end
					local ID = ""
					if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
					foundAnything = Site.nextPageCursor
					end
					local num = 0;
					for i,v in pairs(Site.data) do
					local Possible = true
					ID = tostring(v.id)
					if tonumber(v.maxPlayers) > tonumber(v.playing) then
					for _,Existing in pairs(AllIDs) do
						if num ~= 0 then
							if ID == tostring(Existing) then
								Possible = false
							end
						else
							if tonumber(actualHour) ~= tonumber(Existing) then
								local delFile = pcall(function()
									AllIDs = {}
									table.insert(AllIDs, actualHour)
								end)
							end
						end
						num = num + 1
					end
					if Possible == true then
						table.insert(AllIDs, ID)
						wait()
						pcall(function()
							wait()
							game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
						end)
						wait(4)
					end
					end
					end
					end
					function Teleport() 
					while wait() do
					pcall(function()
					TPReturner()
					if foundAnything ~= "" then
						TPReturner()
					end
					end)
					end
					end
					Teleport()
					end    

				
				function Attack()
					pcall(function()
						game:GetService'VirtualUser':CaptureController()
						game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
					end)
				end

              -- [Remove Stun]

				task.spawn(function()
					if game.Players.LocalPlayer.Character:FindFirstChild("Stun") then
						game.Players.LocalPlayer.Character.Stun.Changed:connect(function()
							pcall(function()
								if game.Players.LocalPlayer.Character:FindFirstChild("Stun") then
									game.Players.LocalPlayer.Character.Stun.Value = 0
								end
							end)
						end)
					end
				end)

				-- [AutoHaki]

				function AutoHaki()
					if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
					end
					end

					-- [UnEquipWeapon]
					
					function UnEquipWeapon(Weapon)
					if game.Players.LocalPlayer.Character:FindFirstChild(Weapon) then
					_G.NotAutoEquip = true
					wait(.1)
					game.Players.LocalPlayer.Character:FindFirstChild(Weapon).Parent = game.Players.LocalPlayer.Backpack
					wait(.1)
					_G.NotAutoEquip = false
					end
					end

					-- [EquipWeapon]
					
					function EquipWeapon(ToolSe)
					if not _G.NotAutoEquip then
					if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
					Tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
					wait(.1)
					game.Players.LocalPlayer.Character.Humanoid:EquipTool(Tool)
					end
					end
					end

				-- [topos(Pos)]

				function topos(Pos)
					Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
					if game.Players.LocalPlayer.Character.Humanoid.Sit == true then game.Players.LocalPlayer.Character.Humanoid.Sit = false end
					pcall(function() tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,TweenInfo.new(Distance/330, Enum.EasingStyle.Linear),{CFrame = Pos}) end)
					tween:Play()
					if Distance <= 320 then
						tween:Cancel()
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Pos
					end
					if _G.Bypassse and Distance >= 3000 then
						if not  _G.AutoNextIsland then end
						game.Players.LocalPlayer.Character.Humanoid.Health =- math.huge
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Pos
						  if game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health == 0 then
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Pos
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Pos
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
						  end
						  end
					if _G.StopTween == true then
						tween:Cancel()
						_G.Clip = false
					end
				end

				-- [TweenService(Pos)]

				function TweenService(Pos)
					Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
					if game.Players.LocalPlayer.Character.Humanoid.Sit == true then game.Players.LocalPlayer.Character.Humanoid.Sit = false end
					pcall(function() tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,TweenInfo.new(Distance/300, Enum.EasingStyle.Linear),{CFrame = Pos}) end)
					tween:Play()
					if Distance <= 300 then
						tween:Cancel()
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Pos
					end
					if _G.Bypassse and Distance >= 3000 then
						if not  _G.AutoNextIsland then end
						game.Players.LocalPlayer.Character.Humanoid.Health = 0
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Pos
						  if game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health == 0 then
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Pos
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Pos
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
						  end
						  end
					if _G.StopTween == true then
						tween:Cancel()
						_G.Clip = false
					end
				end
			
              -- [ToTarget]
						
		local r=game:GetService("Players").LocalPlayer
		getgenv().ToTarget=function(p)
			task.spawn(function()
				pcall(function()
					if r:DistanceFromCharacter(p.Position)<=300 then 
						r.Character.HumanoidRootPart.CFrame=p
					else if not game.Players.LocalPlayer.Character:FindFirstChild("Root")then 
						local K=Instance.new("Part",game.Players.LocalPlayer.Character)
						K.Size=Vector3.new(1,0.5,1)
						K.Name="Root"
						K.Anchored=true
						K.Transparency=1
						K.CanCollide=false
						K.CFrame=game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(0,20,0)
					end
		
					local U=(game.Players.LocalPlayer.Character.HumanoidRootPart.Position-p.Position).Magnitude
					local z=game:service("TweenService")
					local B=TweenInfo.new((p.Position-game.Players.LocalPlayer.Character.Root.Position).Magnitude/300,Enum.EasingStyle.Linear)
					local S,g=pcall(function()
						local q=z:Create(game.Players.LocalPlayer.Character.Root,B,{CFrame=p})
		q:Play()
		end)
		if not S then 
			return g
		end
		game.Players.LocalPlayer.Character.Root.CFrame=game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		if S and game.Players.LocalPlayer.Character:FindFirstChild("Root")then 
			pcall(function()
				if(game.Players.LocalPlayer.Character.HumanoidRootPart.Position-p.Position).Magnitude>=20 then 
					spawn(function()
						pcall(function()if(game.Players.LocalPlayer.Character.Root.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude>150 then game.Players.LocalPlayer.Character.Root.CFrame=game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		else game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=game.Players.LocalPlayer.Character.Root.CFrame
		end
		end)
		end)
		elseif(game.Players.LocalPlayer.Character.HumanoidRootPart.Position-p.Position).Magnitude>=10 and(game.Players.LocalPlayer.Character.HumanoidRootPart.Position-p.Position).Magnitude<20 then 
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=p
		elseif(game.Players.LocalPlayer.Character.HumanoidRootPart.Position-p.Position).Magnitude<10 then 
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=p
		end
		end)
		end
		end
		end)
		end)
		end
				
				  -- [No Clip]


					spawn(function()
						game:GetService("RunService").Heartbeat:Connect(function()
																			if getgenv().LongSword or _G.AutoEliteHunter or getgenv().TwinHooks or getgenv().DragonTrident or getgenv().AutoFarm or getgenv().BuddySword or getgenv().SerpentBow or _G.Tushitahop or _G.AutoAdvanceDungeon or _G.AutoDoughtBoss or _G.Auto_DungeonMobAura or _G.AutoFarmChest or _G.AutoFarmBossHallow or _G.AutoFarmSwanGlasses or _G.AutoLongSword or _G.AutoBlackSpikeycoat or _G.AutoElectricClaw or _G.AutoFarmGunMastery or _G.AutoHolyTorch or _G.AutoLawRaid or _G.AutoFarmBoss or Auto_Twin_Hooks or getgenv().DarkDagger or Auto_Dragon_Trident or _G.AutoSaber or _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.TeleportIsland or _G.Auto_EvoRace or _G.Auto_kill_Canvander or _G.AutoObservationv2 or _G.AutoMusketeerHat or _G.AutoEctoplasm or _G.AutoRengoku or _G.Auto_Rainbow_Haki or _G.AutoObservation or _G.AutoDarkDagger or _G.Safe_Mode or _G.MasteryFruit or _G.AutoBudySword or _G.AutoOderSword or _G.AutoBounty or _G.AutoAllBoss or _G.Auto_Bounty or _G.AutoSharkman or _G.Auto_Mastery_Fruit or _G.Auto_Mastery_Gun or _G.Auto_Dungeon or _G.Auto_Cavender or _G.Auto_Pole or _G.Auto_Kill_Ply or _G.Auto_Factory or _G.AutoSecondSea or _G.TeleportPly or _G.AutoBartilo or _G.Auto_DarkBoss or _G.GrabChest or _G.AutoFarmBounty or getgenv().DragonTrident or _G.Clip or FarmBoss or _G.AutoElitehunter or _G.AutoThirdSea or _G.Auto_Bone or getgenv().Canvander or _G.AutoFactory or Pole_Farm or Auto_Serpent_Bow or Auto_Canvander or getgenv().LegendarySwor or _G.AutoSaber2 or _G.AutoFarmAllBoss or _G.SOLSecond or _G.Auto_Next_Island or _G.AutoNextIsland or _G.Auto_Farm_Ectoplasm or getgenv().PoleSword or _G.Auto_Open_Dough_Dungeon or _G.Auto_Farm_Chest or _G.Auto_Soul_Reaper or _G.Auto_Cake_Prince or _G.Auto_Saber or _G.FastFarmPlayer or Auto_Cursed_Dual_Katana or AutoFarmMaterial or Auto_Quest_Yama_1 or Auto_Quest_Yama_2 or Auto_Quest_Yama_3 or Auto_Quest_Tushita_1 or Auto_Quest_Tushita_2 or Auto_Quest_Tushita_3 or getgenv().AutoThirdSea or _G.FastFarmPlayer1 or _G.Auto_Mystic_Island or _G.Auto_kill_Empress or _G.Auto_kill_Captain or _G.Auto_kill_Captains or _G.Auto_Next_Island2 or _G.BringFruit2 or _G.AutoTideKeeper or _G.AutoSwordSword or _G.FastFarmx or getgenv().AutoBone or getgenv().cakefarm or getgenv().Ectoplasm or getgenv().FarmBoss or getgenv().FarmAllBoss or getgenv().Elitehunter or _G.AutoMasterySwrod or getgenv().swordmas or getgenv().cakefarm or _G.FastFarmMode or getgenv().BossHallow or getgenv().Second or getgenv().PirateRaid or getgenv().Mobaura or getgenv().Grabchest or getgenv().Setting["Auto Farm Level"] or getgenv().FastFarmMode or getgenv().Setting["Auto Farm All Boss"] or getgenv().Setting["Cake Prince"] or getgenv().Setting["Auto Farm All Boss"] or getgenv().Setting["Auto Farm Boss"] or getgenv().Setting["Auto Farm Bone"] == true then
								setfflag("HumanoidParallelRemoveNoPhysics", "False")
								setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False")
								game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
							end
						end)
					end)

					  -- [Destroy(Death)]

					if game:GetService("ReplicatedStorage").Effect.Container:FindFirstChild("Death") then
						game:GetService("ReplicatedStorage").Effect.Container.Death:Destroy()
					end
			
					  -- [Type=math.random]

					task.spawn(function() 
					_G.Type=math.random(1,5);
					while task.wait(0.2) do
					_G.Type=math.random(1,5);
					end;
					end);
				
			
			  -- [Destroy(Respawn)]

					if game:GetService("ReplicatedStorage").Effect.Container:FindFirstChild("Respawn") then
						game:GetService("ReplicatedStorage").Effect.Container.Respawn:Destroy()
					end

            -- [EquipWeapon("Key")]

				spawn(function()
					while wait() do
						pcall(function()
							if getgenv().Second then
								EquipWeapon("Key")
							end
						end)
					end
				end)

				-- [Cake Prince]

				task.spawn(function()
					while wait() do
						if getgenv().Setting["Cake Prince"] then
							game.ReplicatedStorage.Remotes.CommF_:InvokeServer("CakePrinceSpawner")
							if game.ReplicatedStorage:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then
								if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then
									for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
										if getgenv().Setting["Cake Prince"] and v.Name == "Cake Prince [Lv. 2300] [Raid Boss]" and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
											repeat wait()
												if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
													Farmtween = topos(v.HumanoidRootPart.CFrame)
												elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
													if Farmtween then
														Farmtween:Stop()
													end
													_G.Attack_Xenon2 = true
												
													if not game.Players.LocalPlayer.Character:FindFirstChild(_G.SelectWeapon) then
														wait()
														EquipWeapon(_G.SelectWeapon)
													end
													PosMon = v.HumanoidRootPart.CFrame
													v.HumanoidRootPart.Size = Vector3.new(160,160,160)
										
													v.Humanoid.JumpPower = 0
													v.Humanoid.WalkSpeed = 0
													v.HumanoidRootPart.CanCollide = false
													v.Humanoid:ChangeState(11)
													if _G.Type==1 then
														topos(v.HumanoidRootPart.CFrame*CFrame.new(0,20,-15));
													   elseif _G.Type==2 then
														topos(v.HumanoidRootPart.CFrame*CFrame.new(15,20,0));
													   elseif _G.Type==3 then
														topos(v.HumanoidRootPart.CFrame*CFrame.new(-15,20,0));
													   elseif _G.Type==4 then
														topos(v.HumanoidRootPart.CFrame*CFrame.new(0,20,15));
													   end
												end
											until not getgenv().Setting["Cake Prince"] or not v.Parent or v.Humanoid.Health <= 0
											_G.Attack_Xenon2 = false
										end
									end
								else
									if game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 0 and (CFrame.new(-1990.672607421875, 4532.99951171875, -14973.6748046875).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude >= 2000 then
										_G.Attack_Xenon = false
										Questtween = topos(CFrame.new(-2151.82153, 149.315704, -12404.9053))
										if (CFrame.new(-2151.82153, 149.315704, -12404.9053).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
											if Questtween then Questtween:Stop() end
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2151.82153, 149.315704, -12404.9053)
											wait(.1)
										end
									end 
								end
							else
								if game:GetService("Workspace").Enemies:FindFirstChild("Cookie Crafter [Lv. 2200]") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Guard [Lv. 2225]") or game:GetService("Workspace").Enemies:FindFirstChild("Baking Staff [Lv. 2250]") or game:GetService("Workspace").Enemies:FindFirstChild("Head Baker [Lv. 2275]") then
									for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
										if (v.Name == "Cookie Crafter [Lv. 2200]" or v.Name == "Cake Guard [Lv. 2225]" or v.Name == "Baking Staff [Lv. 2250]" or v.Name == "Head Baker [Lv. 2275]") and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
											repeat wait()
												if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
													Farmtween = topos(v.HumanoidRootPart.CFrame)
												elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
													if Farmtween then
														Farmtween:Stop()
													end
													_G.Attack_Xenon = true
													StartMagnet = true
													if not game.Players.LocalPlayer.Character:FindFirstChild(_G.SelectWeapon) then
														wait()
														EquipWeapon(_G.SelectWeapon)
													end
													PosMon = v.HumanoidRootPart.CFrame
													v.HumanoidRootPart.Size = Vector3.new(150,160,150)
													v.Humanoid.JumpPower = 0
													v.Humanoid.WalkSpeed = 0
													v.HumanoidRootPart.CanCollide = false
													v.Humanoid:ChangeState(11)
														topos(v.HumanoidRootPart.CFrame*CFrame.new(0,20,5));
				
												end
											until not getgenv().Setting["Cake Prince"] or not v.Parent or v.Humanoid.Health <= 0
											StartMagnet = false
											_G.Attack_Xenon = false
										end
									end
								else
									Questtween = topos(CFrame.new(-2077, 252, -12373))
									if (CFrame.new(-2077, 252, -12373).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
										if Questtween then Questtween:Stop() end
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2077, 252, -12373)
									end
								end
							end
						else
							topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
						end
					end
				end)
				
				
		 -- [RandomBone]
				
				
				spawn(function()
					pcall(function()
						while wait() do
							if getgenv().Setting["Auto Random Bone"] then    
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,1)
							end
						end
					end)
				end)
				
			-- [EquipWeapon(AutoThirdSea)]
		
		
				spawn(function()
					while task.wait() do
						pcall(function()
							if getgenv().AutoThirdSea then
								EquipWeapon(_G.SelectWeapon)
							end
						end)
					end
				end)

				-- [Auto Second Quest]

				spawn(function()
					while wait(.2) do
						if getgenv().Setting["Auto Second Quest"] then
							if Mix_Farm == nil or Auto_New_Farm then
								local Lv = game:GetService("Players").LocalPlayer.Data.Level.Value
								local Beli = game:GetService("Players").LocalPlayer.Data.Beli.Value
								local FG = game:GetService("Players").LocalPlayer.Data.Fragments.Value
								if Lv >= 700 then
									Aura_SOL = true
									Auto_FPS = true
									if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress","Detective") == 1 then
									else
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress","Detective")
										wait(1)
										EquipWeapon("Key")
									end 
									repeat wait()
										topos(CFrame.new(1347.32947, 37.349369, -1325.44922, 0.538348913, 8.57539106e-08, 0.842722058, 8.61935634e-10, 1, -1.0230886e-07, -0.842722058, 5.58042359e-08, 0.538348913))
									until (Vector3.new(1347.32947, 37.349369, -1325.44922)-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 1 or getgenv().Setting["Auto Second Quest"] == false
									wait(2)
									for i,v in pairs(game.workspace.Enemies:GetChildren()) do
										if v.Name == "Ice Admiral [Lv. 700] [Boss]" then
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
												EquipWeapon(_G.SelectWeapon)    
												v.Humanoid.JumpPower = 0
												v.Humanoid.WalkSpeed = 0
												v.HumanoidRootPart.Size = Vector3.new(50,50,50)
												topos(v.HumanoidRootPart.CFrame*CFrame.new(0,30,30))
												_G.FastAttackF2 = true    
											wait(13)
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
											_G.FastAttackF2 = false
											wait(25)
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
										end
									end
								end
							end
						end
					end
				end)

                         -- [Auto Zou Quest]

				getgenv().Setting["Auto Zou Quest"] = false
                
				spawn(function()
					pcall(function()
						while wait() do
							if getgenv().Setting["Auto Zou Quest"] then
								if game:GetService("Players").LocalPlayer.Data.Level.Value >= 1500 and World2 then
									getgenv().Setting["Auto_Farm_Level"] = false
									if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress").KilledIndraBoss == false then
										if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 3 then
											if game:GetService("Players").LocalPlayer.Data.SpawnPoint.Value == "Bar" then
												if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","1") == 0 then
													if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress","Check") == 0 then
														if (CFrame.new(-1926.3221435547, 12.819851875305, 1738.3092041016).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
															wait(1.1)
															Click()
															game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress","Begin")
														else
															topos(CFrame.new(-1926.3221435547, 12.819851875305, 1738.3092041016))
														end
														if game:GetService("Workspace").Enemies:FindFirstChild("rip_indra [Lv. 1500] [Boss]") then
															for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
																if v.Name == "rip_indra [Lv. 1500] [Boss]" then
																	repeat game:GetService("RunService").Heartbeat:wait()
																		Click()
																		pcall(function()
																			_G.Attack_Xenon = true
																			topos(v.HumanoidRootPart.CFrame * CFrame.new(0,25,0))
																			game:GetService'VirtualUser':CaptureController()
																			game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
																			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
																			sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
																		end)
																	until getgenv().Setting["Auto Zou Quest"] == false or v.Humanoid.Health <= 0 or not v.Parent
																	_G.Attack_Xenon = false
																end
															end
														elseif not game:GetService("Workspace").Enemies:FindFirstChild("rip_indra [Lv. 1500] [Boss]") and (CFrame.new(-26880.93359375, 22.848554611206, 473.18951416016).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1000 then
															topos(CFrame.new(-26880.93359375, 22.848554611206, 473.18951416016))
														end
													elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress","Check") ~= 0 then
														if game:GetService("Workspace").Enemies:FindFirstChild("Don Swan [Lv. 1000] [Boss]") or game:GetService("ReplicatedStorage"):FindFirstChild("Don Swan [Lv. 1000] [Boss]") then
															if game:GetService("Workspace").Enemies:FindFirstChild("Don Swan [Lv. 1000] [Boss]") then
																for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
																	if v.Name == "Don Swan [Lv. 1000] [Boss]" then
																		repeat game:GetService("RunService").Heartbeat:wait()
																			pcall(function()
																				topos(v.HumanoidRootPart.CFrame * CFrame.new(0,25,0))
																				game:GetService'VirtualUser':CaptureController()
																				game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
																				sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
																				_G.Attack_Xenon = true
																			end)
																		until getgenv().Setting["Auto Zou Quest"] == false or v.Humanoid.Health <= 0 or not v.Parent
																		_G.Attack_Xenon = false
																	end
																end
															else
																if (CFrame.new(2284.912109375, 15.537666320801, 905.48291015625).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
																	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(2284.912109375, 15.537666320801, 905.48291015625))
																	wait()
																end
																topos(CFrame.new(2284.912109375, 15.537666320801, 905.48291015625))
															end
														elseif ggetgenv().Setting["Auto Zou Quest"] and not game:GetService("Workspace").Enemies:FindFirstChild("Don Swan [Lv. 1000] [Boss]") and not game:GetService("ReplicatedStorage"):FindFirstChild("Don Swan [Lv. 1000] [Boss]") then
															Hop()
														elseif not getgenv().Setting["Auto Zou Quest"] and not game:GetService("Workspace").Enemies:FindFirstChild("Don Swan [Lv. 1000] [Boss]") and not game:GetService("ReplicatedStorage"):FindFirstChild("Don Swan [Lv. 1000] [Boss]") then
															if (CFrame.new(2284.912109375, 15.537666320801, 905.48291015625).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
																game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(2284.912109375, 15.537666320801, 905.48291015625))
																wait()
															end
															topos(CFrame.new(2284.912109375, 15.537666320801, 905.48291015625))
														end
													end
												elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","1") ~= 0 then
													for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
														if string.find(v.Name, "Fruit") then
															if v:IsA("Tool") then
																if (v.Handle.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 20000 then
																	v.Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
																end
															end
														end
													end
													if game.Players.LocalPlayer.Backpack:FindFirstChild("Quake Fruit") or game.Players.LocalPlayer.Backpack:FindFirstChild("Human: Buddha Fruit") or game.Players.LocalPlayer.Backpack:FindFirstChild("String Fruit") or game.Players.LocalPlayer.Backpack:FindFirstChild("Bird: Phoenix Fruit") or game.Players.LocalPlayer.Backpack:FindFirstChild("Rumble Fruit") or game.Players.LocalPlayer.Backpack:FindFirstChild("Paw Fruit") or game.Players.LocalPlayer.Backpack:FindFirstChild("Gravity Fruit") or game.Players.LocalPlayer.Backpack:FindFirstChild("Dough Fruit") or game.Players.LocalPlayer.Backpack:FindFirstChild("Shadow Fruit") or game.Players.LocalPlayer.Backpack:FindFirstChild("Venom Fruit") or game.Players.LocalPlayer.Backpack:FindFirstChild("Control Fruit") or game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Fruit") or game.Players.LocalPlayer.Character:FindFirstChild("Quake Fruit") or game.Players.LocalPlayer.Character:FindFirstChild("Human: Buddha Fruit") or game.Players.LocalPlayer.Character:FindFirstChild("String Fruit") or game.Players.LocalPlayer.Character:FindFirstChild("Bird: Phoenix Fruit") or game.Players.LocalPlayer.Character:FindFirstChild("Rumble Fruit") or game.Players.LocalPlayer.Character:FindFirstChild("Paw Fruit") or game.Players.LocalPlayer.Character:FindFirstChild("Gravity Fruit") or game.Players.LocalPlayer.Character:FindFirstChild("Dough Fruit") or game.Players.LocalPlayer.Character:FindFirstChild("Shadow Fruit") or game.Players.LocalPlayer.Character:FindFirstChild("Venom Fruit") or game.Players.LocalPlayer.Character:FindFirstChild("Control Fruit") or game.Players.LocalPlayer.Character:FindFirstChild("Dragon Fruit") then
														game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","1")
														game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","2")
														game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","3")
													end
												end
											else
												topos(CFrame.new(-379.70889282227, 73.0458984375, 304.84692382813))
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
											end
										else
											if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 0 then
												if string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Swan Pirates") and string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
													if game.Workspace.Enemies:FindFirstChild("Swan Pirate [Lv. 775]") then
														for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
															if v.Name == "Swan Pirate [Lv. 775]" then
																PosMonBarto =  v.HumanoidRootPart.CFrame
																pcall(function()
																	repeat wait()
																		for k,x in pairs(game.Workspace.Enemies:GetChildren()) do
																			if x.Name ==  "Swan Pirate [Lv. 775]"  then
																				x.HumanoidRootPart.Size = Vector3.new(5,5,5)
																				x.HumanoidRootPart.Transparency = 1
																				x.HumanoidRootPart.CanCollide = false
																				x.HumanoidRootPart.CFrame = PosMonBarto
																				sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
																			end
																		end
										Click()
																		v.HumanoidRootPart.CanCollide = false
																		v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
																		topos( v.HumanoidRootPart.CFrame * CFrame.new(0,25,0))
																		_G.Attack_Xenon = true
																		game:GetService'VirtualUser':CaptureController()
																		game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))                           
																	until not v.Parent or v.Humanoid.Health <= 0 or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false
																	_G.Attack_Xenon = false
																end)
															end
														end
													else
														topos(CFrame.new(1057.92761, 137.614319, 1242.08069))
													end
												else
													topos(CFrame.new(-456.28952, 73.0200958, 299.895966))
													wait(1.1)
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","BartiloQuest",1)
												end
											elseif game.Players.LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 1 then
												if game.Workspace.Enemies:FindFirstChild("Jeremy [Lv. 850] [Boss]") then
													Ms = "Jeremy [Lv. 850] [Boss]"
													for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
														if v.Name == Ms then
															repeat wait()
																Click()
																_G.Attack_Xenon = true
																v.HumanoidRootPart.CanCollide = false
																v.HumanoidRootPart.Size = Vector3.new(35, 35, 35)
																topos(v.HumanoidRootPart.CFrame * CFrame.new(0,25,0))
																game:GetService'VirtualUser':CaptureController()
																game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
															until not v.Parent or v.Humanoid.Health <= 0
															_G.Attack_Xenon = false
														end
													end
												elseif game.ReplicatedStorage:FindFirstChild("Jeremy [Lv. 850] [Boss]") then
													topos(CFrame.new(-456.28952, 73.0200958, 299.895966))
													wait(1.1)
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo")
													wait(1)
													topos(CFrame.new(2099.88159, 448.931, 648.997375))
													wait(2)
												else
													topos(CFrame.new(2099.88159, 448.931, 648.997375))
												end
												wait(15)
												if not game.Workspace.Enemies:FindFirstChild("Jeremy [Lv. 850] [Boss]") then
													Hop()
												end
											elseif game.Players.LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 2 then
												topos(CFrame.new(-1850.49329, 13.1789551, 1750.89685))
												wait(1.5)
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1858.87305, 19.3777466, 1712.01807)
												wait(1.5)
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1803.94324, 16.5789185, 1750.89685)
												wait(1.5)
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1858.55835, 16.8604317, 1724.79541)
												wait(1.5)
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1869.54224, 15.987854, 1681.00659)
												wait(1.5)                                                                  
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1800.0979, 16.4978027, 1684.52368) 
												wait(1.5)
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1819.26343, 15.795166, 1717.90625)
												wait(1.5)
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1813.51843, 15.8604736, 1724.79541)
												wait(1.5)
											end
										end
									else
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
									end
								end
							end
						end
					end)
				end)
				spawn(function()
					pcall(function()
						while wait(.1) do wait(5)
							if getgenv().AutoThirdSea and World2 and game:GetService("Players").LocalPlayer.Data.Level.Value >= 1500 then
								if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 3 then
									if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TalkTrevor","1") ~= 0 then
										if not game.Players.LocalPlayer.Backpack:FindFirstChild("Quake Fruit") and not game.Players.LocalPlayer.Backpack:FindFirstChild("Human: Buddha Fruit") and not game.Players.LocalPlayer.Backpack:FindFirstChild("String Fruit") and not game.Players.LocalPlayer.Backpack:FindFirstChild("Bird: Phoenix Fruit") and not game.Players.LocalPlayer.Backpack:FindFirstChild("Rumble Fruit") and not game.Players.LocalPlayer.Backpack:FindFirstChild("Paw Fruit") and not game.Players.LocalPlayer.Backpack:FindFirstChild("Gravity Fruit") and not game.Players.LocalPlayer.Backpack:FindFirstChild("Dough Fruit") and not game.Players.LocalPlayer.Backpack:FindFirstChild("Shadow Fruit") and not game.Players.LocalPlayer.Backpack:FindFirstChild("Venom Fruit") and not game.Players.LocalPlayer.Backpack:FindFirstChild("Control Fruit") and not game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Fruit") and not game.Players.LocalPlayer.Character:FindFirstChild("Quake Fruit") and not game.Players.LocalPlayer.Character:FindFirstChild("Human: Buddha Fruit") and not game.Players.LocalPlayer.Character:FindFirstChild("String Fruit") and not game.Players.LocalPlayer.Character:FindFirstChild("Bird: Phoenix Fruit") and not game.Players.LocalPlayer.Character:FindFirstChild("Rumble Fruit") and not game.Players.LocalPlayer.Character:FindFirstChild("Paw Fruit") and not game.Players.LocalPlayer.Character:FindFirstChild("Gravity Fruit") and not game.Players.LocalPlayer.Character:FindFirstChild("Dough Fruit") and not game.Players.LocalPlayer.Character:FindFirstChild("Shadow Fruit") and not game.Players.LocalPlayer.Character:FindFirstChild("Venom Fruit") and not game.Players.LocalPlayer.Character:FindFirstChild("Control Fruit") and not game.Players.LocalPlayer.Character:FindFirstChild("Dragon Fruit") then
											Hop()
										end
									end
								end
							end
						end
					end)
				end)
				-- [Tween]

				spawn(function()
					game:GetService("RunService").RenderStepped:Connect(function()
					 pcall(function()
					 for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
						 if getgenv().Setting["Auto Farm Bone"] == true then
							   if game:GetService("Workspace").Enemies[v.Name].Humanoid.Health == 0 then
									game:GetService("Workspace").Enemies[v.Name]:Destroy()
								end
								if game:GetService("Workspace").Enemies[v.Name].Humanoid.Health == 0 then
									game:GetService("Workspace").Enemies[v.Name]:Destroy()
								end
							  end
						   end
						end)
					end)
				end)

				-- [Tween]

				spawn(function()
					game:GetService("RunService").RenderStepped:Connect(function()
					 pcall(function()
					 for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
						 if getgenv().Setting["Cake Prince"] or getgenv().Mobaura == true then
							   if game:GetService("Workspace").Enemies[v.Name].Humanoid.Health == 0 then
									game:GetService("Workspace").Enemies[v.Name]:Destroy()
								end
								if game:GetService("Workspace").Enemies[v.Name].Humanoid.Health == 0 then
									game:GetService("Workspace").Enemies[v.Name]:Destroy()
								end
							  end
						   end
						end)
					end)
				end)

				-- [Tween]

				spawn(function()
					game:GetService("RunService").RenderStepped:Connect(function()
					 pcall(function()
					 for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
						 if getgenv().Setting["Auto Farm Level"] == true then
							CheckQuest()
							   if game:GetService("Workspace").Enemies[v.Name].Humanoid.Health == 0 then
									game:GetService("Workspace").Enemies[v.Name]:Destroy()
									getgenv().SupperFast = false
									UnEquipWeapon(_G.SelectWeapon)
								end
								if game:GetService("Workspace").Enemies[Ms].Humanoid.Health == 0 then
									game:GetService("Workspace").Enemies[Ms]:Destroy()
									getgenv().SupperFast = false
									UnEquipWeapon(_G.SelectWeapon)
								end
							  end
						   end
						end)
					end)
				end)

				-- [Tween]

				spawn(function()
					game:GetService("RunService").RenderStepped:Connect(function()
					 pcall(function()
						 if getgenv().Setting["Auto Farm Bone"] then
					 local Distance2 = (game:GetService("Workspace").Enemies[Ms].HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
					 local tween_s = game:service"TweenService"
					 local info = TweenInfo.new(Distance2/320, Enum.EasingStyle.Linear)
					 local tween = tween_s:Create(game:GetService("Players").LocalPlayer.Character["HumanoidRootPart"], info, {CFrame = game:GetService("Workspace").Enemies[Ms].HumanoidRootPart.CFrame * CFrame.new(0,30,5)})
					 tween:Play()
					 Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
						 end
					 end)
					end)
				end)

				-- [Tween]

				spawn(function()
					game:GetService("RunService").RenderStepped:Connect(function()
					 pcall(function()
						 if getgenv().Setting["Auto Farm Level"] then
							if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
					 local Distance2 = (game:GetService("Workspace").Enemies[Ms].HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
					 local tween_s = game:service"TweenService"
					 local info = TweenInfo.new(Distance2/340, Enum.EasingStyle.Linear)
					 local tween = tween_s:Create(game:GetService("Players").LocalPlayer.Character["HumanoidRootPart"], info, {CFrame = game:GetService("Workspace").Enemies[Ms].HumanoidRootPart.CFrame * CFrame.new(0,48,0)})
					 tween:Play()
					 Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
						 end
						end
					 end)
					end)
				end)

-- [Click]

    function Click()
        game:GetService'VirtualUser':CaptureController()
        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
    end
	

  
-- [Auto Farm Level]

	spawn(function()
		while task.wait() do
			if getgenv().Setting["Auto Farm Level"] then
				pcall(function()
					local MyLevel = game:GetService("Players").LocalPlayer.Data.Level.Value
				if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
					getgenv().SupperFast = false
					MagnetActive = false;
						CheckQuest();
						TweenService(CFrameQuest);
						if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude <= 20 then
							CheckQuest();
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameQuest
							task.wait();
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NaemQuest, LevelQuest);
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint");
						end
				elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
					pcall(function()
						CheckQuest();
						if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if v.Name == Ms and v:FindFirstChild("Humanoid") then
									if v.Humanoid.Health > 0 then
										repeat task.wait()
											if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then
												if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
													if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
													local args = {
														[1] = "Buso"
													}
													game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args));
													end;
													EquipWeapon(_G.SelectWeapon)
													getgenv().SupperFast = true
													MagnetActive = true;
													v.HumanoidRootPart.Size = Vector3.new(50,50,50)
	
	
													HealthMin = v.Humanoid.MaxHealth * 100 / 100
													HealthMinz = v.Humanoid.MaxHealth * 0 / 0
	
													v.HumanoidRootPart.CanCollide = false
													PosMon = v.HumanoidRootPart.CFrame
													if not game:GetService("Workspace").Enemies:FindFirstChild(Ms) then
														getgenv().SupperFast = false
														MagnetActive = false
													end
													if MagnetActive == false then
														getgenv().SupperFast = false
													end
													if v.Humanoid.Health > HealthMinz then
														getgenv().SupperFast = false
													end
													if game:GetService("Workspace").Enemies[Ms].Humanoid.Health == 0 then
														getgenv().SupperFast = false
														UnEquipWeapon(_G.SelectWeapon)
													else
														getgenv().SupperFast = true
														EquipWeapon(_G.SelectWeapon)
													end
			
													if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
														game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
														game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
													end		
												else
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest");
												end;
											else
												MagnetActive = false;
												CheckQuest();
												TweenService(CFrameMon);
											end
										until not game:GetService("Workspace").Enemies:FindFirstChild(v.Name) or getgenv().Setting["Auto Farm Level"] == false or not string.find(GetQuestTitle.Text, NameMon) or v.Humanoid.Health <= 0 or not v.Parent or GetQuest.Visible == false
										MagnetActive = false;
										getgenv().SupperFast = false
									end;
								end; 
							end;
						else
	MagnetActive = false;
	getgenv().SupperFast = false;
							CheckQuest();
							TweenService(CFrameMon);
							
						end;
					end);
				end;
				end);
			end;
		end;
	end);

-- [AutoBuyAllitem]
	
	spawn(function()
		while task.wait() do
			pcall(function()
				if _G.AutoBuyAllitem and game:GetService("Players").LocalPlayer.Data.Level.Value >= 2449 then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Dual Katana")
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Cutlass")
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Refined Slingshot")
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Refined Flintlock")
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Dual-Headed Blade")
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Iron Mace")
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Black Cape")
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Bisento")
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Tomoe Ring")
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Katana")
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Triple Katana")
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Pipe")
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Soul Cane")
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Tomoe Ring")
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Black Cape")
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Swordsman Hat")
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Slingshot")
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Musket")
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Flintlock")
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Refined Flintlock")
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Cannon")
				end
			end)
		end
	end)

-- [CheckMon]

task.spawn(function()
	while true do wait()
		if setscriptable then
			setscriptable(game.Players.LocalPlayer, "SimulationRadius", true)
		end
		if sethiddenproperty then
			sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
		end
	end
end)

-- [Part]

spawn(function()
    game:GetService("RunService").Heartbeat:Connect(function()
        if getgenv().Setting["Auto Farm Level"] then
            if not game:GetService("Workspace"):FindFirstChild("LOL") then
                local LOL = Instance.new("Part")
                LOL.Name = "LOL"
                LOL.Parent = game.Workspace
                LOL.Anchored = true
                LOL.Transparency = 1
                LOL.Size = Vector3.new(50,0.5,50)
                LOL.Material = "Neon"
            elseif game:GetService("Workspace"):FindFirstChild("LOL") then
                game.Workspace["LOL"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,-3,0)
            end
        else
            if game:GetService("Workspace"):FindFirstChild("LOL") then
                game:GetService("Workspace"):FindFirstChild("LOL"):Destroy()
            end
        end
    end)
end)

-- [Ui]

_G.Settings = {
	UI = {
		Key = Enum.KeyCode.RightControl,
	},
}

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/SixZensED/Secret-0.01/main/Secret015.lua"))()

task.spawn(function()
game:GetService("CoreGui").RobloxGui.Modules.Logger:WaitForChild("Loadinglibs")
	 --remove loading screen result in 5 delay before main ui appear
	game:GetService("CoreGui").RobloxGui.Modules.Logger.Loadinglibs:Destroy()
	game:GetService("CoreGui").RobloxGui.Modules.Logger.libs.Enable = true

	--change logo here or just delete it
	if game:GetService("CoreGui").RobloxGui.Modules.Logger.Loadinglibs.Frame.Frame.Frame.BackgroundColor3 == Color3.fromRGB(2, 80, 100) then
		game:GetService("CoreGui").RobloxGui.Modules.Logger.Loadinglibs.Frame.ImageLabel.Image = "rbxassetid://7566388755"
	else
		game:GetService("CoreGui").RobloxGui.Modules.Logger.Loadinglibs.Frame.ImageLabel.Image = "rbxassetid://7566388755"
	end
	game:GetService("CoreGui").RobloxGui.Modules.Logger.Loadinglibs.Frame.ImageLabel:Destroy()
end)

local window = Library:CreateWindow({ Title = "Acres Hub", Desc = "Djtmemay Gui", serialkey = 111220221700 })
table.foreach(window, print)

local windowInstance = game:GetService("CoreGui").RobloxGui.Modules.Logger.libs

-- Set custom discord url
windowInstance.Main.MainScreen.JoinDiscordScreen.ButtonJoinDescription.Text = "https://discord.gg/DGDjQn7c3w"
windowInstance.Main.MainScreen.JoinDiscordScreen.ButtonJoin.MouseButton1Click:Connect(function()
	syn.request({
		Url = "http://127.0.0.1:6463/rpc?v=1",
		Method = "POST",
		Headers = {
			["Content-Type"] = "application/json",
			["origin"] = "https://discord.com",
		},
		Body = game:GetService("HttpService"):JSONEncode({
			["args"] = {
				["code"] = "DGDjQn7c3w",
			},
			["cmd"] = "INVITE_BROWSER",
			["nonce"] = ".",
		}),
	})
end)

-- Set hub logo
-- delete logo since it show luxury hub sometime you can lower wait but i think that cost some cpu
windowInstance.Main.MainScreen.ScreenHub.LogoScreen:Destroy()
task.spawn(function()
	while task.wait(0.25) do
		local color = windowInstance.Main.MainScreen.ScreenHub.BackgroundColor3
		if color == Color3.fromRGB(220, 220, 220) then
			windowInstance.Main.MainScreen.ScreenHub.LogoScreen.Image = "rbxassetid://7566388755"
		else
			windowInstance.Main.MainScreen.ScreenHub.LogoScreen.Image = "rbxassetid://7566388755"
		end
	end
end)

windowInstance.Main.MainScreen.ThemeScreen.SunTheme.MouseButton1Click:Connect(function()
	--
	windowInstance.Main.MainScreen.ScreenHub.LogoScreen.Image = "rbxassetid://7566388691"
end)

windowInstance.Main.MainScreen.ThemeScreen.DarkTheme.MouseButton1Click:Connect(function()
	--
	windowInstance.Main.MainScreen.ScreenHub.LogoScreen.Image = "rbxassetid://7566388691"
end)

windowInstance.Main.MainScreen.ThemeScreen.RainbowTheme.MouseButton1Click:Connect(function()
	--
	windowInstance.Main.MainScreen.ScreenHub.LogoScreen.Image = "rbxassetid://7566388691"
end)

local mainTab = window:CreateTab({ Logo = "7566388691", TooltipTitle = "Main", TooltipDesc = "Main Script" })

local page1 = mainTab:CreatePage({ Type = 1 })

page1:Label({
	Title = "Auto Farm",
	Style = Enum.TextXAlignment.Center,
})
spawn(function()
	while wait() do
		pcall(function()
			if _G.FastFarmPlayer1 then

				local MyLevel = game:GetService("Players").LocalPlayer.Data.Level.Value
		local quest = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
		local Player = string.split(quest," ")[2]
		 getgenv().SelectPly = string.split(quest," ")[2]
		 if string.find(quest,"Defeat") then
			repeat task.wait()
				if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
				end
				game.Players:FindFirstChild(Player).Character.HumanoidRootPart.Size = Vector3.new(120,120,120)
				game:GetService("VirtualUser"):CaptureController()
				game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
				if _G.Type==1 then
					topos(game:GetService("Players")[getgenv().SelectPly].Character.HumanoidRootPart.CFrame*CFrame.new(0,5,30))
				   elseif _G.Type==2 then
					topos(game:GetService("Players")[getgenv().SelectPly].Character.HumanoidRootPart.CFrame*CFrame.new(0,-2,0))
				   elseif _G.Type==3 then
					topos(game:GetService("Players")[getgenv().SelectPly].Character.HumanoidRootPart.CFrame*CFrame.new(0,0,-30))
				   elseif _G.Type==4 then
					topos(game:GetService("Players")[getgenv().SelectPly].Character.HumanoidRootPart.CFrame*CFrame.new(0,-2,0))
				   end
				_G.Attack_Xenon = true
				UseSkill = true
				if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.PvpDisabled.Visible == true then
					local args = {
						[1] = "EnablePvp"
					}
			
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end
				if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150 then
					game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
					game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
				end
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki","Buso")
				if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
					local args = {
						[1] = "Buso"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end
				EquipWeapon(_G.SelectWeapon)
			until game.Players:FindFirstChild(Player).Character.Humanoid.Health <= 0 or not game.Players:FindFirstChild(Player) or not FastFarm()
			_G.Attack_Xenon2= false
				if not game.Players:FindFirstChild(Player) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PlayerHunter")
				end   
			else
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PlayerHunter")

			end
		end
	end)
	end
end)

	  spawn(function()
		while wait(0.1) do
		pcall(function()
			if _G.FastFarmPlayer1 == true then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PlayerHunter")
				wait(25)
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest");
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PlayerHunter")
	end
		end)
		end
		end) 
page1:Toggle({
	Title = "Auto Farm Level",
	Default = getgenv().Setting["Auto Farm Level"],
	callback = function(value)
		getgenv().Setting["Auto Farm Level"] = value
		StopTween(getgenv().Setting["Auto Farm Level"])
		StopTween(getgenv().FastFarmMode)
		StopTween(_G.FastFarmPlayer)


		if value == false then
			getgenv().ToTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
			getgenv().ToTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
		   topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
			topos(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
_G.Bypass = false
MagnetActive = false
_G.FastFarmPlayer1 = false
getgenv().Setting["Auto Farm Level"] = false
getgenv().SupperFast = false
_G.StopTween = true
		end
	end,
})
if World1 then
page1:Toggle({
	Title = "Auto Player Huntre",
	Default = FastFarm,
	callback = function(value)
		FastFarm = value



		if value == false then
			getgenv().ToTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
			getgenv().ToTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
		   topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
			topos(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
_G.FastFarmPlayer1 = false
_G.StopTween = true
		end
	end,
})
end
page1:Button({
	Title = "Stop Tween",
	callback = function()
getgenv().ToTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
getgenv().ToTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
topos(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
	end,
})
--Auto Boost
page1:Line()

game:GetService("UserInputService").WindowFocused:connect(
    function()
        game.RunService:Set3dRenderingEnabled(true)
    end
)
game:GetService("UserInputService").WindowFocusReleased:connect(
    function()
        game.RunService:Set3dRenderingEnabled(false)
    end
)

if World1 then
page1:Toggle({
	Title = "Auto Second Quest",
	Default = getgenv().Setting["Auto Second Quest"],
	callback = function(value)
		getgenv().Setting["Auto Second Quest"] = value
		StopTween(getgenv().Setting["Auto Second Quest"])
		if value == false then
			getgenv().ToTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
			getgenv().ToTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
		   topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
			topos(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
_G.StopTween = true
		end
	end,
})
end
if World2 then
page1:Toggle({
	Title = "Auto Zou Quest",
	Default = getgenv().Setting["Auto Zou Quest"],
	callback = function(value)
		getgenv().Setting["Auto Zou Quest"] = value
		StopTween(getgenv().AutoThirdSea)
		if value == false then
			getgenv().ToTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
			getgenv().ToTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
		   topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
			topos(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
_G.StopTween = true
		end
	end,
})
end
page1:Line()
page1:Toggle({
	Title = "Auto Buy All item (When Max)",
	Default = _G.AutoBuyAllitem,
	callback = function(value)
		_G.AutoBuyAllitem = value
	end,
})
local page2 = mainTab:CreatePage({ Type = 2 })
page2:Label({
	Title = "Weapon",
	Style = Enum.TextXAlignment.Center,
})
WeaponList = {}
        
for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do  
	if v:IsA("Tool") then
		table.insert(WeaponList ,v.Name)
	end
end
local SelectWeapon = page2:Dropdown({
	Title = "Select Weapon",
	Item = WeaponList,
	Default = 1,
	callback = function(value)
		_G.SelectWeapon = value
	end,
})
page2:Button({
	Title = "Refresh Weapon",
	callback = function()
		SelectWeapon:Clear()
		for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
			if v:IsA("Tool") then
				SelectWeapon:Add(v.Name)
			end
		end
		for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do  
			if v:IsA("Tool") then
				SelectWeapon:Add(v.Name)
			end
		end
	end,
})
page2:Label({
	Title = "Settings",
	Style = Enum.TextXAlignment.Center,
})
page2:Toggle({
	Title = "Fast Attack",
	Default = _G.FastAttackNormalSpeed ,
	callback = function(value)
		_G.FastAttackNormalSpeed  = value
	end,
})

page2:Toggle({
	Title = "Super Fast Attack",
	Default = getgenv().susfattt,
	callback = function(value)
		getgenv().susfattt = value
	end,
})

page2:Toggle({
	Title = "instant Teleport",
	Default = _G.Bypassse,
	callback = function(value)
_G.Bypassse = value
		if value == false then
			getgenv().ToTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
			getgenv().ToTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
		end
	end,
})

page2:Toggle({
	Title = "Auto Haki",
	Default = true,
	callback = function(value)
		_G.Haki = value
	end,
})

spawn(function()
	while wait(1) do
		if _G.Haki then
			AutoHaki()
		end
	end
end)
page2:Toggle({
	Title = "Disabled Damage",
	Default = _G.DisabledDamage,
	callback = function(value)
		_G.DisabledDamage = value
	end,
})


task.spawn(function()
	while wait() do
		pcall(function()
			if _G.DisabledDamage then
				game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter.Enabled = false
			else
				game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter.Enabled = true
			end
		end)
	end
end)
--RedeemCode

local CodeApi = loadstring(game:HttpGet('https://pastebin.com/raw/EK13Njf3'))()

function Redeem(value)
	game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(value)
end

page2:Button({
	Title = "Redeem All Code",
	callback = function()
		for i,v in pairs(CodeApi) do
			Redeem(v) 
		end
	end,
})

--CheckBoss

local Boss = {}
    
for i, v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
	if string.find(v.Name, "Boss") then
		if v.Name == "Ice Admiral [Lv. 700] [Boss]" then
			else
			table.insert(Boss, v.Name)
		end
	end
end
page2:Label({
	Title = "Boss",
	Style = Enum.TextXAlignment.Center,
})
local BossName = page2:Dropdown({
	Title = "Select Boss",
	Item = Boss,
	Default = 1,
	callback = function(value)
		_G.Select_Boss = value
	end,
})
page2:Button({
	Title = "Clear Boss",
	callback = function()
        BossName:Clear()
            for i, v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
            if string.find(v.Name, "Boss") then
                BossName:Add(v.Name) 
            end
        end
	end,
})
page2:Toggle({
	Title = "Auto Farm Boss",
	Default = getgenv().Setting["Auto Farm Boss"],
	callback = function(value)
		getgenv().Setting["Auto Farm Boss"] = value
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
			getgenv().Setting["Auto Farm Boss"] = value
            StopTween(getgenv().Setting["Auto Farm Boss"])
			if value == false then
				getgenv().ToTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
				getgenv().ToTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
			   topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
				topos(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
	_G.StopTween = true
			end
	end,
})
page2:Toggle({
	Title = "Auto Farm All Boss",
	Default = getgenv().Setting["Auto Farm All Boss"],
	callback = function(value)
		getgenv().Setting["Auto Farm All Boss"] = value
		StopTween(getgenv().Setting["Auto Farm All Boss"])
		if value == false then
			getgenv().ToTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
			getgenv().ToTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
		   topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
			topos(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
_G.StopTween = true
		end
	end,
})
page2:Toggle({
	Title = "Auto Farm All Boss Hop",
	Default = getgenv().Setting["Auto Farm All Boss Hop"],
	callback = function(value)
		getgenv().Setting["Auto Farm All Boss Hop"] = value
	end,
})

--AutoFarmBoss

spawn(function()
	while wait() do
		if getgenv().Setting["Auto Farm Boss"] then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild(_G.Select_Boss) then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v.Name == _G.Select_Boss then
							if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
								repeat task.wait()
									AutoHaki()
									EquipWeapon(_G.SelectWeapon)
									v.HumanoidRootPart.CanCollide = false
									v.Humanoid.JumpPower = 0
									v.Humanoid.WalkSpeed = 0
									v.HumanoidRootPart.Size = Vector3.new(80,180,80)                             
									topos(v.HumanoidRootPart.CFrame*CFrame.new(0,30,3))
_G.Attack_Xenon = true
									sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
								until not getgenv().Setting["Auto Farm Boss"] or not v.Parent or v.Humanoid.Health <= 0
								_G.Attack_Xenon = false
							end
						end
					end
				else
					if game:GetService("ReplicatedStorage"):FindFirstChild(_G.Select_Boss) then
						topos(game:GetService("ReplicatedStorage"):FindFirstChild(_G.Select_Boss).HumanoidRootPart.CFrame * CFrame.new(0,30,0))
					end
				end
			end)
		end
	end
end)

--AutoFarmAllBoss


spawn(function()
	while wait() do
		if getgenv().Setting["Auto Farm All Boss"] then
			pcall(function()
				for i,v in pairs(game.ReplicatedStorage:GetChildren()) do
					if string.find(v.Name,"Boss") then
						if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 17000 then
							repeat task.wait()
								AutoHaki()
								EquipWeapon(_G.SelectWeapon)
								v.Humanoid.JumpPower = 0
								v.Humanoid.WalkSpeed = 0
								v.HumanoidRootPart.CanCollide = false
								v.Head.CanCollide = false
								v.HumanoidRootPart.Size = Vector3.new(80,80,80)
								topos(v.HumanoidRootPart.CFrame*CFrame.new(0,30,0))
								_G.Attack_Xenon = true
								sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
							until v.Humanoid.Health <= 0 or getgenv().Setting["Auto Farm All Boss"] == false or not v.Parent
							_G.Attack_Xenon = false
						end
					else
						if getgenv().Setting["Auto Farm All Boss Hop"] then
							Hop()
						end
					end
				end
			end)
		end
	end
end)  





local page999 = mainTab:CreatePage({ Type = 3 })

--DarkDagger

spawn(function()
	pcall(function()
		while wait() do
			if getgenv().DarkDagger then
				if game:GetService("Workspace").Enemies:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("rip_indra [Lv. 5000] [Raid Boss]") then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v.Name == ("rip_indra True Form [Lv. 5000] [Raid Boss]" or v.Name == "rip_indra [Lv. 5000] [Raid Boss]") and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
							repeat task.wait()
								pcall(function()
									AutoHaki()
									EquipWeapon(_G.SelectWeapon)
									v.HumanoidRootPart.CanCollide = false
									v.HumanoidRootPart.Size = Vector3.new(70,70,70)
									v.Humanoid.JumpPower = 0
									v.Humanoid.WalkSpeed = 0
									topos(v.HumanoidRootPart.CFrame * CFrame.new(0,30,3))
									_G.Attack_Xenon = true
									game:GetService("VirtualUser"):CaptureController()
									game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670),workspace.CurrentCamera.CFrame)
								end)
							until getgenv().DarkDagger == false or v.Humanoid.Health <= 0
							_G.Attack_Xenon = false
						end
					end
				else
					topos(CFrame.new(-5564.35303, 320.408905, -2662.79053, 0.307843804, 9.09512679e-08, -0.951436937, 3.40473676e-08, 1, 1.06609846e-07, 0.951436937, -6.52131007e-08, 0.307843804))
				end
			end
		end
	end)
end)

-- [OderSword ]

spawn(function()
	while wait() do
		if  _G.AutoOderSword then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Order [Lv. 1250] [Raid Boss]") then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v.Name == "Order [Lv. 1250] [Raid Boss]" then
							if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
								repeat task.wait()
									AutoHaki()
									EquipWeapon(_G.SelectWeapon)
									v.HumanoidRootPart.CanCollide = false
									v.Humanoid.JumpPower = 0;
									v.Humanoid.WalkSpeed = 0;
									v.HumanoidRootPart.Size = Vector3.new(150,150,150)
									topos(v.HumanoidRootPart.CFrame * CFrame.new(0,20,3))
									_G.Attack_Xenon = true
									sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
								until not  _G.AutoOderSword or not v.Parent or v.Humanoid.Health <= 0
								_G.Attack_Xenon = false
							end
						end
					end
				else
					if game:GetService("ReplicatedStorage"):FindFirstChild("Order [Lv. 1250] [Raid Boss]") then
						topos(game:GetService("ReplicatedStorage"):FindFirstChild("Order [Lv. 1250] [Raid Boss]").HumanoidRootPart.CFrame * CFrame.new(0,20,0))
					else
						if  _G.AutoOderSwordHop then
							Hop()
						end
					end
				end
			end)
		end
	end
end)

-- [BuddySword]

spawn(function()
	while wait() do
		if getgenv().BuddySword then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen [Lv. 2175] [Boss]") then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v.Name == "Cake Queen [Lv. 2175] [Boss]" then
							if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
								repeat task.wait()
									AutoHaki()
									EquipWeapon(_G.SelectWeapon)
									v.HumanoidRootPart.CanCollide = false
									v.Humanoid.JumpPower = 0;
									v.Humanoid.WalkSpeed = 0;
									v.HumanoidRootPart.Size = Vector3.new(150,150,150)
									topos(v.HumanoidRootPart.CFrame * CFrame.new(0,20,3))
									_G.Attack_Xenon = true
									sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
								until not getgenv().BuddySword or not v.Parent or v.Humanoid.Health <= 0
								_G.Attack_Xenon = false
							end
						end
					end
				else
					if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Queen [Lv. 2175] [Boss]") then
						topos(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Queen [Lv. 2175] [Boss]").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
					else
						if getgenv().BuddySwordHop then
							Hop()
						end
					end
				end
			end)
		end
	end
end)

-- [BossHallow]


spawn(function()
	while wait() do
		if getgenv().BossHallow then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if string.find(v.Name , "Soul Reaper") then
							repeat task.wait()
								EquipWeapon(_G.SelectWeapon)
								AutoHaki()
								v.HumanoidRootPart.Size = Vector3.new(120,120,120)
								topos(v.HumanoidRootPart.CFrame*CFrame.new(0,20,3))
								_G.Attack_Xenon = true
								v.HumanoidRootPart.Transparency = 1
								sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
							until v.Humanoid.Health <= 0 or _G.AutoFarmBossHallow == false
							_G.Attack_Xenon = false
						end
					end
				elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hallow Essence") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hallow Essence") then
					repeat topos(CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125)) wait() until (CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8                        
					EquipWeapon("Hallow Essence")
				else
					if game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") then
						topos(game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
					else
						if getgenv().BossHallowHop then
							Hop()
						end
					end
				end
			end)
		end
	end
end)
spawn(function()
	pcall(function()
		while wait() do
			if (getgenv().DarkDaggerHop and getgenv().DarkDagger) and World3 and not game:GetService("ReplicatedStorage"):FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") and not game:GetService("Workspace").Enemies:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") then
				Hop()
			end
		end
	end)
end)
page999:Label({
	Title = "Combat",
	Style = Enum.TextXAlignment.Center,
})
page999:Toggle({
	Title = "Auto Super humam",
	Default = getgenv().Superhuman,
	callback = function(value)
		getgenv().Superhuman = value
		getgenv().FullySuperhuman = value
		local args = {
			[1] = "BuySuperhuman"
		}
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end,
})
page999:Toggle({
	Title = "Auto Death Step",
	Default = getgenv().FullyDeathStep,
	callback = function(value)
		getgenv().FullyDeathStep = value
		wait()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
	
	end,
})
page999:Toggle({
	Title = "Auto Shark man",
	Default = getgenv().Sharkman,
	callback = function(value)
		getgenv().Sharkman = value
	end,
})
page999:Toggle({
	Title = "Auto Electric Claw",
	Default = 	getgenv().ElectricClaw,
	callback = function(value)
		getgenv().ElectricClaw = value
		StopTween(getgenv().ElectricClaw)
	
	end,
})
spawn(function()
	while wait(.5) do
		if _G.AutoSuperhuman or _G.Auto_Fully_Superhuman and game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then 
			pcall(function()
				if game:GetService("Players").LocalPlayer.Data.Beli.Value >= 500000 and (game.Players.LocalPlayer.Character:FindFirstChild("Combat") or game.Players.LocalPlayer.Backpack:FindFirstChild("Combat")) then
					_G.SelectWeapon = "Combat"
					local args = {
						[1] = "BuyElectro"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end   
				if game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") or game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") then
					_G.SelectWeapon = "Superhuman"
				end  
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value <= 299  then
					_G.SelectWeapon = "Black Leg"
				end
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value <= 299  then
					_G.SelectWeapon = "Electro"
				end
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value <= 299  then
					_G.SelectWeapon = "Fishman Karate"
				end
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value <= 299  then
					_G.SelectWeapon = "Dragon Claw"
				end
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 300  then
					local args = {
						[1] = "BuyFishmanKarate"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end
				if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 300  then
					local args = {
						[1] = "BuyFishmanKarate"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end
				if game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 300  then
					local args = {
						[1] = "BuyBlackLeg"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 300  then
					if getgenv().FullySuperhuman and game.Players.LocalPlayer.Data.Fragments.Value < 1500 then
						if game.Players.LocalPlayer.Data.Level.Value > 1100 then
							_G.SelectChip = "Flame"
							_G.Auto_Buy_Chips_Dungeon = true
							_G.Auto_Start_Dungeon = true
							_G.Auto_Next_Island = true
							_G.Kill_Aura = true
						end
					else
						_G.Auto_Buy_Chips_Dungeon = false
						_G.Auto_Start_Dungeon = false
						_G.Auto_Next_Island = false
						_G.Kill_Aura = false
						local args = {
							[1] = "BlackbeardReward",
							[2] = "DragonClaw",
							[3] = "2"
						}
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
					end
				end
				if game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 300  then
					if getgenv().FullySuperhuman and game.Players.LocalPlayer.Data.Fragments.Value < 1500 then
						if game.Players.LocalPlayer.Data.Level.Value > 1100 then
							_G.SelectChip = "Flame"
							_G.Auto_Buy_Chips_Dungeon = true
							_G.Auto_Start_Dungeon = true
							_G.Auto_Next_Island = true
							_G.Kill_Aura = true
						end
					else
						_G.Auto_Buy_Chips_Dungeon = false
						_G.Auto_Start_Dungeon = false
						_G.Auto_Next_Island = false
						_G.Kill_Aura = false
						local args = {
							[1] = "BlackbeardReward",
							[2] = "DragonClaw",
							[3] = "2"
						}
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
					end
				end
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 300  then
					local args = {
						[1] = "BuySuperhuman"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end
				if game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 300  then
					local args = {
						[1] = "BuySuperhuman"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end 
			end)
		end
	end
end)
spawn(function()
	pcall(function()
		while wait() do 
			if getgenv().ElectricClaw then
				if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electric Claw") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electric Claw") then
					if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 400 then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
						_G.SelectWeapon = "Electric Claw"
					end  
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro") and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 400 then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
						_G.SelectWeapon = "Electric Claw"
					end  
					if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value <= 399 then
						_G.SelectWeapon = "Electro"
					end 
				else
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
				end
			end
			if _G.AutoElectricClaw then
				if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro") then
					if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 400 or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 400 then
						if _G.AutoFarm == false then
							repeat task.wait()
								topos(CFrame.new(-10371.4717, 330.764496, -10131.4199))
							until not getgenv().ElectricClaw or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-10371.4717, 330.764496, -10131.4199).Position).Magnitude <= 10
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw","Start")
							wait(2)
							repeat task.wait()
								topos(CFrame.new(-12550.532226563, 336.22631835938, -7510.4233398438))
							until not getgenv().ElectricClaw or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-12550.532226563, 336.22631835938, -7510.4233398438).Position).Magnitude <= 10
							wait(1)
							repeat task.wait()
								topos(CFrame.new(-10371.4717, 330.764496, -10131.4199))
							until not getgenv().ElectricClaw or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-10371.4717, 330.764496, -10131.4199).Position).Magnitude <= 10
							wait(1)
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
						elseif _G.AutoFarm == true then
							_G.AutoFarm = false
							wait(1)
							repeat task.wait()
								topos(CFrame.new(-10371.4717, 330.764496, -10131.4199))
							until not getgenv().ElectricClaw or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-10371.4717, 330.764496, -10131.4199).Position).Magnitude <= 10
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw","Start")
							wait(2)
							repeat task.wait()
								topos(CFrame.new(-12550.532226563, 336.22631835938, -7510.4233398438))
							until not getgenv().ElectricClaw or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-12550.532226563, 336.22631835938, -7510.4233398438).Position).Magnitude <= 10
							wait(1)
							repeat task.wait()
								topos(CFrame.new(-10371.4717, 330.764496, -10131.4199))
							until not getgenv().ElectricClaw or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-10371.4717, 330.764496, -10131.4199).Position).Magnitude <= 10
							wait(1)
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
							_G.SelectWeapon = "Electric Claw"
							wait(.1)
							_G.AutoFarm = true
						end
					end
				end
			end
		end
	end)
end)
spawn(function()
	pcall(function()
		while wait() do
			if getgenv().Sharkman then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
				if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate"), "keys") then  
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Water Key") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Water Key") then
						topos(CFrame.new(-2604.6958, 239.432526, -10315.1982, 0.0425701365, 0, -0.999093413, 0, 1, 0, 0.999093413, 0, 0.0425701365))
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
					elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fishman Karate") and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 400 then
					else 
						Ms = "Tide Keeper [Lv. 1475] [Boss]"
						if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then   
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if v.Name == Ms then    
									OldCFrameShark = v.HumanoidRootPart.CFrame
									repeat task.wait()
										AutoHaki()
										EquipWeapon(_G.SelectWeapon)
										v.Head.CanCollide = false
										v.Humanoid.WalkSpeed = 0
										v.HumanoidRootPart.CanCollide = false
										v.HumanoidRootPart.Size = Vector3.new(50,50,50)
										v.HumanoidRootPart.CFrame = OldCFrameShark
										topos(v.HumanoidRootPart.CFrame*CFrame.new(2,20,2))
										sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
									until not v.Parent or v.Humanoid.Health <= 0 or getgenv().Sharkman == false or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Water Key") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Water Key")
								end
							end
						else
							topos(CFrame.new(-3570.18652, 123.328949, -11555.9072, 0.465199202, -1.3857326e-08, 0.885206044, 4.0332897e-09, 1, 1.35347511e-08, -0.885206044, -2.72606271e-09, 0.465199202))
							wait(3)
						end
					end
				else 
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
				end
			end
		end
	end)
end)
spawn(function()
	while wait() do wait()
		if getgenv().FullyDeathStep then
			if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Black Leg") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Death Step") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Death Step") then
				if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 450 then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
					_G.SelectWeapon = "Death Step"
				end  
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Black Leg") and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 450 then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
					_G.SelectWeapon = "Death Step"
				end  
				if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value <= 449 then
					_G.SelectWeapon = "Black Leg"
				end 
			else 
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
			end
		end
	end
end)
spawn(function()
	pcall(function()
		while wait() do 
			if getgenv().Superhuman then
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Combat") or game.Players.LocalPlayer.Character:FindFirstChild("Combat") and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 150000 then
					UnEquipWeapon("Combat")
					wait(.1)
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
				end   
				if game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") or game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") then
					_G.SelectWeapon = "Superhuman"
				end  
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") or game.Players.LocalPlayer.Character:FindFirstChild("Electro") or game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") or game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") or game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") then
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value <= 299 then
						_G.SelectWeapon = "Black Leg"
					end
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value <= 299 then
						_G.SelectWeapon = "Electro"
					end
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value <= 299 then
						_G.SelectWeapon = "Fishman Karate"
					end
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value <= 299 then
						_G.SelectWeapon = "Dragon Claw"
					end
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 300 and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 300000 then
						UnEquipWeapon("Black Leg")
						wait(.1)
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
					end
					if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 300 and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 300000 then
						UnEquipWeapon("Black Leg")
						wait(.1)
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
					end
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 300 and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 750000 then
						UnEquipWeapon("Electro")
						wait(.1)
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
					end
					if game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 300 and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 750000 then
						UnEquipWeapon("Electro")
						wait(.1)
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
					end
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 300 and game:GetService("Players")["Localplayer"].Data.Fragments.Value >= 1500 then
						UnEquipWeapon("Fishman Karate")
						wait(.1)
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1")
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2") 
					end
					if game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 300 and game:GetService("Players")["Localplayer"].Data.Fragments.Value >= 1500 then
						UnEquipWeapon("Fishman Karate")
						wait(.1)
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1")
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2") 
					end
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 300 and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 3000000 then
						UnEquipWeapon("Dragon Claw")
						wait(.1)
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
					end
					if game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 300 and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 3000000 then
						UnEquipWeapon("Dragon Claw")
						wait(.1)
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
					end 
				end
			end
		end
	end)
end)
spawn(function()
	while wait() do
		if getgenv().FullyDeathStep then
			pcall(function()
				if not game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") or not game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") or not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Death Step") or not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Death Step") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
				end				
				if game:GetService("Workspace").Map.IceCastle.Hall.LibraryDoor.PhoeyuDoor.Transparency == 0 then  
					if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Library Key") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Library Key") then
						EquipWeapon("Library Key")
						repeat wait() getgenv().ToTarget(CFrame.new(6371.2001953125, 296.63433837890625, -6841.18115234375)) until (CFrame.new(6371.2001953125, 296.63433837890625, -6841.18115234375).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not getgenv().FullyDeathStep
						if (CFrame.new(6371.2001953125, 296.63433837890625, -6841.18115234375).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 then
							wait(1.2)
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep",true)
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
							wait(0.5)
						end
					elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 450 or game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 450 then   
						if game:GetService("ReplicatedStorage"):FindFirstChild("Awakened Ice Admiral [Lv. 1400] [Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Awakened Ice Admiral [Lv. 1400] [Boss]") then
							if game:GetService("Workspace").Enemies:FindFirstChild("Awakened Ice Admiral [Lv. 1400] [Boss]") then 	
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v.Name == "Awakened Ice Admiral [Lv. 1400] [Boss]" then    
										repeat wait()
											AutoHaki()
											EquipWeapon(_G.SelectWeapon)
											v.Head.CanCollide = false
											v.Humanoid.WalkSpeed = 0
											v.HumanoidRootPart.CanCollide = false
											v.HumanoidRootPart.Size = Vector3.new(50,50,50)
											_G.Attack_Xenon = true
											getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
											sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
										until not v.Parent or v.Humanoid.Health <= 0 or _G.getgenv().FullyDeathStep == false or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Library Key") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Library Key")
									end
								end
							else
								repeat wait() getgenv().ToTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Awakened Ice Admiral [Lv. 1400] [Boss]").HumanoidRootPart.CFrame) until game:GetService("Workspace").Enemies:FindFirstChild("Awakened Ice Admiral [Lv. 1400] [Boss]")
							end
						else 
							Hop()
						end
					end
				else 
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
				end
			end)
		end
	end
end)
spawn(function()
	while wait() do
		if getgenv().DragonTalon then
			if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Claw") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Talon") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Talon") then
				if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 400 then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
					_G.SelectWeapon = "Dragon Talon"
				end  
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Claw") and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 400 then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
					_G.SelectWeapon = "Dragon Talon"
				end  
				if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value <= 399 then
					_G.SelectWeapon = "Dragon Claw"
				end 
			else 
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2")
			end
		end
	end
end)
page999:Toggle({
	Title = "Auto Dragon Talon",
	Default = getgenv().DragonTalon,
	callback = function(value)
		getgenv().DragonTalon = value
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2")
	end,
})
page999:Toggle({
	Title = "Auto God Human",
	Default = getgenv().Godhuman,
	callback = function(value)
		getgenv().GodhumanFully = value
		getgenv().Godhuman = value
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
	end,
})
function CheckMaterial(matname)
	for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
		if type(v) == "table" then
			if v.Type == "Material" then
				if v.Name == matname then
					return v.Count
				end
			end
		end
	end
	return 0
end
spawn(function()
	while wait() do
		if getgenv().GodhumanFully then
			pcall(function()
			if game.Players.LocalPlayer.Character:FindFirstChild("Godhuman") or game.Players.LocalPlayer.Backpack:FindFirstChild("Godhuman") then
				_G.SelectWeapon = "Godhuman"
				else
					getgenv().Setting["Auto Farm Level"] = false
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Death Step") and game.Players.LocalPlayer.Backpack:FindFirstChild("Death Step").Level.Value <= 399 and game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw").Level.Value <= 399 and  game.Players.LocalPlayer.Backpack:FindFirstChild("Sharkman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Sharkman Karate").Level.Value <= 399 and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Talon") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Talon").Level.Value <= 399 then
					if not W3 then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
					elseif W3 then
					if CheckMaterial("Fish Tail") <= 20 and W3 then
						for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                  	  	if v.Name == "Fishman Raider [Lv. 1775]" or v.Name == "Fishman Captain [Lv. 1800]" then
                        		if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                           	 	repeat task.wait()
                               	 	EquipWeapon(_G.SelectWeapon)
                              		  v.HumanoidRootPart.CanCollide = false
                               	 	v.Humanoid.WalkSpeed = 0
                                		v.Head.CanCollide = false
										PosMon = v.HumanoidRootPart.CFrame
										BringMobFarm = true
                                		v.HumanoidRootPart.Size = Vector3.new(100,100,100)
                                		v.HumanoidRootPart.Transparency = 1
                                		getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
										_G.Attack_Xenon = true
                            		until not getgenv().GodhumanFully or not v.Parent or v.Humanoid.Health <= 0
                        		end
                  				else
									  BringMobFarm = false
                 					 getgenv().ToTarget(CFrame.new( -10993,332, -8940))
                   	 		end
              		  	end
						elseif CheckMaterial("Dragon Scale") <= 10 and W3 then
						for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                  	  	if v.Name == "Fishman Raider [Lv. 1775]" or v.Name == "Fishman Captain [Lv. 1800]" then
                        		if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                           	 	repeat task.wait()
                               	 	EquipWeapon(_G.SelectWeapon)
                              		  v.HumanoidRootPart.CanCollide = false
                               	 	v.Humanoid.WalkSpeed = 0
                                		v.Head.CanCollide = false
										PosMon = v.HumanoidRootPart.CFrame
										BringMobFarm = true
                                		v.HumanoidRootPart.Size = Vector3.new(100,100,100)
                                		v.HumanoidRootPart.Transparency = 1
                                		getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
										_G.Attack_Xenon = true
                            		until not getgenv().GodhumanFully or not v.Parent or v.Humanoid.Health <= 0
                        		end
								else
									BringMobFarm = false
									getgenv().ToTarget(CFram.new(6594,383,139))
              		  		end
							end
							if CheckMaterial("Dragon Scale") >= 10 and CheckMaterial("Fish Tail") >= 20 then
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
							end
						end
						elseif not W2 then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
						elseif W2 then
						if CheckMaterial("Magma Ore") <= 20 and W2 then
							for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                  	  	if v.Name == "Magma Ninja [Lv. 1175]" then
                        		if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                           	 	repeat task.wait()
                               	 	EquipWeapon(_G.SelectWeapon)
                              		  v.HumanoidRootPart.CanCollide = false
                               	 	v.Humanoid.WalkSpeed = 0
                                		v.Head.CanCollide = false
										PosMon = v.HumanoidRootPart.CFrame
										BringMobFarm = true
                                		v.HumanoidRootPart.Size = Vector3.new(100,100,100)
                                		v.HumanoidRootPart.Transparency = 1
                                		getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
										_G.Attack_Xenon = true
                            		until not getgenv().GodhumanFully or not v.Parent or v.Humanoid.Health <= 0
                        		end
									else
										BringMobFarm = false
										getgenv().ToTarget(CFrame.new( -5428,78, -5959))
              		  			end
								end
						elseif CheckMaterial("Mystic Droplet") <= 10 and W2 then
							for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                  	  	if v.Name == "Water Fighter [Lv. 1450]" then
                        		if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                           	 	repeat task.wait()
                               	 	EquipWeapon(_G.SelectWeapon)
                              		  v.HumanoidRootPart.CanCollide = false
                               	 	v.Humanoid.WalkSpeed = 0
                                		v.Head.CanCollide = false
										PosMon = v.HumanoidRootPart.CFrame
										BringMobFarm = true
                                		v.HumanoidRootPart.Size = Vector3.new(100,100,100)
                                		v.HumanoidRootPart.Transparency = 1
                                		getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,35,5))
										_G.Attack_Xenon = true
                            		until not _G.AutoFullyGodhuman or not v.Parent or v.Humanoid.Health <= 0
                        		end
									else
										BringMobFarm = false
										getgenv().ToTarget(CFrame.new( -3385,239, -10542))
              		  			end
								end
								if not W3 then
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
								elseif W3 then
									if CheckMaterial("Mystic Droplet") >= 10 and CheckMaterial("Magma Ore") >= 20 and CheckMaterial("Dragon Scale") >= 10 and CheckMaterial("Fish Tail") >= 20 then
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
									wait(.3)
									getgenv().Setting["Auto Farm Level"] = true
									print("Succeed")
									end
								end
							end
						end
						else 
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Death Step") and game.Players.LocalPlayer.Backpack:FindFirstChild("Death Step").Level.Value >= 400 or game.Players.LocalPlayer.Character:FindFirstChild("Death Step") and game.Players.LocalPlayer.Character:FindFirstChild("Death Step").Level.Value >= 400 then
                       	 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
                   	 end
                    	if game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw").Level.Value >= 400 or game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw").Level.Value >= 400 then
                        	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
                    	end
                    	if game.Players.LocalPlayer.Backpack:FindFirstChild("Sharkman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Sharkman Karate").Level.Value >= 400 or game.Players.LocalPlayer.Character:FindFirstChild("Sharkman Karate") and game.Players.LocalPlayer.Character:FindFirstChild("Sharkman Karate").Level.Value >= 400 then
                        	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
                  	  end 
        			end
				end
			end)
		end
 	end
end)
spawn(function()
	while task.wait() do
		pcall(function()
			if getgenv().Godhuman then
				if game.Players.LocalPlayer.Character:FindFirstChild("Godhuman") or game.Players.LocalPlayer.Backpack:FindFirstChild("Godhuman") then
					_G.SelectWeapon = "Godhuman"
				end  
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Death Step") or game.Players.LocalPlayer.Character:FindFirstChild("Death Step") or game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw") or game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw") or game.Players.LocalPlayer.Backpack:FindFirstChild("Sharkman Karate") or game.Players.LocalPlayer.Character:FindFirstChild("Sharkman Karate") or game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Talon") or game.Players.LocalPlayer.Character:FindFirstChild("Dragon Talon") then
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Death Step") and game.Players.LocalPlayer.Backpack:FindFirstChild("Death Step").Level.Value <= 399 then
						_G.SelectWeapon = "Death Step"
					end
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw").Level.Value <= 399 then
						_G.SelectWeapon = "Electric Claw"
					end
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Sharkman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Sharkman Karate").Level.Value <= 399 then
						_G.SelectWeapon = "Sharkman Karate"
					end
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Talon") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Talon").Level.Value <= 399 then
						_G.SelectWeapon = "Dragon Claw"
					end
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Death Step") and game.Players.LocalPlayer.Backpack:FindFirstChild("Death Step").Level.Value >= 400 or game.Players.LocalPlayer.Character:FindFirstChild("Death Step") and game.Players.LocalPlayer.Character:FindFirstChild("Death Step").Level.Value >= 400 then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
					end
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw").Level.Value >= 400 or game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw").Level.Value >= 400 then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
					end
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Sharkman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Sharkman Karate").Level.Value >= 400 or game.Players.LocalPlayer.Character:FindFirstChild("Sharkman Karate") and game.Players.LocalPlayer.Character:FindFirstChild("Sharkman Karate").Level.Value >= 400 then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
					end 
					if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Talon") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Talon").Level.Value >= 400 or game.Players.LocalPlayer.Backpack:Character("Dragon Talon") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Talon").Level.Value >= 400 then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
					end
				end
			end
		end)
	end
end)
page999:Label({
	Title = "Buddy",
	Style = Enum.TextXAlignment.Center,
})
page999:Toggle({
	Title = "Auto Buddy Sword",
	Default = getgenv().BuddySword,
	callback = function(value)
		getgenv().BuddySword = value
		StopTween(getgenv().BuddySword)
	end,
})
page999:Toggle({
	Title = "Auto Buddy Sword Hop",
	Default = getgenv().BuddySwordHop,
	callback = function(value)
		getgenv().BuddySwordHop = value
	
	end,
})
page999:Label({
	Title = "Swan Glasses",
	Style = Enum.TextXAlignment.Center,
})
page999:Toggle({
	Title = "Auto Swan Glasses",
	Default = getgenv().SwanGlasses,
	callback = function(value)
		getgenv().SwanGlasses = value
		StopTween(getgenv().SwanGlasses)
	end,
})
page999:Toggle({
	Title = "Auto Swan Glasses Hop",
	Default = getgenv().SwanGlassesHop,
	callback = function(value)
		getgenv().SwanGlassesHop = value
	end,
})
page999:Label({
	Title = "Dragon Trident",
	Style = Enum.TextXAlignment.Center,
})
page999:Toggle({
	Title = "Auto Dragon Trident",
	Default = getgenv().DragonTrident,
	callback = function(value)
		getgenv().DragonTrident = value
		StopTween(getgenv().DragonTrident)
	end,
})
page999:Toggle({
	Title = "Auto Dragon Trident Hop",
	Default = getgenv().DragonTridentHop,
	callback = function(value)
		getgenv().DragonTridentHop = value
	end,
})
page999:Label({
	Title = "Serpent Bow",
	Style = Enum.TextXAlignment.Center,
})
page999:Toggle({
	Title = "Auto Serpent Bow",
	Default = getgenv().SerpentBow,
	callback = function(value)
		getgenv().SerpentBow = value
		StopTween(getgenv().SerpentBow)
	end,
})
page999:Toggle({
	Title = "Auto Serpent Bow Hop",
	Default = getgenv().SerpentBowHop,
	callback = function(value)
		getgenv().SerpentBowHop = value
	end,
})
page999:Label({
	Title = "Boss Hallow",
	Style = Enum.TextXAlignment.Center,
})
page999:Toggle({
	Title = "Auto Boss Hallow",
	Default = getgenv().BossHallow,
	callback = function(value)
		getgenv().BossHallow = value
		StopTween(getgenv().BossHallow)
	end,
})
page999:Toggle({
	Title = "Auto Auto Boss Hallow Hop",
	Default = getgenv().BossHallowHop,
	callback = function(value)
		getgenv().BossHallowHop = value
	end,
})

page999:Label({
	Title = "Twin Hooks",
	Style = Enum.TextXAlignment.Center,
})

-- [TwinHooks]

spawn(function()
	while wait() do
		pcall(function()
			if getgenv().TwinHooks and game.ReplicatedStorage:FindFirstChild("Captain Elephant [Lv. 1875] [Boss]") or game.Workspace.Enemies:FindFirstChild("Captain Elephant [Lv. 1875] [Boss]") then
				if game.Workspace.Enemies:FindFirstChild("Captain Elephant [Lv. 1875] [Boss]") then
					for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
						if getgenv().TwinHooks and v.Name == "Captain Elephant [Lv. 1875] [Boss]" and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
							repeat wait()  
								AutoHaki()
								EquipWeapon(_G.SelectWeapon)
								topos(v.HumanoidRootPart.CFrame * CFrame.new(0,30,3))
								v.HumanoidRootPart.Size = Vector3.new(150, 150, 150)
								v.Humanoid.JumpPower = 0
								v.Humanoid.WalkSpeed = 0
								_G.Attack_Xenon = true
							until not getgenv().TwinHooks or v.Humanoid.Health <= 0 or not v.Parent
							_G.Attack_Xenon = false
						end
					end
				else
					topos(CFrame.new(-13381.6787, 367.055725, -8538.58887, -0.999389052, 9.01120123e-10, -0.0349510163, 6.98308245e-10, 1, 5.81495296e-09, 0.0349510163, 5.78699355e-09, -0.999389052))
				end
			else
				if getgenv().TwinHooksHop then
					Hop()
				end
			end
		end)
	end
end)

-- [DragonTrident]

spawn(function()
	while wait() do
		pcall(function()
			if getgenv().DragonTrident and game.ReplicatedStorage:FindFirstChild("Tide Keeper [Lv. 1475] [Boss]") or game.Workspace.Enemies:FindFirstChild("Tide Keeper [Lv. 1475] [Boss]") then
				if game.Workspace.Enemies:FindFirstChild("Tide Keeper [Lv. 1475] [Boss]") then
					for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
						if getgenv().DragonTrident and v.Name == "Tide Keeper [Lv. 1475] [Boss]" and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
							repeat wait()  
								AutoHaki()
								EquipWeapon(_G.SelectWeapon)
								topos(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
								v.Humanoid.JumpPower = 0;
								v.Humanoid.WalkSpeed = 0;
								v.HumanoidRootPart.Size = Vector3.new(150, 150, 150)
								_G.Attack_Xenon = true
								game:GetService'VirtualUser':CaptureController()
								game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
							until not getgenv().DragonTrident or v.Humanoid.Health <= 0 or not v.Parent
							_G.Attack_Xenon = false
						end
					end
				else
					topos(CFrame.new(-3709.56055, 77.2797546, -11452.0762, -0.924486399, 1.25095809e-08, -0.381215006, 4.84416063e-09, 1, 2.10674287e-08, 0.381215006, 1.76298851e-08, -0.924486399))
				end
			else
				if getgenv().DragonTridentHop then
					Hop()
				end
			end
		end)
	end
end)

-- [LongSword]

spawn(function()
while wait() do
pcall(function()
if getgenv().LongSword and game.ReplicatedStorage:FindFirstChild("Diamond [Lv. 750] [Boss]") or game.Workspace.Enemies:FindFirstChild("Diamond [Lv. 750] [Boss]") then
if game.Workspace.Enemies:FindFirstChild("Diamond [Lv. 750] [Boss]") then
for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
if getgenv().LongSword and v.Name == "Diamond [Lv. 750] [Boss]" and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
repeat wait()  
AutoHaki()
EquipWeapon(_G.SelectWeapon)
topos(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
v.Humanoid.JumpPower = 0;
v.Humanoid.WalkSpeed = 0;
v.HumanoidRootPart.Size = Vector3.new(150, 150, 150)
_G.Attack_Xenon = true
game:GetService'VirtualUser':CaptureController()
game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
until not getgenv().LongSword or v.Humanoid.Health <= 0 or not v.Parent
_G.Attack_Xenon = false
end
end
else
topos(CFrame.new(-1670.40186, 411.318787, -137.068939, 0.311598331, -1.12171126e-08, -0.950213909, -5.49143238e-08, 1, -2.98125755e-08, 0.950213909, 6.14699047e-08, 0.311598331))
end
else
if getgenv().LongSwordHop then
Hop()
end
end
end)
end
end)


-- [PoleSword]

spawn(function()
while wait() do
pcall(function()
if getgenv().PoleSword and game.ReplicatedStorage:FindFirstChild("Thunder God [Lv. 575] [Boss]") or game.Workspace.Enemies:FindFirstChild("Thunder God [Lv. 575] [Boss]") then
if game.Workspace.Enemies:FindFirstChild("Thunder God [Lv. 575] [Boss]") then
for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
if getgenv().PoleSword and v.Name == "Thunder God [Lv. 575] [Boss]" and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
repeat wait()  
AutoHaki()
EquipWeapon(_G.SelectWeapon)
topos(v.HumanoidRootPart.CFrame * CFrame.new(0,20,3))
v.Humanoid.JumpPower = 0;
v.Humanoid.WalkSpeed = 0;
v.HumanoidRootPart.Size = Vector3.new(150, 150, 150)
_G.Attack_Xenon = true
until not getgenv().PoleSword or v.Humanoid.Health <= 0 or not v.Parent
_G.Attack_Xenon = false
end
end
else
topos(CFrame.new(-7900.66406, 5606.90918, -2267.46436))
end
else
if getgenv().PoleSwordHop then
Hop()
end
end
end)
end
end)

-- [SerpentBow]

spawn(function()
while wait() do
pcall(function()
if getgenv().SerpentBow and game.ReplicatedStorage:FindFirstChild("Island Empress [Lv. 1675] [Boss]") or game.Workspace.Enemies:FindFirstChild("Island Empress [Lv. 1675] [Boss]") then
if game.Workspace.Enemies:FindFirstChild("Island Empress [Lv. 1675] [Boss]") then
for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
if getgenv().SerpentBow and v.Name == "Island Empress [Lv. 1675] [Boss]" and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
repeat wait()  
AutoHaki()
EquipWeapon(_G.SelectWeapon)
topos(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
v.HumanoidRootPart.Size = Vector3.new(150, 150, 150)
v.Humanoid.JumpPower = 0
v.Humanoid.WalkSpeed = 0
_G.Attack_Xenon = true
until not getgenv().SerpentBow or v.Humanoid.Health <= 0 or not v.Parent
_G.Attack_Xenon = false
end
end
else
topos(CFrame.new(5571.94727, 648.725952, 198.545868, 0.0603555888, -2.16443682e-10, -0.998176932, -4.03472669e-08, 1, -2.65646949e-09, 0.998176932, 4.04340419e-08, 0.0603555888))
end
else
if getgenv().SerpentBowHop then
Hop()
end
end
end)
end
end) 

page999:Toggle({
	Title = "Auto Twin Hooks",
	Default = getgenv().TwinHooks,
	callback = function(value)
		getgenv().TwinHooks  = value
		StopTween(getgenv().TwinHooks)
	end,
})
page999:Toggle({
	Title = "Auto Twin Hooks Hop",
	Default = getgenv().TwinHooksHop,
	callback = function(value)
		getgenv().TwinHooksHop = value
	end,
})
page999:Label({
	Title = "Law Sword",
	Style = Enum.TextXAlignment.Center,
})
page999:Toggle({
	Title = "Auto Law Sword (Auto Summon)",
	Default = _G.AutoOderSword,
	callback = function(value)
		_G.AutoOderSword = value
		StopTween( _G.AutoOderSword)
		 if World2 then
			fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon.Button.Main.ClickDetector)
		end
	end,
})
page999:Toggle({
	Title = "Auto Law Sword Hop",
	Default = _G.AutoOderSwordHop,
	callback = function(value)
		_G.AutoOderSwordHop = value
	end,
})
page999:Button({
	Title = "Buy Microchip",
	callback = function()
		local args = {
			[1] = "BlackbeardReward",
			[2] = "Microchip",
			[3] = "2"
		 }
		 game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end,
})
page999:Label({
	Title = "Long Sword",
	Style = Enum.TextXAlignment.Center,
})
page999:Toggle({
	Title = "Auto Long Sword",
	Default = getgenv().LongSword,
	callback = function(value)
		getgenv().LongSword = value
		StopTween(getgenv().LongSword)
	end,
})
page999:Toggle({
	Title = "Auto Long Sword Hop",
	Default = getgenv().LongSwordHop,
	callback = function(value)
		getgenv().LongSwordHop = value
	end,
})
page999:Label({
	Title = "Dagger",
	Style = Enum.TextXAlignment.Center,
})
page999:Toggle({
	Title = "Auto Dark Dagger",
	Default = getgenv().DarkDagger,
	callback = function(value)
		getgenv().DarkDagger = value
		StopTween(getgenv().DarkDagger)
	end,
})
page999:Toggle({
	Title = "Auto Dark Dagger Hop",
	Default = getgenv().DarkDaggerHop,
	callback = function(value)
		getgenv().DarkDaggerHop = value
	end,
})
page999:Label({
	Title = "Valkyrie",
	Style = Enum.TextXAlignment.Center,
})
page999:Toggle({
	Title = "Auto Valkyrie Helmet",
	Default = getgenv().DarkDagger,
	callback = function(value)
		getgenv().DarkDagger = value
		StopTween(getgenv().DarkDagger)
	end,
})
page999:Toggle({
	Title = "Auto Valkyrie Helmet Hop",
	Default = getgenv().DarkDaggerHop,
	callback = function(value)
		getgenv().DarkDaggerHop = value
	end,
})





local page3 = mainTab:CreatePage({ Type = 3 })
page3:Label({
	Title = "Bone",
	Style = Enum.TextXAlignment.Center,
})

--CheckBone

local bone20 = page3:Label({
	Title = "Your Bone :",
	Style = Enum.TextXAlignment.Center,
})

--CheckBoneScript

spawn(function()
	while wait() do
		pcall(function()
			if string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Check")) then
				bone20:Refresh("Your Bone : "..(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Check")))
			end
		end)
	end
end)
page3:Toggle( {
	Title = "Auto Farm Bone",
	Default = getgenv().Setting["Auto Farm Bone"],
	callback = function(value)
		getgenv().Setting["Auto Farm Bone"] = value
		StopTween(getgenv().Setting["Auto Farm Bone"])
		if value == false then
			getgenv().ToTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
			getgenv().ToTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
		   topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
			topos(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
_G.StopTween = true
		end
	end,
})

page3:Toggle({
	Title = "Auto Random Bone",
	Default = getgenv().Setting["Auto Random Bone"],
	callback = function(value)
		getgenv().Setting["Auto Random Bone"] = value
	end,
})


task.spawn(function()
	while task.wait() do
		pcall(function()
			if StartMagnet then
				for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
					if not string.find(v.Name,"Boss") and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 500 then
						if InMyNetWork(v.HumanoidRootPart) then
							v.HumanoidRootPart.CFrame = PosMon
							v.Humanoid.JumpPower = 0
							v.Humanoid.WalkSpeed = 0
							v.HumanoidRootPart.Size = Vector3.new(60,60,60)
							v.HumanoidRootPart.Transparency = 1
							v.HumanoidRootPart.CanCollide = false
							v.Head.CanCollide = false
							if v.Humanoid:FindFirstChild("Animator") then
								v.Humanoid.Animator:Destroy()
							end
							v.Humanoid:ChangeState(11)
							v.Humanoid:ChangeState(14)
						end
					end
				end
			end
		end)
	end
end)

--Auto Farm Bone

spawn(function()
	game:GetService("RunService").RenderStepped:Connect(function()
	 pcall(function()
		 if getgenv().Setting["Auto Farm Bone"] == true then
	 local Distance2 = (game:GetService("Workspace").Enemies[v.Name].HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
	 local tween_s = game:service"TweenService"
	 local info = TweenInfo.new(Distance2/350, Enum.EasingStyle.Linear)
	 local tween = tween_s:Create(game:GetService("Players").LocalPlayer.Character["HumanoidRootPart"], info, {CFrame = game:GetService("Workspace").Enemies[v.Name].HumanoidRootPart.CFrame * CFrame.new(0,35,0)})
	 tween:Play()  
	 end
	 end)
	end)
end)

--Auto Farm Bone

task.spawn(function()
	while wait() do
		pcall(function()
			if getgenv().Setting["Auto Farm Bone"] then
				if game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton [Lv. 1975]") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie [Lv. 2000]") or game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul [Lv. 2025]") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy [Lv. 2050]") then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v.Name == "Reborn Skeleton [Lv. 1975]" or v.Name == "Living Zombie [Lv. 2000]" or v.Name == "Demonic Soul [Lv. 2025]" or v.Name == "Posessed Mummy [Lv. 2050]" then
							if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
								repeat wait()
									StartMagnet = true
									EquipWeapon(_G.SelectWeapon)
									PosMon = v.HumanoidRootPart.CFrame
									v.HumanoidRootPart.Size = Vector3.new(70,70,70)
									v.Humanoid.JumpPower = 0
									v.Humanoid.WalkSpeed = 0
									v.HumanoidRootPart.CanCollide = false
									v.Humanoid:ChangeState(11)
									_G.Attack_Xenon = true
									topos(v.HumanoidRootPart.CFrame*CFrame.new(0,35,0));
								until not getgenv().Setting["Auto Farm Bone"] or v.Humanoid.Health <= 0 or not v.Parent or v.Humanoid.Health <= 0
								StartMagnet = false
								_G.Attack_Xenon = false
							end
						end
					end
				else
					topos(CFrame.new(-9504.8564453125, 172.14292907714844, 6057.259765625))
				end
			end
		end)
	end
end)
page3:Label({
	Title = "Cake Prince",
	Style = Enum.TextXAlignment.Center,
})
local Mob_Kill_Cake_Prince = page3:Label({
	Title = "Kill Mon:",
	Style = Enum.TextXAlignment.Center,
})
spawn(function()
    while wait() do
        pcall(function()
            if string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 88 then
                Mob_Kill_Cake_Prince:Refresh("Kill Mon: "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,41).." : More!!!")
            elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 87 then
                Mob_Kill_Cake_Prince:Refresh("Kill Mon: "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,40).." : More!!!")
            elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 86 then
                Mob_Kill_Cake_Prince:Refresh("Kill Mon: "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,39).." : More!!!")
            else
                Mob_Kill_Cake_Prince:Refresh("!!Boss Is Spawned!!")
            end
        end)
    end
end)
--CheckCake

page3:Toggle({
	Title = "Auto Farm Cake Prince",
	Default = getgenv().Setting["Cake Prince"],
	callback = function(value)
		getgenv().Setting["Cake Prince"] = value
		StopTween(getgenv().Setting["Cake Prince"])
		if value == false then
			getgenv().ToTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
			getgenv().ToTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
		   topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
			topos(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
_G.StopTween = true
		end
	end,
})
page3:Toggle({
	Title = "Auto Finish Dough Dungeon",
	Default = _G.Auto_Open_Dough_Dungeon,
	callback = function(value)
		_G.Auto_Open_Dough_Dungeon = value
		StopTween(_G.Auto_Open_Dough_Dungeon)
		if value == false then
			getgenv().ToTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
			getgenv().ToTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
		   topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
			topos(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
_G.StopTween = true
		end
	end,
})

page3:Toggle({
	Title = "Auto Spawner Cake Prince",
	Default = getgenv().Setting["Cake Prince Spawner"],
	callback = function(value)
		getgenv().Setting["Cake Prince Spawner"] = value
		StopTween(getgenv().Setting["Cake Prince Spawner"])
	end,
})
page3:Label({
	Title = "Candy",
	Style = Enum.TextXAlignment.Center,
})
local Candies = page3:Label({
	Title = "Candy:",
	Style = Enum.TextXAlignment.Center,
})

--CheckCandy

spawn(function()
    while wait() do
        Candies:Refresh("Candy : "..game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Candies","Check").."!!")
    end
end)

page3:Toggle({
	Title = "Auto Farm Candy (Aura)",
	Default = getgenv().Mobaura,
	callback = function(value)
		getgenv().Mobaura = value
		StopTween(getgenv().Mobaura)
		if value == false then
			getgenv().ToTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
			getgenv().ToTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
		   topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
			topos(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
_G.StopTween = true
		end
	end,
})
page3:Toggle({
	Title = "Auto Buy Trade Fragment (50Candy)",
	Default = false,
	callback = function(value)
		while true do
			wait(0.2)
			local args = {
					[1] = "Candies",
					[2] = "Buy",
					[3] = 2,
					[4] = 1
				}
				
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		end
	end,
})
page3:Toggle({
	Title = "Auto Buy Trade Fragment (100Candy)",
	Default = false,
	callback = function(value)
		while true do
			wait(0.2)
			local args = {
					[1] = "Candies",
					[2] = "Buy",
					[3] = 2,
					[4] = 2
				}
				
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		end
	end,
})
page3:Line()
page3:Button({
	Title = "Buy Eif Hat (250Candy)",
	callback = function()
		local args = {
			[1] = "Candies",
			[2] = "Buy",
			[3] = 3,
			[4] = 1
		}
		
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end,
})
page3:Button({
	Title = "Buy Santa Hat (500Candy)",
	callback = function()
		local args = {
			[1] = "Candies",
			[2] = "Buy",
			[3] = 3,
			[4] = 2
		}
		
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end,
})
page3:Button({
	Title = "Buy Sleigh (1000Candy)",
	callback = function()
		local args = {
			[1] = "Candies",
			[2] = "Buy",
			[3] = 3,
			[4] = 3
		}
		
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

	end,
})
page3:Line()
page3:Button({
	Title = "Buy Trade Fragment (50Candy)",
	callback = function()
		local args = {
			[1] = "Candies",
			[2] = "Buy",
			[3] = 2,
			[4] = 1
		}
		
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

	end,
})
page3:Button({
	Title = "Buy Trade Fragment (100Candy)",
	callback = function()
		local args = {
			[1] = "Candies",
			[2] = "Buy",
			[3] = 2,
			[4] = 2
		}
		
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

	end,
})
page3:Line()
spawn(function()
	while wait() do
		pcall(function()
			if getgenv().Mobaura then
				for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
					if getgenv().Mobaura and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 700 then
						repeat wait()
							EquipWeapon(_G.SelectWeapon)
							v.HumanoidRootPart.CanCollide = false
							v.Humanoid.WalkSpeed = 0
							v.Head.CanCollide = false
							StartMagnet = true
							PosMon = v.HumanoidRootPart.CFrame
							v.HumanoidRootPart.Transparency = 1
							_G.Attack_Xenon = true
							getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,20,5))
							if delay then
								delay(1,function()
									StartMagnet = true
									Bring()
								end)
							end 
						until not getgenv().Mobaura or not v.Parent or v.Humanoid.Health <= 0
						_G.Attack_Xenon = false
						StartMagnet = false
					end
				end
			end
		end)
	end
end)
spawn(function()
	while wait() do
		if _G.Auto_Open_Dough_Dungeon then
			pcall(function()
				if game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") then
					if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SweetChaliceNpc"),"Where") then
						game.StarterGui:SetCore("SendNotification", {
							Title = "Notification", 
							Text = "Not Find Enough Material" ,
							Icon = "http://www.roblox.com/asset/?id=",
							Duration = 2.5
						})
					else
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SweetChaliceNpc")
					end
				elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Sweet Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("Sweet Chalice") then
					if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),"Do you want to open the portal now?") then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")
					else
						if game.Workspace.Enemies:FindFirstChild("Baking Staff [Lv. 2250]") or game.Workspace.Enemies:FindFirstChild("Head Baker [Lv. 2275]") or game.Workspace.Enemies:FindFirstChild("Cake Guard [Lv. 2225]") or game.Workspace.Enemies:FindFirstChild("Cookie Crafter [Lv. 2200]")  then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do  
								if (v.Name == "Baking Staff [Lv. 2250]" or v.Name == "Head Baker [Lv. 2275]" or v.Name == "Cake Guard [Lv. 2225]" or v.Name == "Cookie Crafter [Lv. 2200]") and v.Humanoid.Health > 0 then
									repeat wait()
										AutoHaki()
										EquipWeapon(_G.SelectWeapon)
										StartCakeMagnet = true
										v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)  
										v.Humanoid.JumpPower = 0
										v.Humanoid.WalkSpeed = 0
										POSCAKE = v.HumanoidRootPart.CFrame
										getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
										getgenv().SupperFast = true
									until _G.Auto_Open_Dough_Dungeon == false or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or not v.Parent or v.Humanoid.Health <= 0
									getgenv().SupperFast = false
								end
							end
						else
							StartCakeMagnet = false
							getgenv().ToTarget(CFrame.new(-1820.0634765625, 210.74781799316406, -12297.49609375))
						end
					end						
				elseif game.ReplicatedStorage:FindFirstChild("Dough King [Lv. 2300] [Raid Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Dough King [Lv. 2300] [Raid Boss]") then
					if game:GetService("Workspace").Enemies:FindFirstChild("Dough King [Lv. 2300] [Raid Boss]") then
						for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do 
							if v.Name == "Dough King [Lv. 2300] [Raid Boss]" then
								repeat wait()
									AutoHaki()
									EquipWeapon(_G.SelectWeapon)
									v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
									v.HumanoidRootPart.CanCollide = false
									v.Humanoid.JumpPower = 0
									v.Humanoid.WalkSpeed = 0
									getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
									getgenv().SupperFast = true
								until _G.Auto_Open_Dough_Dungeon == false or not v.Parent or v.Humanoid.Health <= 0
								getgenv().SupperFast = false
							end    
						end    
					else
						getgenv().ToTarget(CFrame.new(-2009.2802734375, 4532.97216796875, -14937.3076171875)) 
					end
				elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Red Key") or game.Players.LocalPlayer.Character:FindFirstChild("Red Key") then
					local args = {
						[1] = "CakeScientist",
						[2] = "Check"
					}

					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				else
					if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
						if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Diablo") or string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Deandre") or string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Urban") then
							if game:GetService("Workspace").Enemies:FindFirstChild("Diablo [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Urban [Lv. 1750]") then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v.Name == "Diablo [Lv. 1750]" or v.Name == "Deandre [Lv. 1750]" or v.Name == "Urban [Lv. 1750]" then
										if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
											repeat wait()
												AutoHaki()
												EquipWeapon(_G.SelectWeapon)
												v.HumanoidRootPart.CanCollide = false
												v.Humanoid.WalkSpeed = 0
												v.HumanoidRootPart.Size = Vector3.new(50,50,50)
												getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
												getgenv().SupperFast = true
												sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
											until _G.Auto_Open_Dough_Dungeon == false or v.Humanoid.Health <= 0 or not v.Parent or game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice")
											getgenv().SupperFast = false
										end
									end
								end
							else
								if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo [Lv. 1750]") then
									getgenv().ToTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Diablo [Lv. 1750]").HumanoidRootPart.CFrame * CFrame.new(0,30,0))
								elseif game:GetService("ReplicatedStorage"):FindFirstChild("Deandre [Lv. 1750]") then
									getgenv().ToTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Deandre [Lv. 1750]").HumanoidRootPart.CFrame * CFrame.new(0,30,0))
								elseif game:GetService("ReplicatedStorage"):FindFirstChild("Urban [Lv. 1750]") then
									getgenv().ToTarget(game:GetService("ReplicatedStorage"):FindFirstChild("Urban [Lv. 1750]").HumanoidRootPart.CFrame * CFrame.new(0,30,0))
								end
							end                    
						end
					else
						wait(0.5)
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
					end
				end
			end)
		end
	end
end)
game:GetService("RunService").RenderStepped:connect(function()
	for i,v in pairs(game.CoreGui:GetChildren()) do
	   if v:FindFirstChild("PropertiesFrame") then
		   if v:FindFirstChild("ExplorerPanel") then
			   if v:FindFirstChild("SideMenu") then
				   warn("DarkDex Detected")
				   game.Players.LocalPlayer:kick("Anti Dark Dex")
				   wait(.3)
					game:Shutdown()
					playtroll()
					wait(0.2)
				   gamekiller()
			   end
		   end
	   end
	end
 end)
page3:Label({
	Title = "Elitehunter",
	Style = Enum.TextXAlignment.Center,
})

--CheckEliteHunter

local Elite_Hunter_Status = page3:Label({
	Title = "Elite Hunter :",
	Style = Enum.TextXAlignment.Center,
})

--CheckEliteHunterScipt

spawn(function()
	while wait() do
		pcall(function()
			if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo [Lv. 1750]") or game:GetService("ReplicatedStorage"):FindFirstChild("Deandre [Lv. 1750]") or game:GetService("ReplicatedStorage"):FindFirstChild("Urban [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Diablo [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Urban [Lv. 1750]") then
				Elite_Hunter_Status:Refresh("Elite Hunter : Spawned")	
			else
				Elite_Hunter_Status:Refresh("Elite Hunter : Not Spawn")	
			end
		end)
	end
end)

--CheckEliteHunter

local dsa = page3:Label({
	Title = "Kill Elite Hunter :",
	Style = Enum.TextXAlignment.Center,
})

--CheckEliteHunterScipt

spawn(function()
	while wait() do
		pcall(function()
			dsa:Refresh("Kill Elite Hunter : "..game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Progress"))
		end)
	end
end)
page3:Toggle({
	Title = "Auto Farm Elite hunter",
	Default = getgenv().Elitehunter,
	callback = function(value)
		getgenv().Elitehunter = value
		StopTween(getgenv().Elitehunter)
		if value == false then
			getgenv().ToTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
			getgenv().ToTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
		   topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
			topos(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
_G.StopTween = true
		end
	end,
})

page3:Toggle({
	Title = "Auto Farm Elite hunter Hop",
	Default = getgenv().ElitehunterHop,
	callback = function(value)
		getgenv().ElitehunterHop = value
	end,
})

--Elitehunter

spawn(function()
	while wait() do
		if getgenv().Elitehunter then
			pcall(function()
				local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
				if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
					repeat  wait()
						topos(CFrame.new(-5418.892578125, 313.74130249023, -2826.2260742188)) 
					until not _G.AutoElitehunter or (Vector3.new(-5418.892578125, 313.74130249023, -2826.2260742188)-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3
					if (Vector3.new(-5418.892578125, 313.74130249023, -2826.2260742188)-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 then
						wait(1.1)
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
						wait(0.5)
					end
				elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
					if string.find(QuestTitle,"Diablo") or string.find(QuestTitle,"Deandre") or string.find(QuestTitle,"Urban") then
						if game:GetService("Workspace").Enemies:FindFirstChild("Diablo [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Urban [Lv. 1750]") then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if v.Name == "Diablo [Lv. 1750]" or v.Name == "Deandre [Lv. 1750]" or v.Name == "Urban [Lv. 1750]" then
									if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
										repeat task.wait()
											AutoHaki()
											EquipWeapon(_G.SelectWeapon)
											v.HumanoidRootPart.CanCollide = false
											v.Humanoid.JumpPower = 0
											v.Humanoid.WalkSpeed = 0
											v.HumanoidRootPart.Size = Vector3.new(150,150,150)
												getgenv().ToTarget(v.HumanoidRootPart.CFrame*CFrame.new(0,20,0));
											_G.Attack_Xenon = true
											sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
										until getgenv().Elitehunter == false or v.Humanoid.Health <= 0 or not v.Parent
										_G.Attack_Xenon = false
									end
								end
							end
						else
							if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo [Lv. 1750]") then
								topos(game:GetService("ReplicatedStorage"):FindFirstChild("Diablo [Lv. 1750]").HumanoidRootPart.CFrame * CFrame.new(0,30,0))
							elseif game:GetService("ReplicatedStorage"):FindFirstChild("Deandre [Lv. 1750]") then
								topos(game:GetService("ReplicatedStorage"):FindFirstChild("Deandre [Lv. 1750]").HumanoidRootPart.CFrame * CFrame.new(0,30,0))
							elseif game:GetService("ReplicatedStorage"):FindFirstChild("Urban [Lv. 1750]") then
								topos(game:GetService("ReplicatedStorage"):FindFirstChild("Urban [Lv. 1750]").HumanoidRootPart.CFrame * CFrame.new(0,30,0))
							else
								if getgenv().ElitehunterHop and game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("EliteHunter") == "I don't have anything for you right now. Come back later." then
									Hop()
								else
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
								end
								if getgenv().ElitehunterHop then
									Hop()
							end
							end
						end                    
					end
				end
			end)
		end
	end
end)

--CakePrinceSpawner

spawn(function()
	while wait() do
		if getgenv().Setting["Cake Prince Spawner"] then
			local args = {
				[1] = "CakePrinceSpawner",
				[2] = true
			}
	
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))                    
			local args = {
				[1] = "CakePrinceSpawner"
			}
	
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		end
	end
	end)

	--Auto Farm Ectoplasm
	
	spawn(function()
		game:GetService("RunService").Heartbeat:Connect(function()
			pcall(function()
				for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
					if getgenv().Setting["Auto Farm Ectoplasm"] and MagnetEctoplasm and string.find(v.Name, "Ship") and (v.HumanoidRootPart.Position - PosMonEctoplasm.Position).magnitude <= 350 then
						v.HumanoidRootPart.CFrame = PosMonEctoplasm
						v.HumanoidRootPart.CanCollide = false
						v.HumanoidRootPart.Size = Vector3.new(90,90,90)
						if v.Humanoid:FindFirstChild("Animator") then
							v.Humanoid.Animator:Destroy()
						end
						sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
					end
				end
			end)
		end)
	end)

	--Auto Farm Ectoplasm
	
	spawn(function()
		while wait() do
			if getgenv().Setting["Auto Farm Ectoplasm"] then
				pcall(function()
					if game:GetService("Workspace").Enemies:FindFirstChild("Ship Deckhand [Lv. 1250]") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Engineer [Lv. 1275]") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Steward [Lv. 1300]") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Officer [Lv. 1325]") then
						for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if string.find(v.Name, "Ship") then
								repeat wait()
									AutoHaki()
									EquipWeapon(_G.SelectWeapon)
									PosMonEctoplasm = v.HumanoidRootPart.CFrame
									v.HumanoidRootPart.CanCollide = false
									v.HumanoidRootPart.Size = Vector3.new(90,90,90)
									v.Humanoid.JumpPower = 0
									v.Humanoid.WalkSpeed = 0
									getgenv().ToTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,30,0))
									MagnetEctoplasm = true
	_G.Attack_Xenon = true
								until getgenv().Setting["Auto Farm Ectoplasm"] == false or not v.Parent or v.Humanoid.Health <= 0
								MagnetEctoplasm = false
								_G.Attack_Xenon = false
							else
								MagnetEctoplasm = false
								getgenv().ToTarget(CFrame.new(904.4072265625, 181.05767822266, 33341.38671875))
							end
						end
					else
						MagnetEctoplasm = false
						local Distance = (Vector3.new(904.4072265625, 181.05767822266, 33341.38671875) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
						if Distance > 20000 then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
						end
						getgenv().ToTarget(CFrame.new(904.4072265625, 181.05767822266, 33341.38671875))
					end
				end)
			end
		end
	end)    
page3:Label({
	Title = "Ectoplasm",
	Style = Enum.TextXAlignment.Center,
})
page3:Toggle({
	Title = "Auto Farm Ectoplasm",
	Default = getgenv().Setting["Auto Farm Ectoplasm"],
	callback = function(value)
		getgenv().Setting["Auto Farm Ectoplasm"] = value
		StopTween(getgenv().Setting["Auto Farm Ectoplasm"])
	end,
})

local page4 = mainTab:CreatePage({ Type = 2 })
page4:Label({
	Title = "Stats",
	Style = Enum.TextXAlignment.Center,
})
Statslist = {
	"Melee",
	"Defense",
	"Sword",
	"Gun",
	"DevilFruit"
}
page4:Dropdown({
	Title = "Select Stats",
	Item = Statslist,
	Default = 1,
	callback = function(value)
		_G.SelectStats = value
	end,
})

page4:Toggle({
	Title = "Auto Up Stats",
	Default = _G.AutoStats,
	callback = function(value)
		_G.AutoStats = value
	end,
})

--AutoStats

spawn(function()
	while task.wait() do
		pcall(function()
			if _G.AutoStats then
				if _G.SelectStats == "Melee" then
local args = {
	[1] = "AddPoint",
	[2] = "Melee",
	[3] = 3
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				elseif _G.SelectStats == "Defense" then
local args = {
	[1] = "AddPoint",
	[2] = "Defense",
	[3] = 3
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				elseif _G.SelectStats == "Sword" then
local args = {
	[1] = "AddPoint",
	[2] = "Sword",
	[3] = 3
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				elseif _G.SelectStats == "Gun" then
local args = {
	[1] = "AddPoint",
	[2] = "Gun",
	[3] = 3
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				elseif _G.SelectStats == "DevilFruit" then
local args = {
	[1] = "AddPoint",
	[2] = "Devil Fruit",
	[3] = 3
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end
			end
		end)
	end
end)

-- [CheckAttack]
local plr = game.Players.LocalPlayer
local CbFw = debug.getupvalues(require(plr.PlayerScripts.CombatFramework))
local CbFw2 = CbFw[2]
local b = 0
function GetCurrentBlade() 
	local p13 = CbFw2.activeController
	local ret = p13.blades[1]
	if not ret then return end
	while ret.Parent~=game.Players.LocalPlayer.Character do ret=ret.Parent end
	return ret
end 
function AttackNoCD() 
    local AC = CbFw2.activeController
    for i = 1, 1 do 
        local bladehit = require(game.ReplicatedStorage.CombatFramework.RigLib).getBladeHits(
            plr.Character,
            {plr.Character.HumanoidRootPart},
            0.1 --Blade counter
        )
        local cac = {}
        local hash = {}
        for k, v in pairs(bladehit) do
            if v.Parent:FindFirstChild("HumanoidRootPart") and not hash[v.Parent] then--Check Blade Hits in Character
                table.insert(cac, v.Parent.HumanoidRootPart)
                hash[v.Parent] = true
            end
        end
        bladehit = cac
        if #bladehit > 0 then --Blade Counter Check
            local u8 = debug.getupvalue(AC.attack, 5)
            local u9 = debug.getupvalue(AC.attack, 6)
            local u7 = debug.getupvalue(AC.attack, 4)
            local u10 = debug.getupvalue(AC.attack, 7)
            local u12 = (u8 * 798405 + u7 * 727595) % u9
            local u13 = u7 * 798405
            (function()
                u12 = (u12 * u9 + u13) % 1099511627776
                u8 = math.floor(u12 / u9)
                u7 = u12 - u8 * u9
            end)()
            u10 = u10 + 1
            debug.setupvalue(AC.attack, 5, u8)
            debug.setupvalue(AC.attack, 6, u9)
            debug.setupvalue(AC.attack, 4, u7)
            debug.setupvalue(AC.attack, 7, u10)
            pcall(function()
                for k, v in pairs(AC.animator.anims.basic) do
                    v:Play()
                end                  
            end)
            if plr.Character:FindFirstChildOfClass("Tool") and AC.blades and AC.blades[1] then 
                game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(GetCurrentBlade()))
                game.ReplicatedStorage.Remotes.Validator:FireServer(math.floor(u12 / 1099511627776 * 16777215), u10)
                game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, i, "")
				b=b+1
            end
        end
    end
end
local cac
a=35 

local plr = game.Players.LocalPlayer
local CbFw = getupvalues(require(plr.PlayerScripts.CombatFramework))
local CbFw2 = CbFw[2]

function GetCurrentBlade() 
	local p13 = CbFw2.activeController
	local ret = p13.blades[1]
	if not ret then return end
	while ret.Parent~=game.Players.LocalPlayer.Character do ret=ret.Parent end
	return ret
end 

function AttackNoCD()
	if not fuck then
		if not Auto_Raid then
			local AC = CbFw2.activeController
			for i = 1, 1 do 
				local bladehit = require(game.ReplicatedStorage.CombatFramework.RigLib).getBladeHits(
					plr.Character,
					{plr.Character.HumanoidRootPart},
					35
				)
				local cac = {}
				local hash = {}
				for k, v in pairs(bladehit) do
					if v.Parent:FindFirstChild("HumanoidRootPart") and not hash[v.Parent] then
						table.insert(cac, v.Parent.HumanoidRootPart)
						hash[v.Parent] = true
					end
				end
				bladehit = cac
				if #bladehit > 0 then
					local u8 = debug.getupvalue(AC.attack, 5)
					local u9 = debug.getupvalue(AC.attack, 6)
					local u7 = debug.getupvalue(AC.attack, 4)
					local u10 = debug.getupvalue(AC.attack, 7)
					local u12 = (u8 * 798405 + u7 * 727595) % u9
					local u13 = u7 * 798405
					(function()
						u12 = (u12 * u9 + u13) % 1099511627776
						u8 = math.floor(u12 / u9)
						u7 = u12 - u8 * u9
					end)()
					u10 = u10 + 1
					debug.setupvalue(AC.attack, 5, u8)
					debug.setupvalue(AC.attack, 6, u9)
					debug.setupvalue(AC.attack, 4, u7)
					debug.setupvalue(AC.attack, 7, u10)
					pcall(function()
						if plr.Character:FindFirstChildOfClass("Tool") and AC.blades and AC.blades[1] then
							AC.animator.anims.basic[1]:Play(0.01,0.01,0.01)
							game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(GetCurrentBlade()))
							game.ReplicatedStorage.Remotes.Validator:FireServer(math.floor(u12 / 1099511627776 * 16777215), u10)
							game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, i, "")
						end
					end)
				end
			end
		end
	end
	if getgenv().SupperFast or _G.Attack_Xenon or _G.Attack_Xenon2 == true then
		local Fast = getupvalues(require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework))
		local Lop = Fast[2]
		Lop.activeController.timeToNextAttack = (-math.huge^math.huge*math.huge)
		Lop.activeController.attacking = false
		Lop.activeController.timeToNextBlock = 0
		Lop.activeController.humanoid.AutoRotate = 80
		Lop.activeController.increment = 3
		Lop.activeController.blocking = false
		Lop.activeController.hitboxMagnitude = 15
	end
end

-- [CheckAttack]

spawn(function()
	while wait(.1) do
		pcall(function()
			if getgenv().SupperFast == true then
				repeat wait(0.1)
					wait()
					AttackNoCD()
					game:GetService("RunService").RenderStepped:Wait() 
				until not getgenv().SupperFast
			end
		end)
	end
	end)

	-- [CheckAttack]

	spawn(function()
		while wait(.1) do
			pcall(function()
				if _G.Attack_Xenon2 == true then
					repeat wait(0.2)
						AttackNoCD()
						game:GetService("RunService").RenderStepped:Wait()
					until not _G.Attack_Xenon2
				end
			end)
		end
		end)

		-- [CheckAttack]

	spawn(function()
		while wait(.1) do
			pcall(function()
				if _G.Attack_Xenon == true then
					repeat wait(0.2)
						AttackNoCD()
						game:GetService("RunService").RenderStepped:Wait()
					until not _G.Attack_Xenon
				end
			end)
		end
		end)

		-- [CheckAttack]

spawn(function()
    game:GetService("RunService").RenderStepped:Connect(function()
        if getgenv().SupperFast == true then
            game.Players.LocalPlayer.Character.Stun.Value = 0
            game.Players.LocalPlayer.Character.Humanoid.Sit = false
            game.Players.LocalPlayer.Character.Busy.Value = false        
        end
    end)
end)

-- [CheckAttack]

    spawn(function()
    game:GetService("RunService").RenderStepped:Connect(function()
        if _G.Attack_Xenon == true then
            game.Players.LocalPlayer.Character.Stun.Value = 0
            game.Players.LocalPlayer.Character.Humanoid.Sit = false
            game.Players.LocalPlayer.Character.Busy.Value = false        
        end
    end)
end)

-- [CheckAttack]

spawn(function()
    game:GetService("RunService").RenderStepped:Connect(function()
        if _G.Attack_Xenon2 == true then
            game.Players.LocalPlayer.Character.Stun.Value = 0
            game.Players.LocalPlayer.Character.Humanoid.Sit = false
            game.Players.LocalPlayer.Character.Busy.Value = false        
        end
    end)
end)
page2:Line()
local mainTab2 = window:CreateTab({ Logo = "7566388691", TooltipTitle = "Teleport", TooltipDesc = "Teleport/Combat" })

local page5 = mainTab2:CreatePage({ Type = 1 })
page5:Label({
	Title = "Teleport",
	Style = Enum.TextXAlignment.Center,
})

if World1 then
	page5:Dropdown({
		Title = "Select Island",
		Item = {
			"WindMill",
			"Marine",
			"Middle Town",
			"Jungle",
			"Pirate Village",
			"Desert",
			"Snow Island",
			"MarineFord",
			"Colosseum",
			"Sky Island 1",
			"Sky Island 2",
			"Sky Island 3",
			"Prison",
			"Magma Village",
			"Under Water Island",
			"Fountain City",
			"Shank Room",
			"Mob Island",
		},
		Default = 1,
		callback = function(Value)
			_G.SelectIsland = Value
		end,
	})
	end
if World2 then
	page5:Dropdown({
		Title = "Select Island",
		Item = {
			"The Cafe",
			"Frist Spot",
			"Dark Area",
			"Flamingo Mansion",
			"Flamingo Room",
			"Green Zone",
			"Factory",
			"Colossuim",
			"Zombie Island",
			"Two Snow Mountain",
			"Punk Hazard",
			"Cursed Ship",
			"Ice Castle",
			"Forgotten Island",
			"Ussop Island",
			"Mini Sky Island",
		},
		Default = 1,
		callback = function(Value)
			_G.SelectIsland = Value
		end,
	})
	end
if World3 then
	page5:Dropdown({
		Title = "Select Island",
		Item = {
			"Mansion",
			"Port Town",
			"Great Tree",
			"Castle On The Sea",
			"MiniSky", 
			"Hydra Island",
			"Floating Turtle",
			"Haunted Castle",
			"Ice Cream Island",
			"Peanut Island",
			"Cake Island",
		},
		Default = 1,
		callback = function(Value)
			_G.SelectIsland = Value
		end,
	})
end
page5:Toggle({
	Title = "Auto Teleport",
	Default = _G.TeleportIsland,
	callback = function(value)
		_G.TeleportIsland = value
		if _G.TeleportIsland == true then
			repeat wait()
				if _G.SelectIsland == "WindMill" then
					topos(CFrame.new(979.79895019531, 16.516613006592, 1429.0466308594))
				elseif _G.SelectIsland == "Marine" then
					topos(CFrame.new(-2566.4296875, 6.8556680679321, 2045.2561035156))
				elseif _G.SelectIsland == "Middle Town" then
					topos(CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094))
				elseif _G.SelectIsland == "Jungle" then
					topos(CFrame.new(-1612.7957763672, 36.852081298828, 149.12843322754))
				elseif _G.SelectIsland == "Pirate Village" then
					topos(CFrame.new(-1181.3093261719, 4.7514905929565, 3803.5456542969))
				elseif _G.SelectIsland == "Desert" then
					topos(CFrame.new(944.15789794922, 20.919729232788, 4373.3002929688))
				elseif _G.SelectIsland == "Snow Island" then
					topos(CFrame.new(1347.8067626953, 104.66806030273, -1319.7370605469))
				elseif _G.SelectIsland == "MarineFord" then
					topos(CFrame.new(-4914.8212890625, 50.963626861572, 4281.0278320313))
				elseif _G.SelectIsland == "Colosseum" then
					topos( CFrame.new(-1427.6203613281, 7.2881078720093, -2792.7722167969))
				elseif _G.SelectIsland == "Sky Island 1" then
					topos(CFrame.new(-4869.1025390625, 733.46051025391, -2667.0180664063))
				elseif _G.SelectIsland == "Sky Island 2" then  
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
				elseif _G.SelectIsland == "Sky Island 3" then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
				elseif _G.SelectIsland == "Prison" then
					topos( CFrame.new(4875.330078125, 5.6519818305969, 734.85021972656))
				elseif _G.SelectIsland == "Magma Village" then
					topos(CFrame.new(-5247.7163085938, 12.883934020996, 8504.96875))
				elseif _G.SelectIsland == "Under Water Island" then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
				elseif _G.SelectIsland == "Fountain City" then
					topos(CFrame.new(5127.1284179688, 59.501365661621, 4105.4458007813))
				elseif _G.SelectIsland == "Shank Room" then
					topos(CFrame.new(-1442.16553, 29.8788261, -28.3547478))
				elseif _G.SelectIsland == "Mob Island" then
					topos(CFrame.new(-2850.20068, 7.39224768, 5354.99268))
				elseif _G.SelectIsland == "The Cafe" then
					topos(CFrame.new(-380.47927856445, 77.220390319824, 255.82550048828))
				elseif _G.SelectIsland == "Frist Spot" then
					topos(CFrame.new(-11.311455726624, 29.276733398438, 2771.5224609375))
				elseif _G.SelectIsland == "Dark Area" then
					topos(CFrame.new(3780.0302734375, 22.652164459229, -3498.5859375))
				elseif _G.SelectIsland == "Flamingo Mansion" then
					topos(CFrame.new(-483.73370361328, 332.0383605957, 595.32708740234))
				elseif _G.SelectIsland == "Flamingo Room" then
					topos(CFrame.new(2284.4140625, 15.152037620544, 875.72534179688))
				elseif _G.SelectIsland == "Green Zone" then
					topos( CFrame.new(-2448.5300292969, 73.016105651855, -3210.6306152344))
				elseif _G.SelectIsland == "Factory" then
					topos(CFrame.new(424.12698364258, 211.16171264648, -427.54049682617))
				elseif _G.SelectIsland == "Colossuim" then
					topos( CFrame.new(-1503.6224365234, 219.7956237793, 1369.3101806641))
				elseif _G.SelectIsland == "Zombie Island" then
					topos(CFrame.new(-5622.033203125, 492.19604492188, -781.78552246094))
				elseif _G.SelectIsland == "Two Snow Mountain" then
					topos(CFrame.new(753.14288330078, 408.23559570313, -5274.6147460938))
				elseif _G.SelectIsland == "Punk Hazard" then
					topos(CFrame.new(-6127.654296875, 15.951762199402, -5040.2861328125))
				elseif _G.SelectIsland == "Cursed Ship" then
					topos(CFrame.new(923.40197753906, 125.05712890625, 32885.875))
				elseif _G.SelectIsland == "Ice Castle" then
					topos(CFrame.new(6148.4116210938, 294.38687133789, -6741.1166992188))
				elseif _G.SelectIsland == "Forgotten Island" then
					topos(CFrame.new(-3032.7641601563, 317.89672851563, -10075.373046875))
				elseif _G.SelectIsland == "Ussop Island" then
					topos(CFrame.new(4816.8618164063, 8.4599885940552, 2863.8195800781))
				elseif _G.SelectIsland == "Mini Sky Island" then
					topos(CFrame.new(-288.74060058594, 49326.31640625, -35248.59375))
				elseif _G.SelectIsland == "Great Tree" then
					topos(CFrame.new(2681.2736816406, 1682.8092041016, -7190.9853515625))
				elseif _G.SelectIsland == "Castle On The Sea" then
					topos(CFrame.new(-5074.45556640625, 314.5155334472656, -2991.054443359375))
				elseif _G.SelectIsland == "MiniSky" then
					topos(CFrame.new(-260.65557861328, 49325.8046875, -35253.5703125))
				elseif _G.SelectIsland == "Port Town" then
					topos(CFrame.new(-290.7376708984375, 6.729952812194824, 5343.5537109375))
				elseif _G.SelectIsland == "Hydra Island" then
					topos(CFrame.new(5228.8842773438, 604.23400878906, 345.0400390625))
				elseif _G.SelectIsland == "Floating Turtle" then
					topos(CFrame.new(-13274.528320313, 531.82073974609, -7579.22265625))
				elseif _G.SelectIsland == "Mansion" then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-12471.169921875, 374.94024658203, -7551.677734375))
				elseif _G.SelectIsland == "Haunted Castle" then
					topos(CFrame.new(-9515.3720703125, 164.00624084473, 5786.0610351562))
				elseif _G.SelectIsland == "Ice Cream Island" then
					topos(CFrame.new(-902.56817626953, 79.93204498291, -10988.84765625))
				elseif _G.SelectIsland == "Peanut Island" then
					topos(CFrame.new(-2062.7475585938, 50.473892211914, -10232.568359375))
				elseif _G.SelectIsland == "Cake Island" then
					topos(CFrame.new(-1884.7747802734375, 19.327526092529297, -11666.8974609375))
				end
			until not _G.TeleportIsland
		end
		StopTween(_G.TeleportIsland) 
		if value == false then
			getgenv().ToTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
			getgenv().ToTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
		   topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
			topos(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
_G.StopTween = true
		end
	end,
})
local page6 = mainTab2:CreatePage({ Type = 2 })
page6:Label({
	Title = "Settings Player",
	Style = Enum.TextXAlignment.Center,
})    
Playerslist = {}
for i,v in pairs(game:GetService("Players"):GetChildren()) do
	table.insert(Playerslist,v.Name)
end
local SelectedPly = page6:Dropdown({
	Title = "Select Player",
	Item = Playerslist,
	Default = 1,
	callback = function(value)
		_G.SelectPly = value
	end,
})
spawn(function()
	while wait() do
		if _G.Auto_Kill_Ply then
			pcall(function()
				if _G.SelectPly ~= nil then 
					if game.Players:FindFirstChild(_G.SelectPly) then
						if game.Players:FindFirstChild(_G.SelectPly).Character.Humanoid.Health > 0 then
							repeat task.wait()
								EquipWeapon(_G.SelectWeapon)
								AutoHaki()
								game.Players:FindFirstChild(_G.SelectPly).Character.HumanoidRootPart.CanCollide = false
								topos(game.Players:FindFirstChild(_G.SelectPly).Character.HumanoidRootPart.CFrame * CFrame.new(0,2,0))
								spawn(function()
									pcall(function()
										if _G.SelectWeapon == SelectWeaponGun then
											local args = {
												[1] = game.Players:FindFirstChild(_G.SelectPly).Character.HumanoidRootPart.Position,
												[2] = game.Players:FindFirstChild(_G.SelectPly).Character.HumanoidRootPart
											}
											game:GetService("Players").LocalPlayer.Character[SelectWeaponGun].RemoteFunctionShoot:InvokeServer(unpack(args))
										else
											game:GetService("VirtualUser"):CaptureController()
											game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
										end
									end)
								end)
							until game.Players:FindFirstChild(_G.SelectPly).Character.Humanoid.Health <= 0 or not game.Players:FindFirstChild(_G.SelectPly) or not _G.Auto_Kill_Ply
						end
					end
				end
			end)
		end
	end
end)

page6:Button({
	Title = "Clear Player",
	callback = function()
		Playerslist = {}
		SelectedPly:Clear()
		for i,v in pairs(game:GetService("Players"):GetChildren()) do  
			SelectedPly:Add(v.Name)
		end
	end,
})

page6:Toggle({
	Title = "Spectate Players",
	Default = SpectatePlys,
	callback = function(value)
		SpectatePlys = value
		local plr1 = game:GetService("Players").LocalPlayer.Character.Humanoid
		local plr2 = game:GetService("Players"):FindFirstChild(_G.SelectPly)
		repeat wait(.1)
			game:GetService("Workspace").Camera.CameraSubject = game:GetService("Players"):FindFirstChild(_G.SelectPly).Character.Humanoid
		until SpectatePlys == false 
		game:GetService("Workspace").Camera.CameraSubject = game:GetService("Players").LocalPlayer.Character.Humanoid
	end,
})
page6:Toggle({
	Title = "Teleport To Players",
	Default =false,
	callback = function(value)
		_G.TeleportPly = value
		pcall(function()
			if _G.TeleportPly then
				repeat topos(game:GetService("Players")[_G.SelectPly].Character.HumanoidRootPart.CFrame) wait() until _G.TeleportPly == false
			end
			StopTween(_G.TeleportPly)
		end)
		if value == false then
			getgenv().ToTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
			getgenv().ToTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
		   topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
			topos(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
_G.StopTween = true
		end
	end,
})
page6:Toggle({
	Title = "Auto Kill Players",
	Default = false,
	callback = function(value)
		_G.Auto_Kill_Ply = value
		StopTween(_G.Auto_Kill_Ply)
		if value == false then
			getgenv().ToTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
			getgenv().ToTarget(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
		   topos(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
			topos(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
_G.StopTween = true
		end
	end,
})
local mainTab3 = window:CreateTab({ Logo = "7566388691", TooltipTitle = "Check Items", TooltipDesc = "Check Items Player" })
local page7 = mainTab3:CreatePage({ Type = 1 })
spawn(function()--store fruit
    while task.wait() do
        if getgenv().storefruit then
            pcall(function()
                if getgenv().storefruit then
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bomb Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bomb Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Bomb-Bomb",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bomb Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spike Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spike Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Spike-Spike",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spike Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Chop Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Chop Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Chop-Chop",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Chop Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spring Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spring Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Spring-Spring",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spring Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Kilo Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Kilo Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Kilo-Kilo",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Kilo Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Smoke Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Smoke Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Smoke-Smoke",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Smoke Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spin Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spin Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Spin-Spin",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spin Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flame Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flame Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Flame-Flame",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flame Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Falcon Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Falcon Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Bird-Bird: Falcon",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Falcon Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ice Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ice Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Ice-Ice",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ice Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sand Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sand Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Sand-Sand",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sand Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dark Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dark Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Dark-Dark",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dark Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Revive Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Revive Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Revive-Revive",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Revive Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Diamond Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Diamond Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Diamond-Diamond",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Diamond Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Light Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Light Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Light-Light",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Light Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Love Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Love Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Love-Love",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Love Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rubber Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rubber Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Rubber-Rubber",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rubber Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Barrier Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Barrier Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Barrier-Barrier",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Barrier Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Magma Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Magma Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Magma-Magma",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Magma Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Door Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Door Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Door-Door",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Door Fruit"))
                    end
                end
                if not trygettrevo then
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Quake Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Quake Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Quake-Quake",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Quake Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Human-Human: Buddha Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Human-Human: Buddha",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Human-Human: Buddha Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("String Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("String Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","String-String",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("String Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Phoenix Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Phoenix Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Bird-Bird: Phoenix",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Phoenix Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rumble Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rumble Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Rumble-Rumble",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rumble Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Paw Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Paw Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Paw-Paw",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Paw Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Gravity Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Gravity Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Gravity-Gravity",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Gravity Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dough Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dough Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Dough-Dough",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dough Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Shadow Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Shadow Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Shadow-Shadow",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Shadow Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Venom Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Venom Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Venom-Venom",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Venom Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Control Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Control Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Control-Control",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Control Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Soul Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Soul Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Soul-Soul",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Soul Fruit"))
                    end
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Fruit") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Dragon-Dragon",game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Fruit"))
                    end
                end
            end)
        end
        wait(1)
    end
end)
local page11 = mainTab2:CreatePage({ Type = 2 })
page11:Label({
	Title = "Fruit",
	Style = Enum.TextXAlignment.Center,
})  

page11:Toggle({
	Title = "Auto Random Fruit",
	Default = false,
	callback = function(value)
		getgenv().randomfruit = value
	end,
})
page11:Toggle({
	Title = "Bring Fruit",
	Default = false,
	callback = function(value)
		getgenv().BringFruit = value
	end,
})
page11:Toggle({
	Title = "Auto Store Fruit",
	Default = false,
	callback = function(value)
		getgenv().storefruit = value
	end,
})
--BringFruit

spawn(function()
	pcall(function()
		while wait(.3) do
			if getgenv().BringFruit then
				for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
					if string.find(v.Name, "Fruit") then
						if v:IsA("Tool") then
							v.Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 50, 0)
							wait(.2)
							firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,v.Handle,0)
						end
					end
				end
			end
		end
	end)
end)

--RandomFruit

spawn(function()
	pcall(function()
		while wait(.1) do
			if getgenv().randomfruit then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
			end 
		end
	end)
end)

local page12 = mainTab2:CreatePage({ Type = 1 })
page12:Label({
	Title = "Dungeon",
	Style = Enum.TextXAlignment.Center,
})  

--Chips_Dungeon

spawn(function()
	while wait() do
		if _G.Auto_Buy_Chips_Dungeon then
			pcall(function()
				local args = {
					[1] = "RaidsNpc",
					[2] = "Select",
					[3] = (_G.SelectChip)
				}
				
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
			end)
		end
	end
end)

--Auto_Start_Dungeon

spawn(function()
	while wait() do
		if _G.Auto_Start_Dungeon then
			pcall(function()
				if World2 then
					if not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Special Microchip") then 
							fireclickdetector(game.Workspace.Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
						end
					end
				elseif World3 then
					if not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
						if game.Players.LocalPlayer.Backpack:FindFirstChild("Special Microchip") then
							fireclickdetector(game.Workspace.Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
						end
					end
				end
			end)
		end
	end
end)

--Auto_Next_Island

spawn(function()
	while wait() do
		if _G.Auto_Next_Island2 then
			if not game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == false then
				if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") then
					topos(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").CFrame * CFrame.new(0,30,0))
				elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") then
					topos(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").CFrame * CFrame.new(0,30,0))
				elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") then
					topos(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").CFrame * CFrame.new(0,30,0))
				elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") then
					topos(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").CFrame * CFrame.new(0,30,0))
				elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
					topos(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").CFrame * CFrame.new(0,30,0))
				end
			end
		end
	end
end)

--_G.Kill_Aura

spawn(function()
	while wait() do
		if _G.Kill_Aura then
			for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
				if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
					pcall(function()
						repeat wait(.1)
							v.Humanoid.Health = 0
							v.HumanoidRootPart.CanCollide = false
							sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
						until not _G.Kill_Aura  or not v.Parent or v.Humanoid.Health <= 0
					end)
				end
			end
		end
	end
end)
 page12:Dropdown({
	Title = "Select Dungeon",
	Item = {"Flame","Ice","Quake","Light","Dark","String","Rumble","Magma","Human: Buddha","Sand","Bird: Phoenix","Dough"},
	Default = "Flame",
	callback = function(value) 
		_G.SelectChip = value
	end,
})
page12:Toggle({
	Title = "Auto Starts Dungeon (Auto Buy)",
	Default = false,
	callback = function(value)
		_G.Auto_Buy_Chips_Dungeon = value
		_G.Auto_Start_Dungeon = value
	end,
})
page12:Toggle({
	Title = "Auto Next Island",
	Default = false,
	callback = function(value)
		_G.Auto_Next_Island2 = value
	end,
})
page12:Toggle({
	Title = "Kill Aura (Fast kill)",
	Default = false,
	callback = function(value)
		_G.Kill_Aura = value
	end,
})

local status_level = page7:Label({
	Title = "Level : "..game:GetService("Players").LocalPlayer.Data.Level.Value,
	Style = Enum.TextXAlignment.Center,
})
local status_beli = page7:Label({
	Title = "Beli : "..game:GetService("Players").LocalPlayer.Data.Beli.Value,
	Style = Enum.TextXAlignment.Center,
})
local status_fragment = page7:Label({
	Title = "Fragment : "..game:GetService("Players").LocalPlayer.Data.Fragments.Value,
	Style = Enum.TextXAlignment.Center,
})
local status_race = page7:Label({
	Title = "Race : "..game:GetService("Players").LocalPlayer.Data.Race.Value,
	Style = Enum.TextXAlignment.Center,
})
local status_fruit = page7:Label({
	Title = "Fruit : "..game:GetService("Players").LocalPlayer.Data.DevilFruit.Value,
	Style = Enum.TextXAlignment.Center,
})
spawn(function()
    while task.wait() do
        pcall(function()
            status_level:Refresh("Level : "..game:GetService("Players").LocalPlayer.Data.Level.Value)
            status_race:Refresh("Race : "..game:GetService("Players").LocalPlayer.Data.Race.Value)
            status_fruit:Refresh("Fruit : "..game:GetService("Players").LocalPlayer.Data.DevilFruit.Value)
            status_beli:Refresh("Beli : $ "..game:GetService("Players").LocalPlayer.Data.Beli.Value)
            status_fragment:Refresh("Fragment : Æ’ "..game:GetService("Players").LocalPlayer.Data.Fragments.Value)
        end)
    end
end)
local page8 = mainTab3:CreatePage({ Type = 2 })
local Superhuman = page8:Label({
	Title = "âŒ : Superhuman",
	Style = Enum.TextXAlignment.Center,
})
local DeathStep = page8:Label({
	Title = "âŒ : DragonTalon",
	Style = Enum.TextXAlignment.Center,
})
local SharkmanKarate = page8:Label({
	Title = "âŒ : SharkmanKarate",
	Style = Enum.TextXAlignment.Center,
})
local ElectricClaw = page8:Label({
	Title = "âŒ : DeathStep",
	Style = Enum.TextXAlignment.Center,
})
local DragonTalon = page8:Label({
	Title = "âŒ : ElectricClaw",
	Style = Enum.TextXAlignment.Center,
})
local GodHuman = page8:Label({
	Title = "âŒ : Godhuman",
	Style = Enum.TextXAlignment.Center,
})
spawn(function()
    while task.wait() do
        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman",true) == 1 then
            Superhuman:Refresh("âœ… : Superhuman")
        end
        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep",true) == 1 then
            DeathStep:Refresh("âœ… : Death Step")
        end
        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true) == 1 then
            SharkmanKarate:Refresh("âœ… : Sharkman Karate")
        end
        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw",true) == 1 then
            ElectricClaw:Refresh("âœ… : Electric Claw")
        end
        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon",true) == 1 then
            DragonTalon:Refresh("âœ… : Dragon Talon")
        end
        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodHuman",true) == 1 then
            GodHuman:Refresh("âœ… : God Human")
        end
    end
end)
local page9 = mainTab3:CreatePage({ Type = 3 })
local Saber = page9:Label({
	Title = "âŒ : Saber",
	Style = Enum.TextXAlignment.Center,
})
local Rengoku = page9:Label({
	Title = "âŒ : Rengoku",
	Style = Enum.TextXAlignment.Center,
})
local MidnightBlade = page9:Label({
	Title = "âŒ : MidnightBlade",
	Style = Enum.TextXAlignment.Center,
})
local DragonTrident = page9:Label({
	Title = "âŒ : DragonTrident",
	Style = Enum.TextXAlignment.Center,
})
local Yama = page9:Label({
	Title = "âŒ : Yama",
	Style = Enum.TextXAlignment.Center,
})
local BuddySword = page9:Label({
	Title = "âŒ : BuddySword",
	Style = Enum.TextXAlignment.Center,
})
local Canvander = page9:Label({
	Title = "âŒ : Canvander",
	Style = Enum.TextXAlignment.Center,
})
local TwinHooks = page9:Label({
	Title = "âŒ : TwinHooks",
	Style = Enum.TextXAlignment.Center,
})
local SpikeyTrident = page9:Label({
	Title = "âŒ : SpikeyTrident",
	Style = Enum.TextXAlignment.Center,
})
local HallowScythe = page9:Label({
	Title = "âŒ : HallowScythe",
	Style = Enum.TextXAlignment.Center,
})
local DarkDagger = page9:Label({
	Title = "âŒ : DarkDagger",
	Style = Enum.TextXAlignment.Center,
})
local Tushita= page9:Label({
	Title = "âŒ : Tushita",
	Style = Enum.TextXAlignment.Center,
})
spawn(function()
    while task.wait() do
        pcall(function()
            for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryWeapons")) do
                if v.Name == "Saber" then
                    Saber:Refresh("âœ… : Saber")
                end
                if v.Name == "Rengoku" then
                    Rengoku:Refresh("âœ… : Rengoku")
                end
                if v.Name == "Midnight Blade" then
                    MidnightBlade:Refresh("âœ… : Midnight Blade")
                end
                if v.Name == "Dragon Trident" then
                    DragonTrident:Refresh("âœ… : Dragon Trident")
                end
                if v.Name == "Yama" then
                    Yama:Refresh("âœ… : Yama")
                end
                if v.Name == "Buddy Sword" then
                    BuddySword:Refresh("âœ… : Buddy Sword")
                end
                if v.Name == "Canvander" then
                    Canvander:Refresh("âœ… : Canvander")
                end
                if v.Name == "Twin Hooks" then
                    TwinHooks:Refresh("âœ… : Twin Hooks")
                end
                if v.Name == "Spikey Trident" then
                    SpikeyTrident:Refresht("âœ… : Spikey Trident")
                end
                if v.Name == "Hallow Scythe" then
                    HallowScythe:Refresh("âœ… : Hallow Scythe")
                end
                if v.Name == "Dark Dagger" then
                    DarkDagger:Refresh("âœ… : Dark Dagger")
                end
                if v.Name == "Tushita" then
                    Tushita:Refresh("âœ… : Tushita")
                end
            end
        end)
    end
end)
local zmainTab = window:CreateTab({ Logo = "7566388691", TooltipTitle = "Misc", TooltipDesc = "Misc/WebHook" })

local pageaaa1 = zmainTab:CreatePage({ Type = 1 })
local WebHookLog = {}

local AllRequest = http_request or request or HttpPost or syn.request
function WebHookLog:WebHookKaiTanSend(WebHookUrl)

	function GetFightingStyle(Style)
		ReturnText = ""
		for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if v:IsA("Tool") then
				if v.ToolTip == Style then
					ReturnText = v.Name
				end
			end
		end
		for i ,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
			if v:IsA("Tool") then
				if v.ToolTip == Style then
					ReturnText = v.Name
				end
			end
		end
		if ReturnText ~= "" then
			return ReturnText
		else
			return "Not Have"
		end
	end

	function GetAwaken()
		ReturnText = ""
		Awakened_Z = ":x:"
		Awakened_X = ":x:"
		Awakened_C = ":x:"
		Awakened_V = ":x:"
		Awakened_F = ":x:"
		for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if v:IsA("Tool") then
				if v.ToolTip == "Blox Fruit" then
					if v:FindFirstChild("AwakenedMoves") then
						if v.AwakenedMoves:FindFirstChild("Z") then
							Awakened_Z = ":white_check_mark:"
						end
						if v.AwakenedMoves:FindFirstChild("X") then
							Awakened_X = ":white_check_mark:"
						end
						if v.AwakenedMoves:FindFirstChild("C") then
							Awakened_C = ":white_check_mark:"
						end
						if v.AwakenedMoves:FindFirstChild("V") then
							Awakened_V = ":white_check_mark:"
						end
						if v.AwakenedMoves:FindFirstChild("F") then
							Awakened_F = ":white_check_mark:"
						end
						ReturnText = ":regional_indicator_z:"..Awakened_Z..
							"\n"..":regional_indicator_x:"..Awakened_X..
							"\n"..":regional_indicator_c:"..Awakened_C..
							"\n"..":regional_indicator_v:"..Awakened_V..
							"\n"..":regional_indicator_f:"..Awakened_F
					else
						ReturnText = "This Fruit Can't Awakened"
					end
				end
			end
		end
		for i ,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
			if v:IsA("Tool") then
				if v.ToolTip == "Blox Fruit" then
					if v:FindFirstChild("AwakenedMoves") then
						if v.AwakenedMoves:FindFirstChild("Z") then
							Awakened_Z = ":white_check_mark:"
						end
						if v.AwakenedMoves:FindFirstChild("X") then
							Awakened_X = ":white_check_mark:"
						end
						if v.AwakenedMoves:FindFirstChild("C") then
							Awakened_C = ":white_check_mark:"
						end
						if v.AwakenedMoves:FindFirstChild("V") then
							Awakened_V = ":white_check_mark:"
						end
						if v.AwakenedMoves:FindFirstChild("F") then
							Awakened_F = ":white_check_mark:"
						end
						ReturnText = ":regional_indicator_z:"..Awakened_Z..
							"\n"..":regional_indicator_x:"..Awakened_X..
							"\n"..":regional_indicator_c:"..Awakened_C..
							"\n"..":regional_indicator_v:"..Awakened_V..
							"\n"..":regional_indicator_f:"..Awakened_F
					else
						ReturnText = "This Fruit Can't Awakened"
					end
				end
			end
		end
		if ReturnText ~= "" then
			return ReturnText
		else
			return "Not Have"
		end
	end

	function GetWeapon(Rare)
		if Rare == "Common" then
			RareNumber = 0
		elseif Rare == "Uncommon" then
			RareNumber = 1
		elseif Rare == "Rare" then
			RareNumber = 2
		elseif Rare == "Legendary" then
			RareNumber = 3
		elseif Rare == "Mythical" then
			RareNumber = 4
		else
			return "Worng InPut"
		end
		local ReturnText = ""
		for i,v in pairs(game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("getInventoryWeapons")) do
			if type(v) == "table" then
				if v.Rarity then
					if tonumber(v.Rarity) == RareNumber then
						ReturnText = ReturnText .. v.Name .. "\n"
					end
				end
			end
		end
		if ReturnText ~= "" then
			return ReturnText
		else
			return "Not Have"
		end
	end

	function GetFruitInU()
		local ReturnText = ""
		for i,v in pairs(game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("getInventoryFruits")) do
			if type(v) == "table" then
				if v ~= nil then
					ReturnText = ReturnText .. v.Name .. " : " .. v.Price .. "\n"
				end
			end
		end

		if ReturnText ~= "" then
			return ReturnText
		else
			return "Not Have"
		end
	end

	function GetAllMelee()
		BuyDragonTalon = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon",true))
		if BuyDragonTalon then
			if BuyDragonTalon == 1 then
				TalComplete = true
			end
		end
		BuySuperhuman = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman",true))
		if BuySuperhuman then
			if BuySuperhuman == 1 then
				SupComplete = true
			end
		end
		BuySharkmanKarate = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true))
		if BuySharkmanKarate then
			if BuySharkmanKarate == 1 then
				SharkComplete = true
			end
		end
		BuyDeathStep = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep",true))
		if BuyDeathStep then
			if BuyDeathStep == 1 then
				DeathComplete = true
			end
		end
		BuyElectricClaw = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw",true))
		if BuyElectricClaw then
			if BuyElectricClaw == 1 then
				EClawComplete = true
			end
		end
		BuyGod = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman",true))
		if BuyGod then
			if BuyGod == 1 then
				GodComplete = true
			end
		end
		ReturnText = {}
		if SupComplete == true then
			table.insert(ReturnText,"SuperHuman")
		end
		if EClawComplete == true then
			table.insert(ReturnText,"Electric Claw")
		end
		if TalComplete == true then
			table.insert(ReturnText,"Dragon Talon")
		end
		if SharkComplete == true then
			table.insert(ReturnText,"Sharkman Karate")
		end
		if DeathComplete == true then
			table.insert(ReturnText,"Death Step")
		end
		if GodComplete == true then
			table.insert(ReturnText,"God Human")
		end

		if #ReturnText ~= 0 then
			return table.concat(ReturnText,",")
		else
			return "Not Have"
		end
	end

	local Embeds = {{
		["title"] = "DepTrai Webhooks Status**",
		["color"] = tonumber(0xD936FF),
		["fields"] = {
			{
				["name"] = "User Name",
				["value"] = "||"..tostring(game.Players.LocalPlayer.Name).."||",
				["inline"] = true
			},
			{
				["name"] = "Level",
				["value"] = tostring(game:GetService("Players").LocalPlayer.Data:FindFirstChild("Level").Value),
				["inline"] = true
			},
			{
				["name"] = "Fragments",
				["value"] = tostring(game:GetService("Players").LocalPlayer.Data:FindFirstChild("Fragments").Value),
				["inline"] = true
			},
			{
				["name"] = "Bounty/Honor",
				["value"] = tostring(game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].Value),
				["inline"] = true
			},
			{
				["name"] = "Beli",
				["value"] = tostring(game:GetService("Players").LocalPlayer.Data:FindFirstChild("Beli").Value),
				["inline"] = true
			},
			{
				["name"] = "Fighting Style",
				["value"] = GetFightingStyle("Melee"),
				["inline"] = true
			},
			{
				["name"] = "Sword",
				["value"] = GetFightingStyle("Sword"),
				["inline"] = true
			},
			{
				["name"] = "Devil Fruit",
				["value"] = GetFightingStyle("Blox Fruit"),
				["inline"] = true
			},
			{
				["name"] = "Gun",
				["value"] = GetFightingStyle("Gun"),
				["inline"] = true
			},
			{
				["name"] = "Accessory",
				["value"] = GetFightingStyle("Wear"),
				["inline"] = true
			},
			{
				["name"] = "Race",
				["value"] = tostring(game:GetService("Players").LocalPlayer.Data:FindFirstChild("Race").Value),
				["inline"] = true
			},
			{
				["name"] = "Awakened",
				["value"] = tostring(GetAwaken()),
				["inline"] = true
			},
			{
				["name"] = "Status",
				["value"] = "```sml\n"..tostring("Melee : "..game:GetService("Players").LocalPlayer.Data.Stats.Melee:WaitForChild("Level").Value .. 
					"\nDefense : "..game:GetService("Players").LocalPlayer.Data.Stats.Defense:WaitForChild("Level").Value .. 
					"\nSword : "..game:GetService("Players").LocalPlayer.Data.Stats.Sword:WaitForChild("Level").Value.. 
					"\nGun : "..game:GetService("Players").LocalPlayer.Data.Stats.Gun:WaitForChild("Level").Value .. 
					"\nDevil Fruit : "..game:GetService("Players").LocalPlayer.Data.Stats["Demon Fruit"]:WaitForChild("Level").Value).."```",
				["inline"] = true
			},
			{
				["name"] = "Common :blue_circle:",
				["value"] = "```sml\n"..tostring(GetWeapon("Common")).."```",
				["inline"] = true
			},
			{
				["name"] = "Uncommon :green_circle:",
				["value"] = "```sml\n"..tostring(GetWeapon("Uncommon")).."```",
				["inline"] = true
			},
			{
				["name"] = "Rare :yellow_circle:",
				["value"] = "```sml\n"..tostring(GetWeapon("Rare")).."```",
				["inline"] = true
			},
			{
				["name"] = "Legendary :purple_circle:",
				["value"] = "```sml\n"..tostring(GetWeapon("Legendary")).."```",
				["inline"] = true
			},
			{
				["name"] = "Mythical :red_circle:",
				["value"] = "```sml\n"..tostring(GetWeapon("Mythical")).."```",
				["inline"] = true
			},
			{
				["name"] = "Fruit In Inventory",
				["value"] = "```sml\n"..tostring(GetFruitInU()).."```",
				["inline"] = true
			},
			{
				["name"] = "All Melee",
				["value"] = "```sml\n"..tostring(GetAllMelee()).."```",
				["inline"] = true
			},



			{
				["name"] = "ã…¤",
				["value"] = tostring("ã…¤ã…¤ã…¤ã…¤ã…¤ã…¤ã…¤ã…¤ã…¤ã…¤ã…¤ã…¤ã…¤ã…¤ã…¤ã…¤ã…¤ã…¤ã…¤ã…¤ã…¤ã…¤ã…¤ã…¤ã…¤ã…¤ã…¤ã…¤ã…¤ã…¤ã…¤ã…¤ã…¤ã…¤ã…¤"),
				["inline"] = false
			}},
		["footer"] = {
			["text"] = "Made by ! Under".."\nTime".." : "..os.date("%c").." ("..os.date("%X")..")",
			["icon_url"] = "https://cdn.discordapp.com/attachments/1010202207066533938/1053541609851060245/1671254227538.jpg"
		},
	}}

	local Message
	if _G.SendWebHookPing then
		Message = {
			['username'] = "ThienPhat Webhook",
			["avatar_url"] = "https://cdn.discordapp.com/attachments/1010202207066533938/1053541609851060245/1671254227538.jpg",
			["content"] = "@everyone",
			["embeds"] = Embeds,
		}
	else
		Message = {
			['username'] = "ThienPhat Webhook",
			["avatar_url"] = "https://cdn.discordapp.com/attachments/1051305646869458944/1069607975037190154/lZ70tHPCbAbYDfAboDdpgdWownwLwF2AwG2A2w2TfDEGsJnz48gwAAAABJRU5ErkJggg.png",
			["embeds"] = Embeds,
		}
	end

	local DataCallBack = AllRequest({
		Url = WebHookUrl,
		Method = 'POST',
		Headers = {
			["Content-Type"] = "application/json"
		},
		Body = game:GetService("HttpService"):JSONEncode(Message)
	})
	return DataCallBack
end

function WebHookLog:SheetBestLogSend(SheetBestUrl)

	function GetFightingStyle(Style)
		ReturnText = ""
		for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if v:IsA("Tool") then
				if v.ToolTip == Style then
					ReturnText = v.Name
				end
			end
		end
		for i ,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
			if v:IsA("Tool") then
				if v.ToolTip == Style then
					ReturnText = v.Name
				end
			end
		end
		if ReturnText ~= "" then
			return ReturnText
		else
			return "Not Have"
		end
	end

	function GetAllMelee()
		BuyDragonTalon = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon",true))
		if BuyDragonTalon then
			if BuyDragonTalon == 1 then
				TalComplete = true
			end
		end
		BuySuperhuman = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman",true))
		if BuySuperhuman then
			if BuySuperhuman == 1 then
				SupComplete = true
			end
		end
		BuySharkmanKarate = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true))
		if BuySharkmanKarate then
			if BuySharkmanKarate == 1 then
				SharkComplete = true
			end
		end
		BuyDeathStep = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep",true))
		if BuyDeathStep then
			if BuyDeathStep == 1 then
				DeathComplete = true
			end
		end
		BuyElectricClaw = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw",true))
		if BuyElectricClaw then
			if BuyElectricClaw == 1 then
				EClawComplete = true
			end
		end
		BuyGod = tonumber(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman",true))
		if BuyGod then
			if BuyGod == 1 then
				GodComplete = true
			end
		end
		ReturnText = {}
		if SupComplete == true then
			table.insert(ReturnText,"SuperHuman")
		end
		if EClawComplete == true then
			table.insert(ReturnText,"Electric Claw")
		end
		if TalComplete == true then
			table.insert(ReturnText,"Dragon Talon")
		end
		if SharkComplete == true then
			table.insert(ReturnText,"Sharkman Karate")
		end
		if DeathComplete == true then
			table.insert(ReturnText,"Death Step")
		end
		if GodComplete == true then
			table.insert(ReturnText,"God Human")
		end

		if #ReturnText ~= 0 then
			return table.concat(ReturnText,",")
		else
			return "Not Have"
		end
	end

	function GetAwaken()
		ReturnText = ""
		Awakened_Z = "âŒ"
		Awakened_X = "âŒ"
		Awakened_C = "âŒ"
		Awakened_V = "âŒ"
		Awakened_F = "âŒ"
		for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if v:IsA("Tool") then
				if v.ToolTip == "Blox Fruit" then
					if v:FindFirstChild("AwakenedMoves") then
						if v.AwakenedMoves:FindFirstChild("Z") then
							Awakened_Z = "Z"
						end
						if v.AwakenedMoves:FindFirstChild("X") then
							Awakened_X = "X"
						end
						if v.AwakenedMoves:FindFirstChild("C") then
							Awakened_C = "C"
						end
						if v.AwakenedMoves:FindFirstChild("V") then
							Awakened_V = "V"
						end
						if v.AwakenedMoves:FindFirstChild("F") then
							Awakened_F = "F"
						end
						ReturnText = Awakened_Z..
							" : "..Awakened_X..
							" : "..Awakened_C..
							" : "..Awakened_V..
							" : "..Awakened_F
					else
						ReturnText = "This Fruit Can't Awakened"
					end
				end
			end
		end
		for i ,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
			if v:IsA("Tool") then
				if v.ToolTip == "Blox Fruit" then
					if v:FindFirstChild("AwakenedMoves") then
						if v.AwakenedMoves:FindFirstChild("Z") then
							Awakened_Z = ":white_check_mark:"
						end
						if v.AwakenedMoves:FindFirstChild("X") then
							Awakened_X = ":white_check_mark:"
						end
						if v.AwakenedMoves:FindFirstChild("C") then
							Awakened_C = ":white_check_mark:"
						end
						if v.AwakenedMoves:FindFirstChild("V") then
							Awakened_V = ":white_check_mark:"
						end
						if v.AwakenedMoves:FindFirstChild("F") then
							Awakened_F = ":white_check_mark:"
						end
						ReturnText = ":regional_indicator_z:"..Awakened_Z..
							" : "..":regional_indicator_x:"..Awakened_X..
							" : "..":regional_indicator_c:"..Awakened_C..
							" : "..":regional_indicator_v:"..Awakened_V..
							" : "..":regional_indicator_f:"..Awakened_F
					else
						ReturnText = "This Fruit Can't Awakened"
					end
				end
			end
		end
		if ReturnText ~= "" then
			return ReturnText
		else
			return "Not Have"
		end
	end

	function GetWeapon()
		local ReturnText = ""
		for i,v in pairs(game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("getInventoryWeapons")) do
			if type(v) == "table" then
				if v.Name then
					ReturnText = ReturnText .. v.Name .. " "
				end
			end
		end
		if ReturnText ~= "" then
			return ReturnText
		else
			return "Not Have"
		end
	end

	function GetFruitInU()
		local ReturnText = ""
		for i,v in pairs(game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("getInventoryFruits")) do
			if type(v) == "table" then
				if v ~= nil then
					ReturnText = ReturnText .. v.Name .. " "
				end
			end
		end

		if ReturnText ~= "" then
			return ReturnText
		else
			return "Not Have"
		end
	end

	function GetWeaponMastery(Style)
		ReturnText = ""
		for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if v:IsA("Tool") then
				if v.ToolTip == Style then
					ReturnText = v:FindFirstChild("Level").Value
				end
			end
		end
		for i ,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
			if v:IsA("Tool") then
				if v.ToolTip == Style then
					ReturnText = v:FindFirstChild("Level").Value
				end
			end
		end
		if ReturnText ~= "" then
			return ReturnText
		else
			return "Not Have"
		end
	end

	function Abbreviate(x)
		local abbreviations = {
			"K", -- 4 digits
			"M", -- 7 digits
			"B", -- 10 digits
			"T", -- 13 digits
			"QD", -- 16 digits
			"QT", -- 19 digits
			"SXT", -- 22 digits
			"SEPT", -- 25 digits
			"OCT", -- 28 digits
			"NON", -- 31 digits
			"DEC", -- 34 digits
			"UDEC", -- 37 digits
			"DDEC", -- 40 digits
		}
		if x < 1000 then 
			return tostring(x)
		end

		local digits = math.floor(math.log10(x)) + 1
		local index = math.min(#abbreviations, math.floor((digits - 1) / 3))
		local front = x / math.pow(10, index * 3)

		return string.format("%i%s+", front, abbreviations[index])
	end

	local Message
	Message = {
		["UserName"] = tostring(game.Players.LocalPlayer.Name),
		["Level"] = tostring(game:GetService("Players").LocalPlayer.Data:FindFirstChild("Level").Value),
		["Weapon inventory"] = tostring(GetWeapon()),
		["Fruit inventory"] = tostring(GetFruitInU()),
		["Melee"] = tostring(GetAllMelee()),
		["Fruit"] = tostring(GetFightingStyle("Blox Fruit")),
		["Fruit Mastery"] = tostring(GetWeaponMastery("Blox Fruit")),
		["Fruit Awake"] = tostring(GetAwaken()),
		["Beli"] = tostring(Abbreviate(game:GetService("Players").LocalPlayer.Data:FindFirstChild("Beli").Value)),
		["Fragment"] = tostring(Abbreviate(game:GetService("Players").LocalPlayer.Data:FindFirstChild("Fragments").Value)),
		["Race"] = tostring(game:GetService("Players").LocalPlayer.Data:FindFirstChild("Race").Value)
	}

	local DataCallBack = AllRequest({
		Url = SheetBestUrl,
		Method = 'POST',
		Headers = {
			["Content-Type"] = "application/json"
		},
		Body = game:GetService("HttpService"):JSONEncode(Message)
	})
	return DataCallBack
end
pageaaa1:Label({
	Title = "Webhook",
	Style = Enum.TextXAlignment.Center,
})
pageaaa1:Label({
	Title = "Check Item",
	Style = Enum.TextXAlignment.Center,
})
pageaaa1:TextBox({
	Title = "Webhook",
	Holder = "Webhook holder", -- ???? what is this
	callback = function(x)
		Webhooklink = x
	end,
})
pageaaa1:Button({
	Title = "Send Webhook",
	callback = function()
		WebHookLog:WebHookKaiTanSend(Webhooklink)
	end,
})
pageaaa1:TextBox({
	Title = "Baselink",
	Holder = "Baselink holder", -- ???? what is this
	callback = function(x)
		Baselink = x
	end,
})
pageaaa1:Button({
	Title = "Send Baselink",
	callback = function()
		WebHookLog:SheetBestLogSend(Baselink)
	end,
})
local pageaaa2 = zmainTab:CreatePage({ Type = 2 })
pageaaa2:Button({
	Title = "Rejoin Server",
	callback = function()
		game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
	end,
})
pageaaa2:Button({
	Title = "Hop Server To Lower Player",
	callback = function()
		Hop()
	end,
})
pageaaa2:Button({
	Title = "Server Hop",
	callback = function()
		getgenv().AutoTeleport = true
		getgenv().DontTeleportTheSameNumber = true 
		getgenv().CopytoClipboard = false
		if not game:IsLoaded() then
			print("Game is loading waiting...")
		end
		local maxplayers = math.huge
		local serversmaxplayer;
		local goodserver;
		local gamelink = "https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100" 
		function serversearch()
			for _, v in pairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync(gamelink)).data) do
				if type(v) == "table" and v.playing ~= nil and maxplayers > v.playing then
					serversmaxplayer = v.maxPlayers
					maxplayers = v.playing
					goodserver = v.id
				end
			end       
		end 
		function getservers()
			serversearch()
			for i,v in pairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync(gamelink))) do
				if i == "nextPageCursor" then
					if gamelink:find("&cursor=") then
						local a = gamelink:find("&cursor=")
						local b = gamelink:sub(a)
						gamelink = gamelink:gsub(b, "")
					end
					gamelink = gamelink .. "&cursor=" ..v
					getservers()
				end
			end
		end 
		getservers()
		if AutoTeleport then
			if DontTeleportTheSameNumber then 
				if #game:GetService("Players"):GetPlayers() - 4  == maxplayers then
					return warn("It has same number of players (except you)")
				elseif goodserver == game.JobId then
					return warn("Your current server is the most empty server atm") 
				end
			end
			game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, goodserver)
		end
	end,
})
pageaaa2:Toggle({
	Title = "Auto Rejoin When kick",
	Default = true,
	callback = function(value)
		_G.AutoRejoin = value
	end,
})
spawn(function()
	while wait() do
		if _G.AutoRejoin then
			getgenv().rejoin = game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(child)
				if child.Name == 'ErrorPrompt' and child:FindFirstChild('MessageArea') and child.MessageArea:FindFirstChild("ErrorFrame") then
					game:GetService("TeleportService"):Teleport(game.PlaceId)
				end
			end)
		end
	end
end) 
local plr = game.Players.LocalPlayer
    
local CbFw = debug.getupvalues(require(plr.PlayerScripts.CombatFramework))
local CbFw2 = CbFw[2]

function GetCurrentBlade() 
    local p13 = CbFw2.activeController
    local ret = p13.blades[1]
    if not ret then return end
    while ret.Parent~=game.Players.LocalPlayer.Character do ret=ret.Parent end
    return ret
end
function AttackNoCD() 
    local AC = CbFw2.activeController
    for i = 1, 1 do 
        local bladehit = require(game.ReplicatedStorage.CombatFramework.RigLib).getBladeHits(
            plr.Character,
            {plr.Character.HumanoidRootPart},
            60
        )
        local cac = {}
        local hash = {}
        for k, v in pairs(bladehit) do
            if v.Parent:FindFirstChild("HumanoidRootPart") and not hash[v.Parent] then
                table.insert(cac, v.Parent.HumanoidRootPart)
                hash[v.Parent] = true
            end
        end
        bladehit = cac
        if #bladehit > 0 then
            local u8 = debug.getupvalue(AC.attack, 5)
            local u9 = debug.getupvalue(AC.attack, 6)
            local u7 = debug.getupvalue(AC.attack, 4)
            local u10 = debug.getupvalue(AC.attack, 7)
            local u12 = (u8 * 798405 + u7 * 727595) % u9
            local u13 = u7 * 798405
            (function()
                u12 = (u12 * u9 + u13) % 1099511627776
                u8 = math.floor(u12 / u9)
                u7 = u12 - u8 * u9
            end)()
            u10 = u10 + 1
            debug.setupvalue(AC.attack, 5, u8)
            debug.setupvalue(AC.attack, 6, u9)
            debug.setupvalue(AC.attack, 4, u7)
            debug.setupvalue(AC.attack, 7, u10)
            pcall(function()
                for k, v in pairs(AC.animator.anims.basic) do
                    v:Play()
                end                  
            end)
            if plr.Character:FindFirstChildOfClass("Tool") and AC.blades and AC.blades[1] then 
                game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(GetCurrentBlade()))
                game.ReplicatedStorage.Remotes.Validator:FireServer(math.floor(u12 / 1099511627776 * 16777215), u10)
                game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, i, "") 
            end
        end
    end
end

require(game.ReplicatedStorage.Util.CameraShaker):Stop()
spawn(function()
while task.wait() do
      pcall(function()
          if getgenv().susfattt then
                AttackNoCD() 
              end
      end)
    end
end)
            
            local SeraphFrame = debug.getupvalues(require(game:GetService("Players").LocalPlayer.PlayerScripts:WaitForChild("CombatFramework")))[2]
            local VirtualUser = game:GetService('VirtualUser')
            local RigControllerR = debug.getupvalues(require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework.RigController))[2]
            local Client = game:GetService("Players").LocalPlayer
            local DMG = require(Client.PlayerScripts.CombatFramework.Particle.Damage)
            
            function SeraphFuckWeapon() 
                local p13 = SeraphFrame.activeController
                local wea = p13.blades[1]
                if not wea then return end
                while wea.Parent~=game.Players.LocalPlayer.Character do wea=wea.Parent end
                return wea
            end
            
            function getHits(Size)
                local Hits = {}
                local Enemies = workspace.Enemies:GetChildren()
                local Characters = workspace.Characters:GetChildren()
                for i=1,#Enemies do local v = Enemies[i]
                    local Human = v:FindFirstChildOfClass("Humanoid")
                    if Human and Human.RootPart and Human.Health > 0 and game.Players.LocalPlayer:DistanceFromCharacter(Human.RootPart.Position) < Size+5 then
                        table.insert(Hits,Human.RootPart)
                    end
                end
                for i=1,#Characters do local v = Characters[i]
                    if v ~= game.Players.LocalPlayer.Character then
                        local Human = v:FindFirstChildOfClass("Humanoid")
                        if Human and Human.RootPart and Human.Health > 0 and game.Players.LocalPlayer:DistanceFromCharacter(Human.RootPart.Position) < Size+5 then
                            table.insert(Hits,Human.RootPart)
                        end
                    end
                end
                return Hits
            end
            
            task.spawn(
                function()
                while wait(0) do
                    if  _G.FastAttackNormalSpeed then
                        if SeraphFrame.activeController then
                            -- if v.Humanoid.Health > 0 then
                                SeraphFrame.activeController.timeToNextAttack = 0
                                SeraphFrame.activeController.focusStart = 0
                                SeraphFrame.activeController.hitboxMagnitude = 40
                                SeraphFrame.activeController.humanoid.AutoRotate = true
                                SeraphFrame.activeController.increment = 1 + 1 / 1
                            -- end
                        end
                    end
                end
            end)
            
            function Boost()
                spawn(function()
                game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(SeraphFuckWeapon()))
                end)
            end
            
            function Unboost()
                spawn(function()
                    game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("unequipWeapon",tostring(SeraphFuckWeapon()))
                end)
            end
            
            local cdnormal = 0
            local Animation = Instance.new("Animation")
            local CooldownFastAttack = 0
            Attack = function()
                local ac = SeraphFrame.activeController
                if ac and ac.equipped then
                    task.spawn(
                        function()
                        if tick() - cdnormal > 0.5 then
                            ac:attack()
                            cdnormal = tick()
                        else
                             Animation.AnimationId = ac.anims.basic[2]
                            ac.humanoid:LoadAnimation(Animation):Play(2, 2) --à¸—à¹ˆà¸²à¹„à¸¡à¹ˆà¸—à¸³à¸‡à¸²à¸™à¹à¸à¹‰à¹€à¸›à¹‡à¸™ (1,1)
                            game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", getHits(120), 2, "")
                        end
                    end)
                end
            end
            
            b = tick()
            spawn(function()
                while wait(0) do
                    if  _G.FastAttackNormalSpeed then
                        if b - tick() > 0.75 then
                            wait(.2)
                            b = tick()
                        end
                        pcall(function()
                            for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                                if v.Humanoid.Health > 0 then
                                    if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 40 then
                                        Attack()
                                        wait(0)
                                        Boost()
                                    end
                                end
                            end
                        end)
                    end
                end
            end)
            
            k = tick()
            spawn(function()
                while wait(0) do
                    if  _G.FastAttackNormalSpeed then
                        if k - tick() > 0.75 then
                            wait(0)
                            k = tick()
                        end
                        pcall(function()
                            for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                                if v.Humanoid.Health > 0 then
                                    if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 40 then
                                    wait(0)
                                    Unboost()
                                    end
                                end
                            end
                        end)
                    end
                end
            end)
            
            tjw1 = true
            task.spawn(
                function()
                    local a = game.Players.LocalPlayer
                    local b = require(a.PlayerScripts.CombatFramework.Particle)
                    local c = require(game:GetService("ReplicatedStorage").CombatFramework.RigLib)
                    if not shared.orl then
                        shared.orl = c.wrapAttackAnimationAsync
                    end
                    if not shared.cpc then
                        shared.cpc = b.play
                    end
                    if tjw1 then
                        pcall(
                            function()
                                c.wrapAttackAnimationAsync = function(d, e, f, g, h)
                                    local i = c.getBladeHits(e, f, g)
                                    if i then
                                        b.play = function()
                                        end
                                        d:Play(15.25, 15.25, 15.25)
                                        h(i)
                                        b.play = shared.cpc
                                        wait(0)
                                        d:Stop()
                                    end
                                end
                            end
                        )
                    end
                end
            )
            
            
            
            local CameRa = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework.CameraShaker)
            CameRa.CameraShakeInstance.CameraShakeState = {FadingIn = 3,FadingOut = 2,Sustained = 0,Inactive =1}
            
            local Client = game.Players.LocalPlayer
            local STOP = require(Client.PlayerScripts.CombatFramework.Particle)
            local STOPRL = require(game:GetService("ReplicatedStorage").CombatFramework.RigLib)
            task.spawn(function()
                pcall(function()
                    if not shared.orl then
                        shared.orl = STOPRL.wrapAttackAnimationAsync
                    end
                        if not shared.cpc then
                            shared.cpc = STOP.play 
                        end
                    spawn(function()
                  require(game.ReplicatedStorage.Util.CameraShaker):Stop()
                        game:GetService("RunService").Stepped:Connect(function()
                            STOPRL.wrapAttackAnimationAsync = function(a,b,c,d,func)
                                local Hits = STOPRL.getBladeHits(b,c,d)
                                if Hits then
                                    if  _G.FastAttackNormalSpeed then
                                        STOP.play = function() end
                                        a:Play(10.1,9.1,8.1)
                                        func(Hits)
                                        STOP.play = shared.cpc
                                        wait(a.length * 10.5)
                                        a:Stop()
                                    else
                                        func(Hits)
                                        STOP.play = shared.cpc
                                        wait(a.length * 10.5)
                                        a:Stop()
                                    end
                                end
                            end
                        end)
                    end)
                end)
                end)