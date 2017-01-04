// Lesson04 - Convenience Init

import Foundation

class Human {
    var name: String
    var age: Int
    
    init(name: String, age: Int) { // Designated Init
        self.name = name
        self.age = age
    }
    
    convenience init(name: String) { // It always refers to the designated Init
        self.init(name: name, age: 20)
    }
    
    convenience init() {
        self.init(name: "Human", age: 10)
    }
}

var ashish = Human(name: "Ashish Kapoor", age: 28)
ashish.name
ashish.age

var abhideep = Human(name: "Abhideep Mallick")
abhideep.age

var robot = Human()
robot.age
robot.name

// For Example //

class Indian: Human {
    var homeTown: String
    
    init(name: String, age: Int, homeTown: String) {
        self.homeTown = homeTown
        super.init(name: name, age: age)
    }
    
    override init(name: String, age: Int) {
        self.homeTown = "West Delhi"
        super.init(name: name, age: age)
    }
}

var indian = Indian(name: "Human", age: 12, homeTown: "Delhi")
indian.age
indian.name
indian.homeTown


var delhiWaala = Indian(name: "Delhite", age: 12)
delhiWaala.age
delhiWaala.name
delhiWaala.homeTown

var mumbaiWaala = Indian()
mumbaiWaala.name
mumbaiWaala.age
mumbaiWaala.homeTown
