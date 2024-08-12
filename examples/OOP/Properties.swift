// * Properties
// Properties associate values with a particular class, structure, or enumeration

// * Lazy Stored Properties
// A lazy stored property is a property whose initial value is not calculated until the first time it is used

struct Car {
  lazy var brand: String = getCarBrand()
}

func getCarBrand() -> String {
  print("Getting car model...")
  return "Toyota"
}

var car: Car = Car()
print(car.brand) // Getting car model, Toyota

// TIP: The getCarBrand function is called only once when the brand property is accessed for the first time

// * Computed Properties
// Computed properties provide a getter and an optional setter to retrieve and set other properties and values indirectly

struct Line {
  var width: Int

  var center: Int {
    get {
      return width / 2
    }
    set {
      // TIP: newValue is a default name for the new value that is being set
      width = newValue * 2
    }
  }
}

var line: Line = Line(width: 10)
print(line.center) // 5, width / 2

line.center = 10
print(line.width) // 20, newValue * 2
print(line.center) // 10, width / 2

// * Property Observers
// Property observers observe and respond to changes in a property’s value

struct StepCounter {
  var totalSteps: Int = 0 {
    willSet(newSteps) {
      print("About to set totalSteps to \(newSteps)")
    }
    didSet {
      if totalSteps > oldValue {
        print("Added \(totalSteps - oldValue) steps")
      }
    }
  }
}

var stepCounter: StepCounter = StepCounter()
stepCounter.totalSteps = 10 // About to set totalSteps to 10, Added 10 steps

// TIP: willSet is called just before the value is stored, didSet is called immediately after the new value is stored

// * Type Properties
// Type properties are properties that belong to the type itself

struct Parrot {
  static var name: String = "Coco"
}

print(Parrot.name) // Coco

// * Private Properties
// Use private keyword to restrict access to the property within the same source file

struct Turtle {
  private var name: String = "Speedy"

  func getName() -> String { return name }
}

var turtle: Turtle = Turtle()
print(turtle.getName()) // Speedy

// ! Error: 'name' is inaccessible due to 'private' protection level:
// print(turtle.name)
