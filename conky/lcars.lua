---@diagnostic disable: lowercase-global
---@diagnostic disable: undefined-global

function conky_three_zero_pad(value)
  return string.format("%03i", tonumber(conky_parse(value)));
end

function conky_pad_uptime(uptime)
  uptime = conky_parse(uptime)
  _, _, hours, minutes, seconds = string.find(uptime, "(%d+)h (%d+)m (%d+)s")
  _, _, days = string.find(uptime, "(%d+)d")
  if days == nil then days = 0 end
  return string.format("%03i  %03i  %03i", tonumber(days) * 24 + tonumber(hours), tonumber(minutes), tonumber(seconds))
end

function conky_kernel_padded(kernel)
  _, _, major, minor, rev = string.find(conky_parse(kernel), "(%d+)%.(%d+)%.(%d+)")
  return string.format("%03i  %03i  %03i", tonumber(major), tonumber(minor), tonumber(rev))
end

function conky_sound_description(pa_sink_desc)
  shorthand_map = {
    ["Speakers"] = "SPK",
    ["Headphones"] = "JCK",
  }
  return shorthand_map[conky_parse(pa_sink_desc)] or "404"
end

function conky_battery_status(battery_string)
  status_map = {
    ["Charged"] = "CHD",
    ["Charging"] = "CHG",
    ["Discharging"] = "DIS"
  }
  return status_map[conky_parse(battery_string)] or "HUH"
end
