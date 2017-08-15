# Variables

Squirrel is a dynamically typed language. Variables do not have a type; they refer to a value which does.

That is:

```
local x = 42;
x = "Hello World";
```

...is valid. The variable `x` doesn't need to be declared with a type. In the example, `x` refers to an integer value or a string value.

## Aside: REPL problems

If you want to try this out in the REPL, you'll run into a problem:

```
sq>local i = 42;

sq>i = 43;

AN ERROR HAS OCCURED [the index 'i' does not exist]
```

This is because each `sq>` prompt represents a separate scope, and `i` stops existing after the first statement is executed.

To get around this, either use a squirrel source file, or use the `<-` (new slot) operator:

```
sq>x <- 42;

sq>print("x = " + x + " (" + typeof(x) + ")\n");
x = 42 (integer)

sq>x <- "Hello";

sq>print("x = " + x + " (" + typeof(x) + ")\n");
x = Hello (string)
```

We'll get into "slots" later.
