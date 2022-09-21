# 🍦 VanillaConstraints
<p align="left">
  <a href="https://github.com/jdisho/VanillaConstraints">
        <img src="https://img.shields.io/cocoapods/p/VanillaConstraints.svg?style=flat" />
  </a>
  <a href="https://swift.org">
        <img src="https://img.shields.io/badge/Swift-5.0-orange.svg" />
  </a>
  <a href="https://cocoapods.org/pods/VanillaConstraints">
        <img src="https://img.shields.io/cocoapods/v/VanillaConstraints.svg" />
  </a>
  <a href="">
        <img src="https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat" />
  </a>
  <a href="https://twitter.com/_disho">
        <img src="https://img.shields.io/badge/twitter-@_disho-blue.svg?style=flat" alt="Twitter: @_disho" />
  </a>
 
</p>

- A simplified and chainable *AutoLayout* for iOS written in Swift.
- A thin wrapper around `NSLayoutConstraints`.
- Short syntax for creating layout constraints.
- Chainable way of describing `NSLayoutConstraint`s.
- Using `KeyPaths`.
- Constraints are active by default.
- No need to set `translatesAutoresizingMaskIntoConstraints = false`.
- No external dependencies.

## 🛠 Installation

### CocoaPods

To integrate VanillaConstraints into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
pod 'VanillaConstraints'
```

Then, run the following command:

```bash
$ pod install
```

### Carthage 
```
github "jdisho/VanillaConstraints" ~> 1.0
```

Then, run the following command:

```bash
$ carthage update
```

### Swift Package Manager

Add the following dependency to your **Package.swift** file:

```swift
.package(url: "https://github.com/jdisho/VanillaConstraints", from: "1.0.4")
```

### Manually

If you prefer not to use any of the dependency managers, you can integrate `VanillaConstraints` into your project manually, by downloading the source code and placing the files on your project directory.

## 👨🏻‍💻 Usage
**tl;dr**

It allows you to replace this: 

```swift
anotherView.addSubview(view)

view.translatesAutoresizingMaskIntoConstraints = false

let top = view.topAnchor.constraint(equalTo: anotherView.topAnchor, constant: 16.0)
top.priority = .defaultLow
top.isActive = true

let trailing = view.trailingAnchor.constraint(lessThanOrEqualTo: anotherView.trailingAnchor)
trailing.priority = .defaultHigh
trailing.isActive = true

let bottom = view.bottomAnchor.constraint(equalTo: anotherView.bottomAnchor, constant: 16.0)
bottom.priority = .required
bottom.isActive = true

let leading = view.leadingAnchor.constraint(greaterThanOrEqualTo: anotherView.leadingAnchor, constant: 8.0)
leading.isActive = true
```

with this:
```swift
view.add(to: anotherView)
  .top(to: \.topAnchor, constant: 16.0, priority: .defaultLow)
  .trailing(to: \.trailingAnchor, relation: .equalOrLess, priority: .defaultHigh)
  .bottom(to: \.bottomAnchor, constant: 16.0)
  .leading(to: \.leadingAnchor, relation: .equalOrGreater, constant: 8.0)
```

**⚠️ If the anchor's view is not specified, it is constrained where it is added.**

### Edges

Pin a view to the edges of another view:

```swift
anotherView.addSubview(view)

view.translatesAutoresizingMaskIntoConstraints = false

NSLayoutConstraint.activate([
    view.topAnchor.constraint(equalTo: anotherView.topAnchor),
    view.leadingAnchor.constraint(equalTo: anotherView.leadingAnchor),
    view.bottomAnchor.constraint(equalTo: anotherView.bottomAnchor),
    view.trailingAnchor.constraint(equalTo: anotherView.trailingAnchor)
])
```

with `VanillaConstraints`:

```swift
view.add(to: anotherView).pinToEdges()
```

or with equal margins:

```swift
view.add(to: anotherView).pinToEdges(withMargins: 16.0)
```

or pinned to some other view different from where it is added:

```swift
view.add(to: anotherView).pinToEdges(of: someOtherView)
```

or pinned to safeAreaLayoutGuide egdes:

```swift
view.add(to: anotherView).pinToEdges(safeConstrainable: true) // false by default
```

### Center

Center a view to another view:

```swift
anotherView.addSubview(view)

view.translatesAutoresizingMaskIntoConstraints = false

NSLayoutConstraint.activate([
    view.centerXAnchor.constraint(equalTo: anotherView.centerXAnchor)
    view.centerYAnchor.constraint(equalTo: anotherView.centerYAnchor)
])
```

with `VanillaConstraints`:

```swift
view.add(to: anotherView).center()
```

or centered in some other view different from where it is added:

```swift
view.add(to: anotherView).center(in: someOtherView)
```

### Size

Set the size of the view:

```swift
anotherView.addSubview(view)

view.translatesAutoresizingMaskIntoConstraints = false

NSLayoutConstraint.activate([
    view.widthAnchor.constraint(equalToConstant: 50.0)
    view.heightAnchor.constraint(equalToConstant: 50.0)
])
```

with `VanillaConstraints`:

```swift
view.add(to: anotherView).size(CGSize(width: 50.0, height: 50))
```

or with other relations: 

```swift
view.add(to: anotherView).size(CGSize(width: 50.0, height: 50), relation: .equalOrLess) // .equal by default 
```

### Supported attributes

- `top`
- `bottom`
- `left`
- `right`
- `leading`
- `trailing`
- `centerX`
- `centerY`
- `width`
- `height`
 
## 👤 Author
This tiny library is created with ❤️ by [Joan Disho](https://twitter.com/_disho)

## 📃 License
VanillaConstraints is released under an MIT license. See [License.md](https://github.com/jdisho/VanillaConstraints/blob/master/LICENSE) for more information.







