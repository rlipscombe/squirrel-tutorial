# Compiling Squirrel

To run simple squirrel programs, you'll need the `sq` executable, which you'll need to compile from source.

## Download

Download the source code from [SourceForge](https://sourceforge.net/projects/squirrel/). The 3.0.4 version doesn't appear to be available, so use the latest 3.0.x version, which is currently [version 3.0.7](https://downloads.sourceforge.net/project/squirrel/squirrel3/squirrel%203.0.7%20stable/squirrel_3_0_7_stable.tar.gz).

```
$ wget 'https://downloads.sourceforge.net/project/squirrel/squirrel3/squirrel%203.0.7%20stable/squirrel_3_0_7_stable.tar.gz'

$ tar xfz squirrel_3_0_7_stable.tar.gz
```

This extracts to the `SQUIRREL3` directory.

## Compile

```
make -C SQUIRREL3
```

This will result in the `SQUIRREL3/bin/sq` executable. To save typing in future, add this directory to your `PATH` environment variable:

```
export PATH=$PATH:$(pwd)/SQUIRREL3/bin
```

*Note: This works on Linux and macOS. I've not tried Windows.*

Next: [Hello World](hello-world.md).