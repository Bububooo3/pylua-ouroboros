local self = \[\[\[local self = \[\[\[?]]\n\n\n\nlocal put = io.write\n\nlocal real = \"\"\n\nlocal cango = 0\n\nlocal i = 0\n\n\n\nfor section in self:gmatch(\"(\[^\\124]*)\") do\n\n  if cango <1 then cango = cango + 1\n\n  else\n\n      for char in section:gmatch(\".\") do\n\n        i = i + 1\n\n        local b = char:byte();\n\n  \n\n        if b == 63 then\n\n          for d in self:gmatch(\".\") do\n\n            local c = d:byte();\n\n            if c == \"\\n\" then\n\n              real = real..(\"\\n\")\n\n            elseif c == '\"' then\n\n              real = real..('\\\"')\n\n            elseif c == \"\\\" then\n\n              real = real..('\\\\')\n\n            else\n\n              real = real..(d)\n\n            end\n\n          end\n\n      else\n\n        if (char ~= \"\\\") and (section:sub(i-1,i-1)~=\"\\\") or (char == \"\"\") then\n\n          real = real..(char)\n\n        end\n\n      end\n\n    end\n\n  end\n\nend\n\n\n\nprint(real)\n|self = \"\"\"?\"\"\"\n\nfor char in self.split(chr(124))\[0]:\n    if ord(char) == 63:\n        for c in self:\n            if c == '\n':\n                print(\"\\n\", end='')\n            elif c == '\"':\n                print(\"\\\"\", end='')\n            elif c == '\\':\n                print(\"\\\\\", end='')\n            elif c == '\\124':\n                print(\"\\124\", end='')\n            elif c == '\[':\n                print('\\\[', end='')\n            else:\n                print(f\"{c}\", end='')\n    else:\n        if char == '\[': char = '\\\['\n        print(char, end='')]]



local put = io.write

local real = ""

local cango = 0

local i = 0



for section in self:gmatch("(\[^\124]*)") do

  if cango <1 then cango = cango + 1

  else

      for char in section:gmatch(".") do

        i = i + 1

        local b = char:byte();

  

        if b == 63 then

          for d in self:gmatch(".") do

            local c = d:byte();

            if c == "\n" then

              real = real..("\n")

            elseif c == '"' then

              real = real..('\"')

            elseif c == "\" then

              real = real..('\\')

            else

              real = real..(d)

            end

          end

      else

        if (char ~= "\") and (section:sub(i-1,i-1)~="\") or (char == """) then

          real = real..(char)

        end

      end

    end

  end

end



print(real)


** Process exited - Return Code: 0 **
