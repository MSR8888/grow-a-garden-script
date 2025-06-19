-- سكربت معدّل | Script made For the expert Majed --

local Library = loadstring(game:HttpGet("https://pastebin.com/raw/edJT9EGX"))()
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

-- يمكنك تعديل الواجهة أو إضافة خصائص جديدة حسب رغبتك
