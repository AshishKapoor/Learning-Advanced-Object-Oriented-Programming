// Advanced OOP - Override

import Foundation

class Dog {
    var numberOfLegs: Int

    // when you initialize not pre defined
    init(enterNumberOfLegs: Int) {
        self.numberOfLegs = enterNumberOfLegs
    }
    
    
    // when you initialize pre defined value
    init() {
        self.numberOfLegs = 4
    }
    func sayHi() -> Void {
        print("Hi, I am a mammal")
    }
    
}

// Base Class object
var myDog = Dog()
myDog.numberOfLegs
myDog.sayHi()

// Inherited class object
var anotherDog = Dog()
anotherDog.numberOfLegs
anotherDog.sayHi()

// For example

class Human: Dog {
    override func sayHi() {
        print("I am a human now!")
    }
    
    // To override the init method of the base class.
    override init() {
        super.init() // self.numberOfLegs = 4
        numberOfLegs = 2
    }
    
    // To override the init method with parameters
    override init(enterNumberOfLegs: Int) {
        super.init(enterNumberOfLegs: 10) // BECAUSE OF THIS! :D may put enterNumberOfLegs here.
    }
}


var human = Human()
human.sayHi()
human.numberOfLegs

var ashish = Human(enterNumberOfLegs: 40) // self.numberOfLegs = 10 no matter what I put here
ashish.numberOfLegs
