local self = [[local self = \[\[?\]\]\n
\n
local put = io.write\n
local real = ""\n
local cango = 0\n
\n
for section in self:gmatch("([^\124]*)") do\n
  if cango < 2 then cango = cango + 1\n
  else\n
      for char in section:gmatch(".") do\n
        local b = char:byte();\n
  \n
        if b == 63 then\n
          for d in self:gmatch(".") do\n
            local c = d:byte();\n
            if c == "\n" then\n
              real = real..("\\n")\n
            elseif c == '"' then\n
              real = real..('\\\"')\n
            elseif c == "\\" then\n
              real = real..('\\\\')\n
            else\n
              real = real..(d)\n
            end\n
        end\n
      else\n
        real = real..(char)\n
      end\n
    end\n
  end\n
end\n
\n
print(real)\n|self = "?"\n
\n
for char in self.split(chr(124))[1]:\n
    if ord(char) == 63:\n
        for c in self:\n
            if c == '\n':\n
                print("\\n", end='')\n
            elif c == '"':\n
                print("\\\"", end='')\n
            elif c == '\\':\n
                print("\\\\", end='')\n
            else:\n
                print(f"{c}", end='')\n
    else:\n
        print(char, end='')\n]]

local put = io.write
local real = ""
local cango = 0

for section in self:gmatch("([^\124]*)") do
  if cango <1 then cango = cango + 1
  else
      for char in section:gmatch(".") do
        local b = char:byte();
  
        if b == 63 then
          for subsect in self:gmatch("([^\124]*)") do
            
          for d in self:gmatch(".") do
            local c = d:byte();
            if c == "\n" then
              real = real..("\\n")
            elseif c == '"' then
              real = real..('\\\"')
            elseif c == "\\" then
              real = real..('\\\\')
            else
              real = real..(d)
            end
        end
      else
        real = real..(char)
      end
    end
  end
end

print(real)
