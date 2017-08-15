# A Squirrel Tutorial

At Electric Imp, our users program their devices and agents with the [Squirrel](http://squirrel-lang.org/) programming language.

I only know just enough squirrel to be dangerous, so I thought it might be a useful learning exercise to write a squirrel language tutorial.

Note that the Electric Imp platform uses a slightly modified form of Squirrel 3.0.4, so that's the version I'll be concentrating on.

## Contents

- [Compiling Squirrel](compiling-squirrel.md)
- [Hello World](hello-world.md)
- [Variables](variables.md)
- [Types](types.md)

## Resources

- The Squirrel website provides [documentation](http://squirrel-lang.org/#documentation).
- Official squirrel [source code](https://github.com/albertodemichelis/squirrel) on GitHub.
- The Electric Imp dev center provides a [Squirrel Language Reference](https://electricimp.com/docs/squirrel/).

## License

Both this tutorial and the squirrel language are MIT-licensed. This means that I feel justified in directly lifting some of the examples from the original documentation.

## Embedding Squirrel Output

This tutorial supports automatically running squirrel code and embedding the output in the markdown files.

The "snippet markers" look like this:

    [//]: # (sq path/to.nut)
    [//]: # (END)
