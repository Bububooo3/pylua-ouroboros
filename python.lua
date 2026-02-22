local self = "lu?a|py?thon"

local put = io.write
local real = ""
local cango = 0

for section in self:gmatch("([^|]*)") do
  if cango == 0 then cango = 1 -- we want python! we want python!
  else
    for char in section:gmatch(".") do
      local b = char:byte();
  
    if b == 63 then
      put(self)
    elseif b == "\n" then
      put("\\n")
    elseif b == '"' then
      put('\\\"')
    elseif b == "\\" then
      put('\\\\')
    else
      put(char)
    end
  end
  end
end
