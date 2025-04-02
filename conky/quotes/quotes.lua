---@diagnostic disable: lowercase-global
---@diagnostic disable: undefined-global

function conky_three_pad(value)
  return string.format("%3i", tonumber(conky_parse(value)));
end
