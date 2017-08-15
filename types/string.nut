local a = "I'm a wonderful string\n";
local b = @"I'm a verbatim string\n";
local c = "I'm a \"string\"\n";

print("a = " + a + "\n");
print("b = " + b + "\n");
print("c = " + c + "\n");

local multiline = @"
        this is a multiline string
        it will ""embed"" all the new line characters
"

print("multiline = " + multiline + "\n");
