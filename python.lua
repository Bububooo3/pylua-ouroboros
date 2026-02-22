local self = [[local self = \[\[?\]\]\n
\n
local put = io.write\n
local real = ""\n
local cango = 0\n
local i = 0\n
\n
for section in self:gmatch("([^\\124]*)") do\n
  if cango <1 then cango = cango + 1\n
  else\n
      for char in section:gmatch(".") do\n
        i = i + 1\n
        local b = char:byte();\n
  \n
        if b == 63 then\n
          for d in self:gmatch(".") do\n
            local c = d:byte();\n
            if c == "\\n" then\n
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
        if (char ~= "\\") and (section:sub(i-1,i-1)~="\\") or (char == "\"") then\n
          real = real..(char)\n
        end\n
      end\n
    end\n
  end\n
end\n
\n
print(real)\n|self = \"\"\"?\"\"\"

for char in self.split(chr(124))[0]:
    if ord(char) == 63:
        for c in self:
            if c == '\n':
                print("\\n", end='')
            elif c == '"':
                print("\\\"", end='')
            elif c == '\\':
                print("\\\\", end='')
            elif c == '\\124':
                print("\\124", end='')
            elif c == '[':
                print('\\[', end='')
            else:
                print(f"{c}", end='')
    else:
        if char == '[': char = '\\['
        print(char, end='')]]

local put = io.write
local real = ""
local cango = 0
local i = 0

for section in self:gmatch("([^\124]*)") do
  if cango <1 then cango = cango + 1
  else
      for char in section:gmatch(".") do
        i = i + 1
        local b = char:byte();
  
        if b == 63 then
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
        if (char ~= "\\") and (section:sub(i-1,i-1)~="\\") or (char == "\"") then
          real = real..(char)
        end
      end
    end
  end
end

print(real)
