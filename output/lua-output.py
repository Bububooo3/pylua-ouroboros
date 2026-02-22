self = """self = local self = \[\[?\]\]\n
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
print(real)\n|self = \"\"\"?\"\"\"\n
\n
for char in self.split(chr(124))[1]:
    if ord(char) == 63:
        for c in self:
            if c == '\n':
                print("\\n", end='')
            elif c == '"':
                print("\\\"", end='')
            elif c == '\\':
                print("\\\\", end='')
            else:
                print(f"{c}", end='')
    else:
        print(char, end='')\n"""

for char in self.split(chr(124))[1]:
    if ord(char) == 63:
        for c in self:
            if c == '\n':
                print("\\n", end='')
            elif c == '"':
                print("\\\"", end='')
            elif c == '\\':
                print("\\\\", end='')
            else:
                print(f"{c}", end='')
    else:
        print(char, end='')
