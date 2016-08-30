# SwiftFactory
A Tiny library for resolving dependency.

For manage dependency in your app:

Using is very easy:

```
var factory = Factory()

factory.register(type: Drawable.self) {
  resolver in
  return BasicCanvas()
}

Container.register(resolver: factory)

/// resolve your dependency     
let drawable = Container.resolve() as Drawable
```
