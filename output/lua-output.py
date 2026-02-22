self = """local self = \[\[?\]\]\n
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
        print(char, end='')"""

for char in self.split(chr(124))[0]:
    if ord(char) == 63:
        for c in self:
            if c == '':
                print("", end='')
            elif c == '"':
                print(""", end='')
            elif c == ':
                print("", end='')
            elif c == '24':
                print("24", end='')
            elif c == '[':
                print('', end='')
            else:
                print(f"{c}", end='')
    else:
        if char == '[': char = ''
        print(char, end='')
