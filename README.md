# Swift

A repository for Swift code snippets, features, and techniques

## Installation

Follow the instructions [here](https://www.swift.org/install/macos/) to install Swift on your machine

## Usage

To run a Swift file, use the following command:

```bash
swift <filename>.swift
```

### Automatically restart Swift files

I personally simply use the npm package `nodemon` to automatically restart the Swift file when it is saved. To do this, install `nodemon` globally:

```bash
npm install -g nodemon
```

> Note: You need to have [Node.js](https://nodejs.org/en) installed on your machine to use `nodemon`

Then, run the following command:

```bash
nodemon --exec swift <filename>.swift
```

> Note: You could assign an alias in your `.bashrc` or `.zshrc` file to make this easier to run:
> `alias swiftmon='nodemon --exec swift'`

### Using Swift REPL

You can also use the Swift REPL to run Swift code. To do this, simply run the following command:

```bash
swift repl
```

To exit the REPL, type `:exit` or `:q` and press `Enter`

## Table of Contents

- [Hello World](./examples/HelloWorld.swift)

## Resources

- [Swift.org](https://www.swift.org/)
- [Getting Started with Swift](https://www.swift.org/getting-started/)
- [SwiftUI](https://www.swift.org/getting-started/swiftui/)
- [Swift Playgrounds](https://www.apple.com/swift/playgrounds/)
