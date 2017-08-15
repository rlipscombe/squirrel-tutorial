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
