# Hello World

Now that we've [compiled the squirrel language](compiling-squirrel.md), we can see if it works:

```
$ ./SQUIRREL3/bin/sq
Squirrel 3.0.7 stable Copyright (C) 2003-2015 Alberto Demichelis (64 bits)

sq>
```

The `sq` executable provides a simple REPL, so we can try the language out by typing squirrel statements at the `sq>` prompt:

```
sq>print("Hello Squirrel!\n");
Hello Squirrel!

sq>
```

## Squirrel Source Files

Squirrel source files use the `.nut` extension, so create a new file, `hello.nut` containing the following.

```
print("Hello Squirrel!\n");
```

You can run it with `./SQUIRREL3/bin/sq hello.nut`:

```
$ sq hello.nut
Hello Squirrel!
```

## Compiling Squirrel

Compile your squirrel source file to bytecode:

```
$ sq -o hello.cnut -c hello.nut
```

Note that the `-o hello.cnut` must come _before_ the `-c` option.

Run the bytecode:

```
$ sq hello.cnut
Hello Squirrel!
```
