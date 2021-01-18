require("luci.util")

mp = Map("uugamebooster", translate("UU Game Booster"))
mp.description = translate("A Paid Game Acceleration service")
mp:section(SimpleSection).template  = "uugamebooster/uugamebooster_status"

s = mp:section(TypedSection, "uugamebooster")
s.anonymous=true
s.addremove=false

o = s:option(Flag, "enabled", translate("Enable"))
o.default = 0
o.optional = false

return mp
