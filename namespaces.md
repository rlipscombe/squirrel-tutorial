# Namespaces

Squirrel doesn't have namespaces, but you can fake it with nested classes.

Unfortunately, the following doesn't work:

```
class Foo {
    class Bar {     // expected 'IDENTIFIER'
        static function Baz() {
            return 42;
        }
    }
}
```

You have to use the following:

```
class Foo {
    Bar = class {
        static function Baz() {
            return 42;
        }
    }
}
```

Remember that you can't just assign to objects in the root table, so the following won't work:

```
Foo = class {   // ERROR: the index 'Foo' does not exist
    Bar = class {
        static function Baz() {
            return 42;
        }
    }
}

print(Foo.Bar.Baz());
```
