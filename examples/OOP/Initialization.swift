// * Initialization
// Initialization is the process of preparing an instance of a class, structure, or enumeration for use. This process involves setting an initial value for each stored property on that instance and performing any other setup or initialization that is required before the new instance is ready for use.

struct User {
  // * Default Initializers
  var name: String = "John"
}

var user: User = User(name: "Jane")
var userB: User = User()
print(user.name) // Jane
print(userB.name) // John

// ---

// * Custom Initializers
class User2 {
  var name: String

  // TIP: Custom initializers are defined using the init keyword
  init(name: String) {
    self.name = name
  }
}

var user2: User2 = User2(name: "John")
print(user2.name) // John

// ---

// * Required Initializers

class User3 {
  var name: String

  // TIP: The required keyword is used to indicate that all subclasses must implement the initializer
  required init(name: String) {
    self.name = name
  }
}

class Admin: User3 {
  var role: String = "Admin"

  required init(name: String) {
    // TIP: The super keyword is used to call the superclass initializer
    super.init(name: name)
  }
}

var admin: Admin = Admin(name: "John")
print(admin.name) // John

// ---

// * Failable Initializers
// Failable initializers return an optional instance of the class, structure, or enumeration type

class User4 {
  var name: String

  init?(name: String) {
    if name.isEmpty { return nil }
    self.name = name
  }
}

var user4: User4? = User4(name: "")
print(user4) // nil
