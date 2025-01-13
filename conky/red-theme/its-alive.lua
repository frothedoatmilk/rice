---@diagnostic disable: lowercase-global
---@diagnostic disable: undefined-global

NAME = "Louis";

function conky_greeting()
  local greeting;
  local hour = tonumber(os.date("%H"));
  if hour < 12 then
    greeting = "Good morning";
  elseif hour < 18 then
    greeting = "Good afternoon";
  else
    greeting = "Good evening";
  end

  return string.format("%s, %s.", greeting, NAME);
end

function join(array, separator)
  result = ""
  for _, entry in ipairs(array) do
    result = result..entry..separator;
  end
  return string.sub(result, 1, string.len(result) - string.len(separator));
end

function conky_cpu_line(cpu_count)
  lines = {};
  for i = 1, tonumber(cpu_count), 1 do
    load = tonumber(conky_parse(string.format("${cpu cpu%i}", i)));
    color = (load > 50) and "color1" or "color0"
    lines[i] = string.format("${%s}%3.0f${color0}", color, load)
  end
  return join(lines, " / ")
end
