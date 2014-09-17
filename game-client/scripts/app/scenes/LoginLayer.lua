local LoginLayer = class("LoginLayer", function()
    return display.newNode("LoginLayer")
end)

function LoginLayer:ctor()
	local back = display.newSprite("HelloWorld.png")
	back:setPosition(ccp(display.cx ,display.cy ))
	self:addChild(back)
	local nameEditBox = ui.newEditBox(
		{
			image    = "green_edit.png",
			listener = self.onEdit,
			size     = CCSize(200,40)
		}
	)
	nameEditBox:setInputFlag(1)
	nameEditBox:setPosition(ccp(display.cx ,display.cy ))
	self:addChild(nameEditBox)

	local passEditBox = ui.newEditBox(
		{
			image    = "green_edit.png",
			listener = self.onEdit,
			size     = CCSize(200,40)
		}
	)
	passEditBox:setInputFlag(1)
	passEditBox:setPosition(ccp(display.cx ,display.cy-50 ))
	self:addChild(passEditBox)
end


function LoginLayer:onEdit(event, editbox)
	 if event == "began" then
	-- 开始输入
	elseif event == "changed" then
	-- 输入框内容发生变化
	elseif event == "ended" then
	-- 输入结束
	elseif event == "return" then
	-- 从输入框返回
	end
end



return LoginLayer