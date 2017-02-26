--[[
LuCI - Yet Another Wifi Auto Connect

Copyright 2017 Prachya Saechua <blackb1rd@riseup.net>

Licensed under the WTFPL License, Version 2.0 (the "License");
]]--

m = Map("yawac","YAWAC")

s = m:section(TypedSection, "yawac", translate("settings"))
s.addremove = true
s.anonymous = true
s.template = "cbi/tblsection"

en = s:option(Flag, "disabled", translate("enable"))
en.enabled = "0"
en.disabled = "1"
en.rmempty = false

s:option(Value, "SSID", translate("ssid"))
s:option(Value, "password", translate("password"))
s:option(Value, "piority", translate("piority"))

return m
