local self = "lu?a|py?thon"

local put = io.write
local real = ""
local cango = 0

for section in self:gmatch("([^|]*)") do
  if cango == 0 then cango = 1
  else
      for char in section:gmatch(".") do
        local b = char:byte();
  
        if b == 63 then
          for d in self:gmatch(".") do
            local c = d:byte();
            if c == "\n" then
              put("\\n")
            elseif c == '"' then
              put('\\\"')
            elseif c == "\\" then
              put('\\\\')
            else
              put(d)
            end
        end
      else
        put(char)
      end
    end
  end
end
