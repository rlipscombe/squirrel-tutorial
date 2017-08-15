# String

> Strings are an immutable sequence of characters to modify a string is necessary to create a new one.

-- *[Squirrel Reference Manual: Values and Data types: String](http://www.squirrel-lang.org/doc/squirrel3.html#d0e473)* [sic]

## `types/string.nut`

[//]: # (sq types/string.nut)

```
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
```

```
$ sq types/string.nut
a = I'm a wonderful string

b = I'm a verbatim string\n
c = I'm a "string"

multiline = 
        this is a multiline string
        it will "embed" all the new line characters

```

[//]: # (END)

In the verbatim string `b`, the `\n` isn't treated as an escape sequence.

If you want a `"` character, it should be escaped with `\`, as shown in `c`.

In the `multiline` verbatim string, the line breaks from the source file are included in the value, as are the whitespace characters used for indentation. You can use `""` to include a double quote in a verbatim string.

## Escape sequences

Squirrel supports a subset of C's escape sequences. The only ones you're likely to care about are `\n`, `\"`, `\'`, `\0` and `\xHHHH`.

## Embedded nulls

Squirrel strings can have embedded nulls, but `print` treats them as the end of the string:

```
sq>print("a\0b\0c");
a
sq>print("a\0b\0c".len());
5
```
