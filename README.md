# Vanilla Constraints
<p align="center">
  <a href="https://swift.org">
        <img src="https://img.shields.io/badge/Swift-4.0-orange.svg" />
  </a>
</p>

#
**Vanilla Constraint** is a simplified and chainable *AutoLayout NSLayoutConstraints* for iOS written in Swift.

- A tiny wrapper around NSLayoutConstraints.
- Short syntax for creating layout constraints.
- Chainable way of describing NSLayoutConstraints.
- Constraints are active by default.
- No need to set `translatesAutoresizingMaskIntoConstraints = false`
- No external dependencies.

## 🛠 Installation

### CocoaPods

To integrate TinyNetworking into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
pod 'VanillaConstraints'
```

Then, run the following command:

```bash
$ pod install
```
### Carthage 
*Comming Soon*

### Swift Package Manager 
*Comming Soon*

### Manually

If you prefer not to use any of the dependency managers, you can integrate VanillaConstraints into your project manually, by downloading the source code and placing the files on your project directory.

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
```

with this:
```swift
view.add(to: anotherView)
  .top(to: \.topAnchor, constant: 16.0, priority: .defaultLow)
  .trailing(to: \.trailingAnchor, relation: .equalOrLess, priority: defaultHigh)
  .bottom(to: \.bottomAnchor, constant: 16.0)
  .leading(to: \.leadingAnchor, relation: .equalOrGreater, constant: 8.0)
```





