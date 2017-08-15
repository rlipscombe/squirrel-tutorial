# Float

A float represents a 32-bit floating point number.

```
local a = 1.0;
local b = 0.234;
```

Squirrel uses the C++ compiler's underlying `float` type. For any system we care about, that means IEEE-754 semantics:

## `types/float.nut`

[//]: # (sq types/float.nut)

```
local a = 1.0;
local b = 0.234;

print("a = " + a + "\n");
print("b = " + b + "\n");

// see https://randomascii.wordpress.com/2012/02/25/comparing-floating-point-numbers-2012-edition/
local f = 0.1;
local sum = 0.0;

for (local i = 0; i < 10; ++i) {
    sum += f;
}
print("sum = " + sum + "\n");
local product = f * 10.0;
print("product = " + product + "\n");

if (sum == product) {
    print("Equal\n");
}
else {
    print("Not equal!!!\n");
}

local plusinf = 1.0 / 0.0;
local minusinf = -1.0 / 0.0;
local nan = plusinf + minusinf;

print("plusinf = " + plusinf + "\n");
print("minusinf = " + minusinf + "\n");
print("nan = " + nan + "\n");
```

```
$ sq types/float.nut
a = 1
b = 0.234
sum = 1
product = 1
Not equal!!!
plusinf = inf
minusinf = -inf
nan = -nan
```

[//]: # (END)

### 64-bit floats?

Squirrel can be compiled with support for 64-bit floating point numbers -- it uses `double` (8 bytes) instead of `float` (4 bytes).

To detect this at runtime, examine the `_floatsize_` variable:

```
sq>print(_floatsize_);
4
```
