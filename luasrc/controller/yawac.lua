--[[
LuCI - Yet Another Wifi Auto Connect

Copyright 2017 Prachya Saechua <blackb1rd@riseup.net>

Licensed under the WTFPL License, Version 2.0 (the "License");
]]--

module("luci.controller.yawac", package.seeall)

function index()
	if not luci.fs.access("/etc/config/yawac") then
		return
	end
	require("luci.i18n")
	luci.i18n.loadc("yawac")

	local page = entry({"admin", "services", "yawac"}, cbi("yawac"), luci.i18n.translate("yawac"))
	page.i18n = "yawac"
	page.dependent = true
end
