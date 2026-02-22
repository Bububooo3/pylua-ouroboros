self = "lu?a|py?thon"

for char in self.split('|')[1]:
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
