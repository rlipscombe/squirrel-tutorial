# Integer

An integer represents a 32-bit (or 64-bit, if supported) signed integer. Squirrel supports C-style integer literals.

## `types/integer.nut`:

[//]: # (sq types/integer.nut)

```
local a = 123;      // decimal
local b = 0x0012;   // hexadecimal
local c = 075;      // octal
local d = 'w';      // character code

print("a = " + a + "\n");
print("b = " + b + "\n");
print("c = " + c + "\n");
print("d = " + d + "\n");
```

```
$ sq types/integer.nut
a = 123
b = 18
c = 61
d = 119
```

[//]: # (END)

### 32-bit or 64-bit integers?

Look in the version banner to find out whether 64-bit integer support is enabled:

```
$ sq -h
Squirrel 3.0.7 stable Copyright (C) 2003-2015 Alberto Demichelis (64 bits)
```

Note the `(64 bits)` at the end.

Or, at runtime:

```
sq>print(_intsize_);
8
```

The `_intsize_` value is in bytes, so `8` means 64-bit integers; `4` means 32-bit integers.
