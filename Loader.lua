local x_799z98q = game:GetService("Players").LocalPlayer
local x_799zz23 = x_799z98q:WaitForChild("PlayerGui")
local x_799pt7g = game:GetService("TweenService")

local x_799gxu9 = Instance.new("ScreenGui", x_799zz23)
x_799gxu9.Name = "x_799Prompt"
x_799gxu9.ResetOnSpawn = false
x_799gxu9.IgnoreGuiInset = true

local x_799u3pj = Instance.new("Frame", x_799gxu9)
x_799u3pj.Size = UDim2.new(0, 420, 0, 240)
x_799u3pj.Position = UDim2.new(0.5, -210, 0.5, -120)
x_799u3pj.BackgroundColor3 = Color3.fromRGB(10, 10, 20)

Instance.new("UICorner", x_799u3pj).CornerRadius = UDim.new(0, 16)

local x_799qkxl = Instance.new("UIGradient", x_799u3pj)
x_799qkxl.Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 98, 255)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 0, 0))
}
x_799qkxl.Rotation = 45

local x_799asv4 = Instance.new("TextLabel", x_799u3pj)
x_799asv4.Size = UDim2.new(1, -40, 0, 40)
x_799asv4.Position = UDim2.new(0, 20, 0, 20)
x_799asv4.Text = "New Script Loader"
x_799asv4.TextColor3 = Color3.fromRGB(255, 255, 255)
x_799asv4.TextSize = 28
x_799asv4.Font = Enum.Font.GothamBold
x_799asv4.BackgroundTransparency = 1
x_799asv4.TextXAlignment = Enum.TextXAlignment.Left

local x_799v0rk = Instance.new("TextLabel", x_799u3pj)
x_799v0rk.Size = UDim2.new(1, -40, 0, 0)
x_799v0rk.Position = UDim2.new(0, 20, 0, 60)
x_799v0rk.Text = "AVTH has a new version with a lot of features with unreleased stuff for steal a brainrot and a pet freeze for grow a garden. to get it join discord, tap verify that insta verify u. no capcha. go to script channel and download txt luau file and paste to ur exec"
x_799v0rk.TextColor3 = Color3.fromRGB(200, 200, 200)
x_799v0rk.TextSize = 18
x_799v0rk.Font = Enum.Font.Gotham
x_799v0rk.BackgroundTransparency = 1
x_799v0rk.TextWrapped = true
x_799v0rk.TextXAlignment = Enum.TextXAlignment.Left
x_799v0rk.TextYAlignment = Enum.TextYAlignment.Top
x_799v0rk.AutomaticSize = Enum.AutomaticSize.Y

local x_799yqq7 = Instance.new("TextButton", x_799u3pj)
x_799yqq7.Size = UDim2.new(0, 160, 0, 40)
x_799yqq7.Position = UDim2.new(0, 20, 1, -60)
x_799yqq7.Text = "Join Discord"
x_799yqq7.TextColor3 = Color3.fromRGB(255, 255, 255)
x_799yqq7.TextSize = 20
x_799yqq7.Font = Enum.Font.GothamBold
x_799yqq7.BackgroundColor3 = Color3.fromRGB(0, 120, 255)
Instance.new("UICorner", x_799yqq7).CornerRadius = UDim.new(0, 10)

local x_799wff0 = Instance.new("UIGradient", x_799yqq7)
x_799wff0.Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 140, 255)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 60, 180))
}
x_799wff0.Rotation = 45

x_799yqq7.MouseButton1Click:Connect(function()
	setclipboard("https://discord.gg/mmnHdJECFv")

	local tween = x_799pt7g:Create(x_799u3pj, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
		Size = UDim2.new(0, 0, 0, 0),
		Position = UDim2.new(0.5, 0, 0.5, 0),
		BackgroundTransparency = 1
	})

	for _, d in ipairs(x_799u3pj:GetDescendants()) do
		if d:IsA("TextLabel") or d:IsA("TextButton") then
			x_799pt7g:Create(d, TweenInfo.new(0.3), {TextTransparency = 1}):Play()
		end
	end

	tween:Play()
	tween.Completed:Wait()
	x_799gxu9:Destroy()
end)

-- :/ | discord.gg/ujNaJUsdUh 
local x_799copyBtn = x_799yqq7:Clone()
x_799copyBtn.Text = "Copy New Loader"
x_799copyBtn.Position = UDim2.new(1, -180, 1, -60)
x_799copyBtn.Parent = x_799u3pj

x_799copyBtn.MouseButton1Click:Connect(function()
	setclipboard([[getgenv().Translator = ""
loadstring(game:HttpGet("https://get-avth-ontop.netlify.app/my-paste/script.lua"))()]])
end)
