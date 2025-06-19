-- سكربت معدل بدون Pastebin | Made for Majed

-- مكتبة واجهة بسيطة (بديلة عن المكتبة الخارجية)
local Library = {}
Library.CreateLib = function(title, theme)
    print("Library Loaded: " .. title .. " Theme: " .. theme)
    local lib = {}
    function lib:NewTab(name)
        print("New Tab: " .. name)
        local tab = {}
        function tab:NewSection(secName)
            print("Section: " .. secName)
            local section = {}
            function section:NewToggle(name, desc, callback)
                print("Toggle created: " .. name .. " - " .. desc)
                callback(false)
            end
            function section:NewLabel(text)
                print("Label: " .. text)
            end
            return section
        end
        return tab
    end
    return lib
end

-- واجهة
local Window = Library.CreateLib("Grow a Garden", "DarkTheme")

local Tab1 = Window:NewTab("الزراعة")
local Section1 = Tab1:NewSection("أوامر تلقائية")

Section1:NewToggle("زراعة تلقائية", "يقوم بزرع النباتات تلقائياً", function(state)
    _G.AutoFarm = state
    while _G.AutoFarm do
        wait()
        game:GetService("ReplicatedStorage").RemoteEvents.Plant:FireServer()
    end
end)

Section1:NewToggle("جمع تلقائي", "يجمع المحاصيل بشكل تلقائي", function(state)
    _G.AutoCollect = state
    while _G.AutoCollect do
        wait()
        game:GetService("ReplicatedStorage").RemoteEvents.Collect:FireServer()
    end
end)

Section1:NewToggle("بيع تلقائي", "يبيع المنتجات تلقائياً", function(state)
    _G.AutoSell = state
    while _G.AutoSell do
        wait()
        game:GetService("ReplicatedStorage").RemoteEvents.Sell:FireServer()
    end
end)

local Tab2 = Window:NewTab("معلومات")
local Section2 = Tab2:NewSection("السكربت")
Section2:NewLabel("تم إنشاء السكربت خصيصاً لـ Majed")
Section2:NewLabel("حقوق التعديل محفوظة لـ خبير مجد")
