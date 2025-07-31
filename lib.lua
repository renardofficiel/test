local a = game:GetService("CoreGui")
local b = game:GetService("TweenService")
local c = game:GetService("UserService")
local d = game:GetService("UserInputService")
local e = game:GetService("RunService")
local f = game:GetService("MarketplaceService")
local g = game:GetService("StarterGui")
local h = game:GetService("Stats")
local i = game:GetService("HttpService")
local j = game:GetService("Players")
local k = j.LocalPlayer;
local l = k.Name;
local m = k.UserId;
local n = get_hidden_gui or gethui;
local o = request or http_request or http and http.request or syn and syn.request;
local p = getsynasset or getcustomasset;
local q = setclipboard or toclipboard or set_clipboard or Clipboard and Clipboard.set;
local r = syn and syn.set_thread_identity or setidentity or setthreadcontext;
local s = {
	getfenv,
	sethiddenproperty and type(sethiddenproperty) == "function",
	getsenv and type(getsenv) == "function",
	p and type(p) == "function",
	Drawing and type(Drawing.new) == "function",
	syn and syn.websocket or Krnl and Krnl.WebSocket or WebSocket or websocket,
	n and type(n) == "function",
	identifyexecutor and type(identifyexecutor) == "function",
	getconnections and type(getconnections) == "function",
	o and type(o) == "function",
	require and type(require) == "function",
	getrawmetatable and type(getrawmetatable) == "function",
	setreadonly and type(setreadonly) == "function",
	newcclosure and type(newcclosure) == "function",
	hookfunction and type(hookfunction) == "function",
	q and type(q) == "function",
	firetouchinterest and type(firetouchinterest) == "function",
	fireclickdetector and type(fireclickdetector) == "function",
	getrenv and type(getrenv) == "function",
	getgenv and type(getgenv) == "function",
	r and type(r) == "function",
	getgc and type(getgc) == "function",
	debug and debug.getinfo and type(debug.getinfo) == "function" and debug.getupvalues and type(debug.getupvalues) == "function" and debug.getupvalue and type(debug.getupvalue) == "function",
	readfile and type(readfile) == "function",
	writefile and type(writefile) == "function",
	isfile and type(isfile) == "function",
	isfolder and type(isfolder) == "function",
	makefolder and type(makefolder) == "function",
	deletefile and type(deletefile) == "function" or delfile and type(delfile) == "function",
	deletefolder and type(deletefolder) == "function" or delfolder and type(delfolder) == "function",
	listfiles and type(listfiles) == "function"
}
local t = "https://github.com/justasimplewebsite/test/raw/refs/heads/main/resources"
local u = loadstring(game:HttpGet("https://github.com/justasimplewebsite/test/raw/refs/heads/main/Notif"))()
local v = loadstring(game:HttpGet("https://github.com/justasimplewebsite/test/raw/refs/heads/main/datastore.lua"))()
local w = {
	Keybind = {},
	Toggle = {},
	Slider = {},
	Textbox = {},
	Dropdown = {}
}
local x = "SymphonyHub"
local y = workspace.CurrentCamera.ViewportSize.Y;
local k = j.LocalPlayer;
local z = k:GetMouse()
local A = ColorSequence.new;
local B = TweenInfo.new;
local C = ColorSequenceKeypoint.new;
local D = Rect.new;
local E = Color3.fromRGB;
local F = UDim2.new;
local G = UDim.new;
local H = Vector2.new;
local I = true;
local J = {}
local K = {}
local L = {}
local M = {}
local N = {}
local O = {}
local P = {}
local Q = {}
local R = false;
local S;
local T;
local U;
local V;
local W;
local X = Instance.new("Sound")
X.Name = "SH SFX"
X.Parent = workspace;
local function Y(Z)
	if Q[Z] then
		X.SoundId = Q[Z]
		X:Play()
	end
end;
local function _(a0)
	a0 = a0 or math.random(1, 10)
	local a1 = {}
	for a2 = 1, a0 do
		a1[a2] = string.char(math.random(32, 126))
	end;
	return table.concat(a1)
end;
local function a3(a4)
	a4 = a4:gsub("<br%s*/>", "\n")
	return a4:gsub("<[^<>]->", "")
end;
local function a5(a6)
	return o({
		Url = a6,
		Method = "GET",
		Headers = {
			["Content-Type"] = "application/json"
		},
		Body = ""
	}).Body
end;
local function a7()
	a5("https://symphonyhub.onrender.com/script/rendertest")
end;
local function a8(a6, a9)
	return o({
		Url = a6,
		Method = a9,
		Headers = {
			Authorization = "elf and tears"
		}
	}).Body
end;
local function aa(a4)
	return string.gsub(a4, ".", function(ab)
		return string.format("%02x", string.byte(ab))
	end)
end;
local function ac(a4)
	return string.gsub(a4, "%x%x", function(ad)
		return string.char(tonumber(ad, 16))
	end)
end;
local function ae(a4)
	local af = aa(a4)
	local ag = ""
	for a2 = 1, string.len(af) do
		ag = ag .. string.char(string.byte(af, a2) + 75)
	end;
	return ag
end;
local function ah(a4)
	local ag = ""
	for a2 = 1, string.len(a4) do
		ag = ag .. string.char(string.byte(a4, a2) - 75)
	end;
	return ac(ag)
end;
local function ai(a4, aj)
	local ak = Instance.new("ImageLabel")
	local al = Instance.new("ImageLabel")
	local am = Instance.new("ImageLabel")
	local an = Instance.new("TextLabel")
	local ao = Instance.new("TextLabel")
	local af = a3(a4)
	a4 = tostring(a4) or "Hello World!"
	aj = tonumber(aj) or 5;
	ak.Name = "Notification"
	ak.Parent = Gui;
	ak.BackgroundTransparency = 1;
	ak.Size = UDim2.new(0, 0, 0, 60)
	ak.Image = "rbxassetid://5028857472"
	ak.ImageColor3 = Color3.fromRGB(24, 24, 24)
	ak.ScaleType = Enum.ScaleType.Slice;
	ak.SliceCenter = Rect.new(4, 4, 296, 296)
	ak.ZIndex = 3;
	ak.Position = UDim2.new(0, 10, 1, -(ak.AbsoluteSize.Y + 10))
	ak.ClipsDescendants = true;
	al.Name = "Flash"
	al.Parent = ak;
	al.Size = UDim2.new(1, 0, 1, 0)
	al.BackgroundTransparency = 1;
	al.Image = "rbxassetid://4641149554"
	al.ImageColor3 = Color3.fromRGB(255, 255, 255)
	al.ZIndex = 5;
	am.Name = "Glow"
	am.Parent = ak;
	am.BackgroundTransparency = 1;
	am.Position = UDim2.new(0, -15, 0, -15)
	am.Size = UDim2.new(1, 30, 1, 30)
	am.ZIndex = 2;
	am.Image = "rbxassetid://5028857084"
	am.ImageColor3 = Color3.fromRGB(0, 0, 0)
	am.ScaleType = Enum.ScaleType.Slice;
	am.SliceCenter = Rect.new(24, 24, 276, 276)
	an.Name = "Title"
	an.Parent = ak;
	an.BackgroundTransparency = 1;
	an.Position = UDim2.new(0, 10, 0, 8)
	an.Size = UDim2.new(1, -40, 0, 16)
	an.ZIndex = 4;
	an.Font = Enum.Font.GothamSemibold;
	an.Text = "Symphony Hub Says:"
	an.TextColor3 = Color3.fromRGB(255, 255, 255)
	an.TextSize = 14.000;
	an.TextXAlignment = Enum.TextXAlignment.Left;
	ao.Name = "Text"
	ao.Parent = ak;
	ao.BackgroundTransparency = 1;
	ao.Position = UDim2.new(0, 10, 1, -24)
	ao.Size = UDim2.new(1, -40, 0, 16)
	ao.ZIndex = 4;
	ao.Font = Enum.Font.Gotham;
	ao.Text = a4;
	ao.TextColor3 = Color3.fromRGB(255, 255, 255)
	ao.TextSize = 12.000;
	ao.RichText = true;
	ao.TextXAlignment = Enum.TextXAlignment.Left;
	b:Create(ak, TweenInfo.new(0.2), {
		Size = UDim2.new(0, TextService:GetTextSize(af, 12, Enum.Font.Gotham, Vector2.new(math.huge, 16)).X + 60, 0, 60)
	}):Play()
	task.wait(0.2)
	ak.ClipsDescendants = false;
	b:Create(al, TweenInfo.new(0.2), {
		Size = UDim2.new(0, 0, 0, 60),
		Position = UDim2.new(1, 0, 0, 0)
	}):Play()
	task.wait(aj)
	ak.ClipsDescendants = true;
	b:Create(al, TweenInfo.new(0.2), {
		Size = UDim2.new(1, 0, 1, 0)
	}):Play()
	task.wait(0.2)
	b:Create(ak, TweenInfo.new(0.2), {
		Size = UDim2.new(0, 0, 0, 60),
		Position = ak.Position + UDim2.new(0, TextService:GetTextSize(af, 12, Enum.Font.Gotham, Vector2.new(math.huge, 16)).X + 70, 0, 0)
	}):Play()
	task.wait(0.2)
	ak:Destroy()
end;
local function ap(aq, ar)
	local as = {
		"k",
		"M",
		"B",
		"T",
		"Qa",
		"Qn",
		"Sx",
		"Sp",
		"Oc",
		"N"
	}
	return math.floor((aq < 1 and aq or math.floor(aq) / 10 ^ (math.log10(aq) - math.log10(aq) % 3)) * 10 ^ (ar or 3)) / 10 ^ (ar or 3) .. (as[math.floor(math.log10(aq) / 3)] or "")
end;
local function at()
	writefile(x .. "/Configs/" .. game.PlaceId .. ".shf", ae(i:JSONEncode(w)))
end;
local function au()
	if isfolder(x) then
		return true
	else
		makefolder(x)
		if isfolder(x) then
			return true
		else
			return false
		end
	end
end;
local function av(aw)
	if not isfolder(aw) then
		makefolder(aw)
	end
end;
local function ax(aw, ag)
	if not isfile(aw) then
		writefile(aw, ag)
	end
end;
local function ay(aw)
	if isfile(aw) then
		return readfile(aw)
	else
		return ""
	end
end;
local function az(aA, aB)
	local aC = Instance.new(aA)
	for a2, aD in pairs(aB) do
		aC[a2] = aD
	end;
	return aC
end;
local function aE(aC, aB)
	for a2, aD in pairs(aB) do
		aC[a2] = aD
	end
end;
local function aF(aC, aG)
	local aH = az("UICorner", {
		Name = "UICorner",
		Parent = aC,
		CornerRadius = G(0, aG or 10)
	})
	return aH
end;
local function aI(...)
	local aJ = b:Create(...)
	aJ:Play()
	return aJ
end;
local function aK(aL)
	if n then
		aL.Parent = n()
	elseif not is_sirhurt_closure and (syn and syn.protect_gui) then
		syn.protect_gui(aL)
		aL.Parent = a
	else
		aL.Parent = a
	end
end;
local function a3(a4)
	a4 = a4:gsub("<br%s*/>", "\n")
	return a4:gsub("<[^<>]->", "")
end;
local function aM(aN, aj)
	coroutine.wrap(u.prompt)("Symphony Hub Says:", aN, aj or 5)
end;
local function aO(aP)
	return true
end;
local Gui = az("ScreenGui", {
	Name = _(),
	ZIndexBehavior = Enum.ZIndexBehavior.Sibling
})
local aR = az("TextButton", {
	Name = "Minimize Toggle",
	Parent = Gui,
	BackgroundColor3 = E(0, 0, 255),
	BackgroundTransparency = 0.15,
	Position = F(0, 0, 0.05, 0),
	Size = F(0, 35, 0, 35),
	Font = Enum.Font.SourceSansBold,
	Text = "SYH",
	TextColor3 = E(255, 255, 255),
	Visible = false,
	TextSize = 20,
	TextWrapped = true,
	Draggable = false
})
local aS = az("CanvasGroup", {
	Name = "Group MainFrame",
	Parent = Gui,
	BackgroundColor3 = E(255, 255, 255),
	BackgroundTransparency = 1,
	GroupColor3 = E(255, 255, 255),
	GroupTransparency = 0,
	Position = F(0.5, 0, 0.5, 0),
	AnchorPoint = H(0.5, 0.5),
	Size = F(0, 500, 0, 300),
	Draggable = true,
	Active = true,
	Visible = false
})
local aT = az("Frame", {
	Name = "MainFrame",
	Parent = aS,
	BackgroundColor3 = E(0, 0, 0),
	BackgroundTransparency = 0.35,
	Position = F(0.5, 0, 0.5, 0),
	AnchorPoint = H(0.5, 0.5),
	Size = F(0, 500, 0, 300)
})
local aU = az("UIScale", {
	Name = "UIScale",
	Parent = aT,
	Scale = 0.8 + y / 2000
})
local aV = az("Frame", {
	Name = "TopFrame",
	Parent = aT,
	Active = true,
	BackgroundColor3 = E(75, 0, 0),
	Position = F(0.5, 0, 0.07, 0),
	AnchorPoint = H(0.5, 0.5),
	Size = F(0, 475, 0, 20)
})
local an = az("TextLabel", {
	Name = "Title",
	Parent = aV,
	BackgroundColor3 = E(25, 25, 25),
	BackgroundTransparency = 1,
	Position = F(0.15, 0, 0.5, 0),
	AnchorPoint = H(0.5, 0.5),
	Size = F(0, 100, 0, 20),
	Font = Enum.Font.GothamBold,
	Text = "Symphony Hub",
	TextSize = 13,
	TextColor3 = E(255, 255, 255),
	TextXAlignment = Enum.TextXAlignment.Left
})
local aW = az("ScrollingFrame", {
	Name = "TabFrame",
	Parent = aT,
	BackgroundColor3 = E(25, 25, 25),
	BackgroundTransparency = 1,
	Position = F(0.1685, 0, 0.55, 0),
	AnchorPoint = H(0.5, 0.5),
	Size = F(0, 150, 0, 250),
	ScrollBarThickness = 0,
	CanvasSize = F(0, 0, 0, 0),
	AutomaticCanvasSize = Enum.AutomaticSize.Y
})
local aX = az("UIListLayout", {
	Name = "UIListLayout",
	Parent = aW,
	HorizontalAlignment = Enum.HorizontalAlignment.Center,
	SortOrder = Enum.SortOrder.LayoutOrder,
	Padding = G(0.05, 2)
})
function M:CreateTab(aY, aZ)
	local a_ = az("Frame", {
		Name = aY,
		Parent = aW,
		BackgroundColor3 = E(15, 15, 220),
		BackgroundTransparency = I and 0 or 0.8,
		Size = F(0, 125, 0, 40)
	})
	local b0 = az("TextButton", {
		Name = "Activator",
		Parent = a_,
		BackgroundTransparency = 1,
		Position = F(0.5, 0, 0.5, 0),
		Size = F(0, 125, 0, 40),
		Text = "",
		AnchorPoint = H(0.5, 0.5)
	})
	local b1 = az("ImageLabel", {
		Name = "Logo",
		Parent = b0,
		BackgroundColor3 = E(255, 255, 255),
		BackgroundTransparency = 1,
		Position = I and F(0.18, 0, 0.5, 0) or F(0.15, 0, 0.5, 0),
		Size = F(0, 30, 0, 30),
		AnchorPoint = H(0.5, 0.5),
		Image = aZ or ""
	})
	local b2 = az("TextLabel", {
		Name = "Indicator",
		Parent = b0,
		BackgroundColor3 = E(255, 255, 255),
		BackgroundTransparency = 1,
		Position = I and F(0.64, 0, 0.5, 0) or F(0.615, 0, 0.5, 0),
		Size = F(0, 70, 0, 30),
		Font = Enum.Font.GothamBold,
		Text = aY,
		TextColor3 = E(255, 255, 255),
		TextSize = 12,
		AnchorPoint = H(0.5, 0.5)
	})
	local b3 = az("CanvasGroup", {
		Name = "Group " .. aY,
		Parent = aT,
		BackgroundColor3 = E(255, 255, 255),
		BackgroundTransparency = 1,
		Position = F(0.655, 0, 0.55, 0),
		AnchorPoint = H(0.5, 0.5),
		Size = F(0, 310, 0, 250),
		GroupColor3 = E(255, 255, 255),
		GroupTransparency = 0
	})
	local b4 = az("ScrollingFrame", {
		Name = "Sleek",
		Parent = b3,
		Visible = I,
		BackgroundColor3 = E(25, 25, 25),
		BackgroundTransparency = 0.5,
		Position = F(0.5, 0, 0.5, 0),
		AnchorPoint = H(0.5, 0.5),
		Size = F(0, 310, 0, 250),
		CanvasSize = F(0, 0, 0, 0),
		AutomaticCanvasSize = Enum.AutomaticSize.Y,
		ScrollBarThickness = 0
	})
	local b5 = az("UIListLayout", {
		Name = "UIListLayout",
		Parent = b4,
		HorizontalAlignment = Enum.HorizontalAlignment.Center,
		SortOrder = Enum.SortOrder.LayoutOrder,
		Padding = G(0.025, 2)
	})
	local b6 = az("TextLabel", {
		Name = "Title",
		Parent = b4,
		BackgroundColor3 = E(10, 10, 200),
		BackgroundTransparency = 1,
		Size = F(0, 300, 0, 35),
		Font = Enum.Font.GothamBold,
		Text = aY .. ":",
		TextSize = 13,
		TextColor3 = E(255, 255, 255),
		TextXAlignment = Enum.TextXAlignment.Left,
		RichText = true
	})
	b0.MouseButton1Click:Connect(function()
		Y("UI_Click")
		if not b4.Visible then
			for a2 = 1, #J do
				local b7 = J[a2]
				aI(b7.Inst, B(0.5), {
					BackgroundTransparency = 0.8
				})
				aI(b7.Inst.Activator.Logo, B(0.5), {
					Position = F(0.165, 0, 0.5, 0)
				})
				aI(b7.Inst.Activator.Indicator, B(0.5), {
					Position = F(0.615, 0, 0.5, 0)
				})
				b7.Holder.Visible = false;
				b7.Holder.Parent.GroupTransparency = 1
			end;
			aI(a_, B(0.5), {
				BackgroundTransparency = 0
			})
			aI(b1, B(0.5), {
				Position = F(0.18, 0, 0.5, 0)
			})
			aI(b2, B(0.5), {
				Position = F(0.64, 0, 0.5, 0)
			})
			aI(b3, B(0.5), {
				GroupTransparency = 0
			})
			b4.Visible = true
		end
	end)
	aF(a_)
	local b8 = {}
	table.insert(J, {
		Name = aY,
		Inst = a_,
		Holder = b4
	})
	I = false;
	function b8:CreateBigTextbox(aY, b9, ba)
		local bb = az("Frame", {
			Name = aY,
			Parent = b4,
			BackgroundColor3 = E(10, 10, 200),
			Size = F(0, 300, 0, 150)
		})
		local bc = az("TextBox", {
			Name = "Input",
			Parent = bb,
			BackgroundColor3 = E(10, 10, 200),
			BackgroundTransparency = 1,
			Position = F(0.5, 0, 0.5, 0),
			Size = F(0, 300, 0, 150),
			AnchorPoint = H(0.5, 0.5),
			Font = Enum.Font.GothamBold,
			PlaceholderText = b9 or "Put your text here!",
			PlaceholderColor3 = E(0, 200, 0),
			ClearTextOnFocus = false,
			MultiLine = true,
			Text = "",
			TextColor3 = E(255, 255, 255),
			TextSize = 10,
			TextWrapped = true,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Top
		})
		ba = ba or function()
		end;
		aF(bb)
		bc.FocusLost:Connect(function()
			ba(bc.Text)
		end)
		task.wait()
	end;
	function b8:CreateProfileMessage(bd, be, bf)
		local bg = az("Frame", {
			Name = be,
			Parent = b4,
			BackgroundColor3 = E(10, 10, 200),
			Size = F(0, 300, 0, 35),
			AutomaticSize = Enum.AutomaticSize.Y
		})
		local bh = az("ImageLabel", {
			Name = "Icon",
			Parent = bg,
			BackgroundColor3 = E(25, 25, 25),
			BackgroundTransparency = 1,
			Position = F(0.025, 0, 0, 8),
			Size = F(0, 25, 0, 25),
			Image = bd or ""
		})
		local bi = az("TextLabel", {
			Name = "Title",
			Parent = bg,
			BackgroundColor3 = E(25, 25, 25),
			BackgroundTransparency = 1,
			Position = F(0.135, 0, 0, 5),
			Size = F(0, 100, 0, 20),
			Font = Enum.Font.GothamBold,
			Text = be or "Title",
			TextSize = 12,
			TextColor3 = E(255, 255, 255),
			TextXAlignment = Enum.TextXAlignment.Left,
			RichText = true
		})
		local bj = az("TextLabel", {
			Name = "Text",
			Parent = bg,
			BackgroundColor3 = E(35, 35, 35),
			BackgroundTransparency = 1,
			Position = F(0.125, 0, 0, 30),
			Size = F(0, 280, 0, 1),
			Font = Enum.Font.GothamBold,
			Text = (bf or "Text") .. "\n",
			TextSize = 11,
			TextColor3 = E(255, 255, 255),
			TextXAlignment = Enum.TextXAlignment.Left,
			AutomaticSize = Enum.AutomaticSize.Y,
			RichText = true
		})
		aF(bg)
		aF(bh, 30)
		task.wait()
	end;
	function b8:CreateToggle(bk, ba)
		local bl = az("Frame", {
			Name = bk,
			Parent = b4,
			BackgroundColor3 = E(10, 10, 200),
			Size = F(0, 300, 0, 35)
		})
		local bm = az("ImageButton", {
			Name = "Activator",
			Parent = bl,
			BackgroundColor3 = E(75, 0, 0),
			BackgroundTransparency = 0,
			Position = F(0.785, 0, 0.5, 0),
			Size = F(0, 55, 0, 15),
			AnchorPoint = H(0.5, 0.5),
			Image = "rbxassetid://3926311105",
			ImageTransparency = 1
		})
		local bn = az("ImageButton", {
			Name = "Sleek",
			Parent = bm,
			BackgroundColor3 = E(255, 0, 0),
			BackgroundTransparency = 0,
			Position = F(0.2, 0, 0.5, 0),
			Size = F(0, 20, 0, 10),
			AnchorPoint = H(0.5, 0.5),
			Image = "rbxassetid://3926311105",
			ImageTransparency = 1
		})
		local bo = az("TextLabel", {
			Name = "Title",
			Parent = bl,
			BackgroundColor3 = E(25, 25, 25),
			BackgroundTransparency = 1,
			Position = F(0.2, 0, 0.5, 0),
			AnchorPoint = H(0.5, 0.5),
			Size = F(0, 100, 0, 20),
			Font = Enum.Font.GothamBold,
			Text = bk or "Toggle",
			TextSize = 10,
			TextColor3 = E(255, 255, 255),
			TextXAlignment = Enum.TextXAlignment.Left,
			RichText = true
		})
		local bp = false;
		local bq = {}
		ba = ba or function()
		end;
		aF(bl)
		aF(bm)
		aF(bn)
		function bq:Toggle()
			bp = not bp;
			if bp then
				b:Create(bn, TweenInfo.new(0.5), {
					BackgroundColor3 = E(0, 255, 0)
				}):Play()
				bn:TweenPosition(F(0.8, 0, 0.5, 0), "Out", "Quad", 0.5, true)
			else
				b:Create(bn, TweenInfo.new(0.5), {
					BackgroundColor3 = E(255, 0, 0)
				}):Play()
				bn:TweenPosition(F(0.2, 0, 0.5, 0), "Out", "Quad", 0.5, true)
			end;
			ba(bp)
			Y("UI_Click")
			w.Toggle[bk] = bp;
			at()
		end;
		function bq:GetStatus()
			return bp
		end;
		bm.MouseButton1Click:Connect(function()
			bq:Toggle()
		end)
		task.wait()
		if w.Toggle[bk] and type(w.Toggle[bk]) == "boolean" then
			bn.BackgroundColor3 = E(0, 255, 0)
			bn.Position = F(0.8, 0, 0.5, 0)
			bp = true;
			pcall(coroutine.wrap(ba), bp)
		else
			w.Toggle[bk] = bp
		end;
		return bq
	end;
	function b8:CreateLabel(br)
		local bs = az("TextLabel", {
			Name = "Label",
			Parent = b4,
			BackgroundColor3 = E(10, 10, 200),
			BackgroundTransparency = 1,
			Size = F(0, 300, 0, 20),
			Font = Enum.Font.GothamBold,
			Text = (br or "Label") .. "\n",
			TextSize = 11,
			TextColor3 = E(255, 255, 255),
			TextXAlignment = Enum.TextXAlignment.Left,
			AutomaticSize = Enum.AutomaticSize.Y,
			RichText = true
		})
		local bt = {}
		function bt:Update(bu)
			bs.Text = (bu or "Label") .. "\n"
		end;
		task.wait()
		return bt
	end;
	function b8:CreateButton(bv, ba)
		local bw = az("ImageButton", {
			Name = bv,
			Parent = b4,
			BackgroundColor3 = E(10, 10, 200),
			Size = F(0, 300, 0, 35)
		})
		local bx = az("TextLabel", {
			Name = "Title",
			Parent = bw,
			BackgroundColor3 = E(25, 25, 25),
			BackgroundTransparency = 1,
			Position = F(0.2, 0, 0.5, 0),
			AnchorPoint = H(0.5, 0.5),
			Size = F(0, 100, 0, 20),
			Font = Enum.Font.GothamBold,
			Text = bv or "Button",
			TextSize = 10,
			TextColor3 = E(255, 255, 255),
			TextXAlignment = Enum.TextXAlignment.Left,
			RichText = true
		})
		local by = az("ImageLabel", {
			Name = "Icon",
			Parent = bw,
			BackgroundColor3 = E(255, 255, 255),
			BackgroundTransparency = 1,
			Position = F(0.8, 0, 0.5, 0),
			AnchorPoint = H(0.5, 0.5),
			Size = F(0, 15, 0, 20),
			Image = "rbxassetid://8284791761",
			ScaleType = Enum.ScaleType.Stretch
		})
		ba = ba or function()
		end;
		aF(bw)
		bw.MouseButton1Click:Connect(function()
			Y("UI_Click")
			ba()
		end)
		task.wait()
	end;
	function b8:CreateTextbox(bz, ba)
		local bA = az("Frame", {
			Name = bz,
			Parent = b4,
			BackgroundColor3 = E(10, 10, 200),
			Size = F(0, 300, 0, 35)
		})
		local bB = az("TextLabel", {
			Name = "Title",
			Parent = bA,
			BackgroundColor3 = E(25, 25, 25),
			BackgroundTransparency = 1,
			Position = F(0.2, 0, 0.5, 0),
			AnchorPoint = H(0.5, 0.5),
			Size = F(0, 100, 0, 20),
			Font = Enum.Font.GothamBold,
			Text = bz or "TextBox",
			TextSize = 10,
			TextColor3 = E(255, 255, 255),
			TextXAlignment = Enum.TextXAlignment.Left,
			RichText = true
		})
		local bC = az("Frame", {
			Name = "Cover",
			Parent = bA,
			BackgroundColor3 = E(200, 10, 10),
			Position = F(0.78, 0, 0.5, 0),
			Size = F(0, 75, 0, 20),
			AnchorPoint = H(0.5, 0.5)
		})
		local bD = az("TextBox", {
			Name = "Input",
			Parent = bC,
			BackgroundColor3 = E(10, 200, 10),
			BackgroundTransparency = 1,
			Position = F(0.5, 0, 0.5, 0),
			AnchorPoint = H(0.5, 0.5),
			Size = F(0, 75, 0, 20),
			ClipsDescendants = true,
			Font = Enum.Font.GothamBold,
			PlaceholderText = "Any text!",
			PlaceholderColor3 = E(255, 255, 255),
			Text = "",
			TextSize = 10,
			TextColor3 = E(255, 255, 255),
			RichText = true
		})
		ba = ba or function()
		end;
		bD.FocusLost:Connect(function()
			ba(bD.Text)
			w.Textbox[bz] = bD.Text;
			at()
		end)
		aF(bA)
		aF(bC)
		task.wait()
		if w.Textbox[bz] and type(w.Textbox[bz]) == "string" then
			bD.Text = w.Textbox[bz]
			ba(bD.Text)
		else
			w.Textbox[bz] = bD.Text
		end
	end;
	function b8:CreateKeybind(KeybindName, bE, ba)
		local bF = az("Frame", {
			Name = KeybindName,
			Parent = b4,
			BackgroundColor3 = E(10, 10, 200),
			Size = F(0, 300, 0, 35)
		})
		local bG = az("TextLabel", {
			Name = "Title",
			Parent = bF,
			BackgroundColor3 = E(25, 25, 25),
			BackgroundTransparency = 1,
			Position = F(0.2, 0, 0.5, 0),
			AnchorPoint = H(0.5, 0.5),
			Size = F(0, 100, 0, 20),
			Font = Enum.Font.GothamBold,
			Text = KeybindName or "Keybind",
			TextSize = 10,
			TextColor3 = E(255, 255, 255),
			TextXAlignment = Enum.TextXAlignment.Left,
			RichText = true
		})
		local bH = az("Frame", {
			Name = "Cover",
			Parent = bF,
			BackgroundColor3 = E(200, 10, 10),
			Position = F(0.785, 0, 0.5, 0),
			Size = F(0, 60, 0, 20),
			AnchorPoint = H(0.5, 0.5)
		})
		local bI = az("TextButton", {
			Name = "Input",
			Parent = bH,
			BackgroundColor3 = E(10, 200, 10),
			BackgroundTransparency = 1,
			Position = F(0.5, 0, 0.5, 0),
			AnchorPoint = H(0.5, 0.5),
			Size = F(0, 100, 0, 20),
			Font = Enum.Font.GothamBold,
			Text = d:GetStringForKeyCode(bE) or "Press any Key!",
			TextSize = 11,
			TextColor3 = E(255, 255, 255),
			RichText = true
		})
		ba = ba or function()
		end;
		aF(bF)
		aF(bH)
		L[#L + 1] = {
			bI,
			ba
		}
		bI.MouseButton1Click:Connect(function()
			Y("UI_Click")
			bI.Text = "Press any key!"
		end)
		task.wait()
		if w.Keybind[KeybindName] and type(w.Keybind[KeybindName]) == "string" then
			bI.Text = w.Keybind[KeybindName]
		else
			w.Keybind[KeybindName] = d:GetStringForKeyCode(bE)
		end
	end;
	function b8:CreateParagraph(bJ, bK)
		local bL = az("Frame", {
			Name = bJ,
			Parent = b4,
			BackgroundColor3 = E(10, 10, 200),
			Size = F(0, 300, 0, 35),
			AutomaticSize = Enum.AutomaticSize.Y
		})
		local bM = az("TextLabel", {
			Name = "Title",
			Parent = bL,
			BackgroundColor3 = E(25, 25, 25),
			BackgroundTransparency = 1,
			Position = F(0.035, 0, 0, 5),
			Size = F(0, 100, 0, 20),
			Font = Enum.Font.GothamBold,
			Text = bJ or "Title",
			TextSize = 12,
			TextColor3 = E(255, 255, 255),
			TextXAlignment = Enum.TextXAlignment.Left,
			RichText = true
		})
		local bN = az("TextLabel", {
			Name = "Fill",
			Parent = bL,
			BackgroundColor3 = E(35, 35, 35),
			BackgroundTransparency = 1,
			Position = F(0.035, 0, 0, 30),
			Size = F(0, 280, 0, 1),
			Font = Enum.Font.GothamBold,
			Text = (bK or "Text") .. "\n",
			TextSize = 11,
			TextWrapped = true,
			TextColor3 = E(255, 255, 255),
			TextXAlignment = Enum.TextXAlignment.Left,
			AutomaticSize = Enum.AutomaticSize.Y,
			RichText = true
		})
		aF(bL)
		local bO = {}
		function bO:Update(bP, bQ)
			bM.Text = bP;
			bN.Text = bQ .. "\n"
		end;
		task.wait()
		return bO
	end;
	function b8:CreateSection(bR)
		local bS = az("Frame", {
			Name = bR,
			Parent = b4,
			BackgroundColor3 = E(10, 10, 200),
			BackgroundTransparency = 1,
			Size = F(0, 300, 0, 35)
		})
		local bT = az("TextLabel", {
			Name = "Title",
			Parent = bS,
			BackgroundColor3 = E(25, 25, 25),
			BackgroundTransparency = 1,
			Position = F(0.0285, 0, 0, 5),
			Size = F(0, 280, 0, 20),
			Font = Enum.Font.GothamBold,
			Text = "「 " .. bR .. " 」" or "「 Section 」",
			TextSize = 10,
			TextColor3 = E(255, 255, 255),
			TextXAlignment = Enum.TextXAlignment.Center,
			RichText = true
		})
		local bU = az("Frame", {
			Name = "Fill",
			Parent = bS,
			BackgroundColor3 = E(10, 225, 10),
			Position = F(0.035, 0, 0, 30),
			Size = F(0, 280, 0, 1)
		})
		aF(bU)
		aF(bU)
		task.wait()
	end;
	function b8:CreateSlider(bV, bW, bX, bE, ba)
		local bY = az("Frame", {
			Name = bV,
			Parent = b4,
			BackgroundColor3 = E(10, 10, 200),
			Size = F(0, 300, 0, 35)
		})
		local bZ = az("TextLabel", {
			Name = "Title",
			Parent = bY,
			BackgroundColor3 = E(25, 25, 25),
			BackgroundTransparency = 1,
			Position = F(0.035, 0, 0, 5),
			Size = F(0, 100, 0, 20),
			Font = Enum.Font.GothamBold,
			Text = bV,
			TextSize = 10,
			TextColor3 = E(255, 255, 255),
			TextXAlignment = Enum.TextXAlignment.Left,
			RichText = true
		})
		local b_ = az("TextLabel", {
			Name = "Value",
			Parent = bY,
			BackgroundColor3 = E(220, 135, 65),
			BackgroundTransparency = 0,
			Position = F(0.75, 0, 0, 5),
			Size = F(0, 20, 0, 15),
			Font = Enum.Font.GothamBold,
			Text = " 0 ",
			TextSize = 13,
			TextColor3 = E(255, 255, 255),
			AutomaticSize = Enum.AutomaticSize.X,
			BorderColor3 = E(10, 255, 10),
			BorderSizePixel = 1,
			RichText = true
		})
		local c0 = az("Frame", {
			Name = "Fill",
			Parent = bY,
			BackgroundColor3 = E(35, 35, 35),
			Position = F(0.035, 0, 0, 30),
			Size = F(0, 280, 0, 1)
		})
		local c1 = az("ImageButton", {
			Name = "Button",
			Parent = c0,
			BackgroundColor3 = E(255, 255, 255),
			AnchorPoint = H(0.5, 0.5),
			Position = F(0.5, 0, 0.5, 0),
			Size = F(0, 10, 0, 10)
		})
		local c2 = {}
		aF(c1, 20)
		aF(bY)
		aF(b_, 15)
		function c2:SetValue(c3)
			c1.Position = F(0, (math.clamp(c3, bW, bX) - bW) / bX * c0.Size.X.Offset, 0.5, 0)
			b_.Text = " " .. c3 .. " "
			ba(c3)
			w.Slider[bV] = c3;
			at()
		end;
		c1.InputBegan:Connect(function(c4)
			if c4.UserInputType == Enum.UserInputType.MouseButton1 or c4.UserInputType == Enum.UserInputType.Touch then
				local c5 = true;
				local c6 = c4.Position.X;
				local c7 = c1.Position.X.Offset;
				local c8 = c1.AbsolutePosition.X - c7;
				local c9;
				local ca;
				c9 = e.Stepped:Connect(function()
					if c5 then
						local cb = math.clamp(z.X - c8 - 3, 0, 280)
						local c3 = math.round(bW + (bX - bW) * c1.Position.X.Offset / (c0.Size.X.Offset - 5))
						if c3 > bX then
							c3 = bX
						end;
						c1.Position = F(0, cb, 0.5, 0)
						b_.Text = " " .. c3 .. " "
						ba(c3)
						w.Slider[bV] = c3
					else
						c9:Disconnect()
					end
				end)
				ca = c4.Changed:Connect(function()
					if c4.UserInputState == Enum.UserInputState.End then
						c5 = false;
						ca:Disconnect()
						c9:Disconnect()
						at()
					end
				end)
			end
		end)
		if bE < bW then
			bE = bW
		elseif bE > bX then
			bE = bX
		end;
		task.wait()
		if w.Slider[bV] and type(tonumber(w.Slider[bV])) == "number" then
			c2:SetValue(tonumber(w.Slider[bV]))
		else
			w.Slider[bV] = bE;
			c2:SetValue(bE)
		end;
		return c2
	end;
	function b8:CreateDropdown(cc, cd, ba)
		local ce = az("ImageButton", {
			Name = cc,
			Parent = b4,
			BackgroundColor3 = E(10, 10, 200),
			Size = F(0, 300, 0, 35),
			AutomaticSize = Enum.AutomaticSize.Y
		})
		local cf = az("TextLabel", {
			Name = "Title",
			Parent = ce,
			BackgroundColor3 = E(25, 25, 25),
			BackgroundTransparency = 1,
			Position = F(0.035, 0, 0, 6),
			Size = F(0, 35, 0, 20),
			Font = Enum.Font.GothamBold,
			Text = cc or "Dropdown",
			TextSize = 10,
			TextColor3 = E(255, 255, 255),
			TextXAlignment = Enum.TextXAlignment.Left,
			AutomaticSize = Enum.AutomaticSize.XY,
			RichText = true
		})
		local cg = az("TextLabel", {
			Name = "Input",
			Parent = ce,
			BackgroundColor3 = E(220, 135, 65),
			BackgroundTransparency = 1,
			Position = F(0.65, 0, 0, 6),
			Size = F(0, 85, 0, 20),
			Font = Enum.Font.GothamBold,
			Text = " > " .. cd[1] .. " ",
			TextSize = 10,
			TextWrapped = true,
			TextColor3 = E(255, 255, 255),
			AutomaticSize = Enum.AutomaticSize.Y,
			BorderColor3 = E(10, 255, 10),
			BorderSizePixel = 1,
			RichText = true
		})
		local ch = az("ScrollingFrame", {
			Name = "Menu",
			Parent = ce,
			BackgroundColor3 = E(35, 35, 35),
			Position = F(0.035, 0, 0, 35),
			Size = F(0, 280, 0, 0),
			Visible = false,
			ScrollBarThickness = 0,
			CanvasSize = F(0, 0, 0, 0),
			AutomaticCanvasSize = Enum.AutomaticSize.Y
		})
		local ci = az("UIListLayout", {
			Name = "UIListLayout",
			Parent = ch,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			SortOrder = Enum.SortOrder.LayoutOrder,
			Padding = G(0.05, 0)
		})
		local Selected = cd[1]
		local bq = false;
		local cj = false;
		local ck = {}
		local b8 = {}
		local cl = 0;
		ba = ba or function()
		end;
		aF(ce)
		aF(ch)
		function ck:Change(cm)
			cl = 0;
			for a2 = 1, #b8 do
				b8[a2]:Destroy()
			end;
			b8 = {}
			for a2 = 1, #cm do
				local cn = az("TextButton", {
					Name = "List " .. a2,
					Parent = ch,
					BackgroundColor3 = E(255, 255, 255),
					BackgroundTransparency = 1,
					Size = F(0, 275, 0, 15),
					Font = Enum.Font.GothamBold,
					Text = cm[a2],
					TextSize = 12,
					TextColor3 = Selected == cm[a2] and E(255, 255, 255) or E(200, 200, 200),
					TextXAlignment = Enum.TextXAlignment.Center,
					RichText = true
				})
				cn.MouseButton1Click:Connect(function()
					if not cj then
						cj = true;
						bq = false;
						Selected = cm[a2]
						cg.Text = " > " .. Selected .. " "
						ba(Selected)
						Y("UI_Click")
						for co = 1, #b8 do
							b8[co].TextColor3 = E(200, 200, 200)
						end;
						cn.TextColor3 = E(255, 255, 255)
						aI(ch, B(0.5), {
							Size = F(0, 280, 0, 0)
						})
						task.wait(0.5)
						cj = false;
						ch.Visible = false;
						w.Dropdown[cc] = Selected;
						at()
					end
				end)
				table.insert(b8, cn)
				cl = cl + 21
			end
		end;
		ce.MouseButton1Click:Connect(function()
			Y("UI_Click")
			if not cj then
				cj = true;
				bq = not bq;
				if bq then
					ch.Visible = true;
					aI(ch, B(0.5), {
						Size = F(0, 280, 0, cl)
					})
					task.wait(0.5)
					cj = false
				else
					aI(ch, B(0.5), {
						Size = F(0, 280, 0, 0)
					})
					task.wait(0.5)
					ch.Visible = false;
					cj = false
				end
			end
		end)
		function ck:Select(a1)
			cg.Text = " > " .. a1 .. " "
			Selected = a1;
			ba(a1)
		end;
		ck:Change(cd)
		task.wait()
		if w.Dropdown[cc] and type(w.Dropdown[cc]) == "string" then
			cg.Text = " > " .. w.Dropdown[cc] .. " "
			Selected = w.Dropdown[cc]
			ba(w.Dropdown[cc])
		else
			w.Dropdown[cc] = cd[1]
		end;
		return ck
	end;
	function b8:CreatePlayerDropdown(cc, ba)
		local ce = az("ImageButton", {
			Name = cc,
			Parent = b4,
			BackgroundColor3 = E(10, 10, 200),
			Size = F(0, 300, 0, 35),
			AutomaticSize = Enum.AutomaticSize.Y
		})
		local cf = az("TextLabel", {
			Name = "Title",
			Parent = ce,
			BackgroundColor3 = E(25, 25, 25),
			BackgroundTransparency = 1,
			Position = F(0.035, 0, 0, 6),
			Size = F(0, 35, 0, 20),
			Font = Enum.Font.GothamBold,
			Text = cc or "Dropdown",
			TextSize = 10,
			TextColor3 = E(255, 255, 255),
			TextXAlignment = Enum.TextXAlignment.Left,
			AutomaticSize = Enum.AutomaticSize.XY,
			RichText = true
		})
		local cg = az("TextLabel", {
			Name = "Input",
			Parent = ce,
			BackgroundColor3 = E(220, 135, 65),
			BackgroundTransparency = 1,
			Position = F(0.65, 0, 0, 6),
			Size = F(0, 85, 0, 20),
			Font = Enum.Font.GothamBold,
			Text = " > " .. l .. " ",
			TextSize = 10,
			TextWrapped = true,
			TextColor3 = E(255, 255, 255),
			AutomaticSize = Enum.AutomaticSize.Y,
			BorderColor3 = E(10, 255, 10),
			BorderSizePixel = 1,
			RichText = true
		})
		local ch = az("ScrollingFrame", {
			Name = "Menu",
			Parent = ce,
			BackgroundColor3 = E(35, 35, 35),
			Position = F(0.035, 0, 0, 35),
			Size = F(0, 280, 0, 0),
			Visible = false,
			ScrollBarThickness = 0,
			CanvasSize = F(0, 0, 0, 0),
			AutomaticCanvasSize = Enum.AutomaticSize.Y
		})
		local ci = az("UIListLayout", {
			Name = "UIListLayout",
			Parent = ch,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			SortOrder = Enum.SortOrder.LayoutOrder,
			Padding = G(0.05, 2)
		})
		local bq = false;
		local cj = false;
		local ck = {}
		local b8 = {}
		local cl = 0;
		ba = ba or function()
		end;
		aF(ce)
		aF(ch)
		function ck:Change(cm)
			cl = 0;
			for a2 = 1, #b8 do
				b8[a2]:Destroy()
			end;
			b8 = {}
			for a2 = 1, #cm do
				local cn = az("TextButton", {
					Name = "List " .. a2,
					Parent = ch,
					BackgroundColor3 = E(255, 255, 255),
					BackgroundTransparency = 1,
					Size = F(0, 275, 0, 15),
					Font = Enum.Font.GothamBold,
					Text = cm[a2].Name,
					TextSize = 12,
					TextColor3 = Selected == cm[a2] and E(255, 255, 255) or E(200, 200, 200),
					TextXAlignment = Enum.TextXAlignment.Center
				})
				cn.MouseButton1Click:Connect(function()
					if not cj then
						cj = true;
						bq = false;
						cg.Text = " > " .. cm[a2].Name .. " "
						ba(cm[a2])
						Y("UI_Click")
						for co = 1, #b8 do
							b8[co].TextColor3 = E(200, 200, 200)
						end;
						cn.TextColor3 = E(255, 255, 255)
						aI(ch, B(0.5), {
							Size = F(0, 280, 0, 0)
						})
						task.wait(0.5)
						cj = false;
						ch.Visible = false
					end
				end)
				table.insert(b8, cn)
				cl = cl + 21
			end
		end;
		ce.MouseButton1Click:Connect(function()
			Y("UI_Click")
			if not cj then
				cj = true;
				bq = not bq;
				if bq then
					ch.Visible = true;
					aI(ch, B(0.5), {
						Size = F(0, 280, 0, cl)
					})
					task.wait(0.5)
					cj = false
				else
					aI(ch, B(0.5), {
						Size = F(0, 280, 0, 0)
					})
					task.wait(0.5)
					ch.Visible = false;
					cj = false
				end
			end
		end)
		ck:Change(j:GetPlayers())
		K[#K + 1] = ck;
		task.wait()
	end;
	return b8
end;
function M:Init()
	local cp = az("Frame", {
		Name = "Intro",
		Parent = Gui,
		BackgroundColor3 = E(0, 0, 0),
		Position = F(0.5, 0, -0.5, 0),
		Size = F(0, 400, 0, 250),
		AnchorPoint = H(0.5, 0.5)
	})
	local cq = az("ImageLabel", {
		Name = "Logo",
		Parent = cp,
		BackgroundColor3 = E(255, 255, 255),
		BackgroundTransparency = 1,
		Position = F(0.5, 0, 0.35, 0),
		Size = F(0, 175, 0, 175),
		Image = "rbxassetid://17415725290",
		ImageTransparency = 1,
		AnchorPoint = H(0.5, 0.5)
	})
	local cr = az("TextLabel", {
		Name = "Text",
		Parent = cp,
		BackgroundColor3 = E(255, 255, 255),
		BackgroundTransparency = 1,
		Position = F(0.5, 0, 0.9, 0),
		Size = F(0, 385, 0, 20),
		Font = Enum.Font.Code,
		Text = "Processing UNC <font color=\"rgb(255, 0, 0)\">(0/100)</font>",
		TextSize = 14,
		TextColor3 = E(255, 255, 255),
		TextTransparency = 1,
		TextWrapped = true,
		TextYAlignment = Enum.TextYAlignment.Top,
		RichText = true,
		AnchorPoint = H(0.5, 0.5)
	})
	local cs = az("TextLabel", {
		Name = "Copyright",
		Parent = cp,
		BackgroundColor3 = E(255, 255, 255),
		BackgroundTransparency = 1,
		Position = F(0.15, 0, 0.85, 0),
		Size = F(0, 75, 0, 20),
		Font = Enum.Font.Gotham,
		Text = "© Symphony Hub",
		TextSize = 14,
		TextColor3 = E(255, 255, 255),
		TextTransparency = 1,
		AnchorPoint = H(0.5, 0.5)
	})
	local ct = az("BlurEffect", {
		Name = "SH Blur Effect",
		Parent = workspace.CurrentCamera,
		Size = 18
	})
	v:Authorize("76e26f63-e422-420f-9e6a-8cb58e56b8c8")
	aF(cp)
	aK(Gui)
	aU.Parent = cp;
	task.wait(1)
	aI(cp, B(0.75, Enum.EasingStyle.Elastic, Enum.EasingDirection.InOut), {
		Position = F(0.5, 0, 0.5, 0)
	})
	task.wait(1)
	aI(cq, B(0.5), {
		ImageTransparency = 0.25,
		Position = F(0.5, 0, 0.45, 0),
		Size = F(0, 225, 0, 225)
	})
	aI(cs, B(0.5), {
		TextTransparency = 0,
		Position = F(0.15, 0, 0.95, 0)
	})
	aI(cr, B(0.5), {
		TextTransparency = 0,
		Position = F(0.5, 0, 0.8, 0)
	})
	for a2 = 1, #s do
		task.wait(0.1)
		if s[a2] then
			local cu = a2 / #s * 100;
			if cu ~= 100 then
				cr.Text = "Processing UNC <font color=\"rgb(255, 0, 0)\">(" .. math.floor(cu) .. "/100)</font>"
			else
				cr.Text = "Processing UNC <font color=\"rgb(0, 255, 0)\">(" .. math.floor(cu) .. "/100)</font>"
			end
		else
			cr.Text = "UNC Process Failed!\nPlease switch your executor that are capable."
			return
		end
	end;
	a7()
	task.wait()
	local cv = 7;
	local cu = 0 / cv * 100;
	cr.Text = "Processing Data Resources <font color=\"rgb(255, 0, 0)\">(" .. math.floor(cu) .. "/100)</font>"
	local cw = 0;
	repeat
		task.wait()
		local cx, cy = pcall(function()
			if j:GetNameFromUserIdAsync(m) == l then
				local cz = i:JSONDecode(a8("https://symphonyhub.onrender.com/script/checkpass/" .. m .. "/22739804", "POST"))
				V = cz.owned
			else
				cr.Text = "Data Process Failed!\nBypassing Premium can leads into a permanent ban."
				return
			end
		end)
		if cy then
			cw = cw + 1;
			if cw >= 50 then
				V = false
			end
		end
	until V ~= nil;
	task.wait()
	cu = 1 / cv * 100;
	cr.Text = "Processing Data Resources <font color=\"rgb(255, 0, 0)\">(" .. math.floor(cu) .. "/100)</font>"
	cw = 0;
	repeat
		task.wait(0.15)
		local cx, cy = pcall(function()
			U = f:GetProductInfo(game.PlaceId).Name
		end)
		if cy then
			cw = cw + 1;
			if cw >= 50 then
				U = "Not Found"
			end
		end
	until U ~= nil;
	task.wait()
	cu = 2 / cv * 100;
	cr.Text = "Processing Data Resources <font color=\"rgb(255, 0, 0)\">(" .. math.floor(cu) .. "/100)</font>"
	local cA;
	cw = 0;
	repeat
		task.wait()
		local cx, cy = pcall(function()
			if j:GetNameFromUserIdAsync(m) == l then
				local cB = v and v:GetStore(tostring(m), "/bans")
				if cB then
					cr.Text = "You have been Permanently Banned in <font color=\"rgb(0, 255, 0)\">Symphony Hub</font>\nReason: " .. cB;
					return
				else
					cA = true
				end
			else
				cr.Text = "Data Process Failed!\nBypassing Premium can leads into a permanent ban."
				return
			end
		end)
		if cy then
			cw = cw + 1;
			if cw >= 50 then
				cr.Text = "Data Process Failed!\nFailed to find your HWID."
				return
			end
		end
	until cA;
	task.wait()
	cu = 3 / cv * 100;
	cr.Text = "Processing Data Resources <font color=\"rgb(255, 0, 0)\">(" .. math.floor(cu) .. "/100)</font>"
	cw = 0;
	repeat
		task.wait()
		local cx, cy = pcall(function()
			if j:GetNameFromUserIdAsync(m) == l then
				S = v and v:GetStore(tostring(m), "/contentcreator") or false
			else
				cr.Text = "Data Process Failed!\nBypassing Premium can leads into a permanent ban."
				return
			end
		end)
		if cy then
			cw = cw + 1;
			if cw >= 50 then
				cr.Text = "Data Process Failed!\nFailed to find your HWID."
				return
			end
		end
	until S ~= nil;
	task.wait()
	cu = 4 / cv * 100;
	cr.Text = "Processing Data Resources <font color=\"rgb(255, 0, 0)\">(" .. math.floor(cu) .. "/100)</font>"
	cw = 0;
	repeat
		task.wait()
		local cx, cy = pcall(function()
			if j:GetNameFromUserIdAsync(m) == l then
				local cC = v and v:GetStore("contentcreator", "/")
				if cC then
					local cD = {}
					for a2, aD in pairs(cC) do
						cD[#cD + 1] = tonumber(a2)
					end;
					T = c:GetUserInfosByUserIdsAsync(cD)
				else
					T = {}
				end
			else
				cr.Text = "Data Process Failed!\nBypassing Premium can leads into a permanent ban."
				return
			end
		end)
		if cy then
			cw = cw + 1;
			if cw >= 50 then
				cr.Text = "Data Process Failed!\nFailed to find your HWID."
				return
			end
		end
	until T ~= nil;
	task.wait()
	cu = 5 / cv * 100;
	cr.Text = "Processing Data Resources <font color=\"rgb(255, 0, 0)\">(" .. math.floor(cu) .. "/100)</font>"
	task.wait(0.5)
	if au() then
		cu = 6 / cv * 100;
		cr.Text = "Processing Data Resources <font color=\"rgb(255, 0, 0)\">(" .. math.floor(cu) .. "/100)</font>"
		a7()
	else
		cr.Text = "Data Process Failed!\nYour executor occured an unexpected errors."
		return
	end;
	task.wait()
	local cE = false;
	cw = 0;
	repeat
		task.wait()
		local cx, cy = pcall(function()
			if j:GetNameFromUserIdAsync(m) == l then
				cE = o({
					Url = "https://discord.com/api/webhooks/1242307963364835349/_Cm1vW6WTKZS2xMxQORljItcm08QSRQzWLDw3-Zc8PFjz_PAo5JotODPuSnMB0MlSfu6",
					Method = "POST",
					Headers = {
						["Content-Type"] = "application/json"
					},
					Body = i:JSONEncode({
						content = "",
						embeds = {
							{
								title = "Software API",
								description = "Game: **" .. U .. "**\nPlace Id: **" .. game.PlaceId .. "**\nServer Id: **" .. game.JobId .. "**\nExecutor: **" .. identifyexecutor() .. "**\nPremium: **" .. (V and "Yes" or "No") .. "**\nContent Creator: **" .. (S and "Yes" or "No") .. "**",
								type = "rich",
								color = 255
							}
						},
						avatar_url = i:JSONDecode(a5("https://thumbnails.roblox.com/v1/users/avatar-headshot?userIds=" .. m .. "&size=420x420&format=Png&isCircular=false")).data[1].imageUrl,
						username = l
					})
				}).Body
			else
				cr.Text = "Data Process Failed!\nBypassing Premium can leads into a permanent ban."
				return
			end
		end)
		if cy then
			cw = cw + 1;
			if cw >= 50 then
				cr.Text = "Data Process Failed!\nThere is a problem in our API endpoint, the owner will\nfix this soon."
				return
			end
		end
	until cE;
	cu = 7 / cv * 100;
	cr.Text = "Processing Data Resources <font color=\"rgb(0, 255, 0)\">(" .. math.floor(cu) .. "/100)</font>"

	task.wait(0.5)
	cr.Text = "Initializing Gui..."
	task.wait(2)
	aI(cq, B(0.5), {
		ImageTransparency = 1,
		BackgroundTransparency = 1,
		Position = F(0.5, 0, 0.35, 0),
		Size = F(0, 175, 0, 175)
	})
	aI(cs, B(0.5), {
		TextTransparency = 1,
		Position = F(0.15, 0, 0.85, 0)
	})
	aI(cr, B(0.5), {
		TextTransparency = 1,
		Position = F(0.5, 0, 0.9, 0)
	})
	task.wait(0.5)
	aI(cp, B(0.75, Enum.EasingStyle.Elastic, Enum.EasingDirection.InOut), {
		Position = F(0.5, 0, -0.5, 0)
	})
	task.wait(1)
	aU.Parent = aS;
	ct:Destroy()
	cp:Destroy()
	a7()
	for a2 = 1, #O do
		task.spawn(O[a2], Gui, U, v)
	end;
	for a2, aD in pairs(N) do
		if game.PlaceId == a2 then
			aF(aT)
			aF(aV)
			aF(aW)
			aF(aR, 20)
			aS.Visible = true;
			aR.Visible = true;
			an.Text = "Symphony Hub - " .. U;
			aR.MouseButton1Click:Connect(function()
				Y("UI_Click")
				if not R then
					R = true;
					if aS.Visible then
						aI(aS, B(0.5), {
							GroupTransparency = 1
						}).Completed:Wait()
						aS.Visible = false
					else
						aS.Visible = true;
						aI(aS, B(0.5), {
							GroupTransparency = 0
						}).Completed:Wait()
					end;
					R = false
				end
			end)
			j.PlayerAdded:Connect(function()
				for a2 = 1, #K do
					K[a2]:Change(j:GetPlayers())
				end
			end)
			j.PlayerRemoving:Connect(function()
				for a2 = 1, #K do
					K[a2]:Change(j:GetPlayers())
				end
			end)
			d.InputBegan:Connect(function(aP, cL)
				if aP.KeyCode ~= Enum.KeyCode.Unknown and not cL then
					if aP.KeyCode == Enum.KeyCode.M then
						Y("UI_Click")
						if not R then
							R = true;
							if aS.Visible then
								aI(aS, B(0.5), {
									GroupTransparency = 1
								}).Completed:Wait()
								aS.Visible = false
							else
								aS.Visible = true;
								aI(aS, B(0.5), {
									GroupTransparency = 0
								}).Completed:Wait()
							end;
							R = false
						end
					else
						for a2 = 1, #L do
							if L[a2][1].Text == "Press any key!" then
								L[a2][1].Text = d:GetStringForKeyCode(aP.KeyCode)
								w.Keybind[KeybindName] = d:GetStringForKeyCode(aP.KeyCode)
								at()
							else
								if L[a2][1].Text == d:GetStringForKeyCode(aP.KeyCode) then
									L[a2][2]()
								end
							end
						end
					end
				end
			end)
			W = au()
			if W then
				av(x .. "/Configs")
				av(x .. "/Modules")
				av(x .. "/SFX")
				av(x .. "/Images")
				av(x .. "/Logs")
				ax(x .. "/Configs/" .. game.PlaceId .. ".shf", ae(i:JSONEncode(w)))
				ax(x .. "/SFX/notice.txt", "in here you could edit any sound by just deleting the original one and put the new one then rename it with the original file name.")
				ax(x .. "/Modules/debug.lua", "if not debug then\n\terror(\"Unsupported Exploit!\")\nend\n\nreturn debug -- Crazy ahh just quit skidding lmao.")
				ax(x .. "/Configs/notice.txt", "Hello User!\n\nIf you want to edit your Configs sorry but all of those files are encrypted :( but you can Direct Message the owner for Config Decompile, if you get no response in time that means the owner is busy nor sleeping.\n\n-- Symphony Hub Team")
				local cM;
				local cx, cy = pcall(function()
					cM = i:JSONDecode(ah(readfile(x .. "/Configs/" .. game.PlaceId .. ".shf")))
				end)
				if cx then
					w = cM
				else
					at()
				end;
                pcall(function()
				local cN = i:JSONDecode(a5(t .. "/properties.json"))
				for co = 1, #cN do
					ax(x .. cN[co], a5(t .. cN[co]))
				end;
                end)
				local cO = {
					"January",
					"February",
					"March",
					"April",
					"May",
					"June",
					"July",
					"August",
					"September",
					"October",
					"November",
					"December"
				}
				local cP = os.date("*t")
				local cQ = string.format("%s_%s_%s.log", cP.month, cP.day, cP.year)
				ax(x .. "/Logs/" .. cQ, "[SH] Log created since " .. cO[cP.month] .. " " .. cP.day .. ", " .. cP.year .. " at Time " .. cP.hour .. ":" .. cP.min .. ":" .. cP.sec .. " using " .. identifyexecutor() .. "!")
				if isfile(x .. "/Logs/" .. cQ) then
					writefile(x .. "/Logs/" .. cQ, readfile(x .. "/Logs/" .. cQ) .. "\n[SH] Script Executed at Time " .. cP.hour .. ":" .. cP.min .. ":" .. cP.sec .. "!")
				end;
				local cR = isfolder(x .. "/SFX") and listfiles(x .. "/SFX") or {}
				for co = 1, #cR do
					local cS = cR[co]:gsub("\\", "/")
					local cT = cS:split("/")
					cT = cT[#cT]
					if string.sub(cT, string.len(cT) - 3, string.len(cT)) == ".mp3" then
						local cU = string.sub(cT, 1, string.len(cT) - 4)
						for cV = 1, 3 do
							Q[cU] = p(cS)
						end
					end
				end
			else
				aM("Symphony Hub are currently unstable due to " .. (type(identifyexecutor) == "function" and identifyexecutor() or "your executor") .. "'s environment function errors, therefore we cannot save/load your configs for now.", 10)
			end;
			a7()
			local cW = M:CreateTab("Main", "rbxassetid://13669672334")
			local cX = i:JSONDecode(game:HttpGet("https://github.com/justasimplewebsite/test/raw/refs/heads/main/changelogs.json"))
			if v then
				local cY = math.floor(h.Network.ServerStatsItem["Data Ping"]:GetValue())
				local cZ = v:GetStore("scriptlogins", "/")
				cZ = cZ and tonumber(cZ) and tonumber(cZ) + 1 or 1;
				v:SetStore("scriptlogins", cZ, "/")
				local d1 = cW:CreateParagraph("Script Info", "Premium: " .. (V and "<font color=\"rgb(0, 255, 0)\">Yes</font>" or "<font color=\"rgb(255, 0, 0)\">No</font>") .. "\nPing: " .. (cY >= 30 and "<font color=\"rgb(0, 255, 0)\">" or "<font color=\"rgb(255, 0, 0)\">") .. cY .. "</font>\n\nTotal Global User Logins: <font color=\"rgb(0, 255, 0)\">" .. cZ .. "</font>")
				e.RenderStepped:Connect(function()
					cY = math.floor(h.Network.ServerStatsItem["Data Ping"]:GetValue())
					d1:Update("Script Info", "Premium: " .. (V and "<font color=\"rgb(0, 255, 0)\">Yes</font>" or "<font color=\"rgb(255, 0, 0)\">No</font>") .. "\nPing: " .. (cY >= 30 and "<font color=\"rgb(0, 255, 0)\">" or "<font color=\"rgb(255, 0, 0)\">") .. cY .. "</font>\n\nTotal Global User Logins: <font color=\"rgb(0, 255, 0)\">" .. cZ .. "</font>")
				end)
			end;
			for co = 1, #cX do
				local d2 = "Changelog - <font color=\"rgb(0, 225, 0)\">" .. cX[co].version .. "</font>:"
				for d3, aD in pairs(cX[co].description) do
					d2 = d2 .. "\n\n<font color=\"rgb(255, 0, 0)\">[+]</font> <font color=\"rgb(0, 200, 0)\">" .. d3 .. "</font>"
					for cV = 1, #aD do
						d2 = d2 .. "\n    <font color=\"rgb(0, 255, 0)\">(+)</font> " .. aD[cV]
					end
				end;
				cW:CreateParagraph("Patch Note", d2)
			end;
			for co = 1, #P do
				task.spawn(P[co], l, m, V, S, T, aa(m))
			end;
			task.wait(1)
			coroutine.wrap(function()
				while true do
					task.wait(45)
					a7()
				end
			end)()
			aR.Draggable = true;
			task.spawn(aD)
			task.wait(3)
			at()
			return
		end
	end;
	aM("Game not supported.")
end;
function M:Compile(a4)
	return ae(a4)
end;
function M:Decompile(a4)
	return ah(a4)
end;
function M:OnGameInvoke(d4, ba)
	N[d4 or 1] = ba or function()
	end
end;
function M:OnPreload(ba)
	O[#O + 1] = ba or function()
	end
end;
function M:OnLoad(ba)
	P[#P + 1] = ba or function()
	end
end;
return M
