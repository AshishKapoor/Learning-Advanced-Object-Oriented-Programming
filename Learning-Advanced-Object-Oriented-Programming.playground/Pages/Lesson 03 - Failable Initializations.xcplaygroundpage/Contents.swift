// Lesson 03 - Failable Initializations

import Foundation

struct Animal {
    let species: String
    
    init?(enterSpecies: String) {
        species = enterSpecies
        if enterSpecies.isEmpty { return nil }
    }
}

// If you enter "", then no init --> nil

var animal = Animal(enterSpecies: "Red Ant")

var animalNil = Animal(enterSpecies: "") // nil

// if init(?) --> Return optional object

animal?.species // Called optional chaining

// So! How to use this property? --> unwrap the object

if let animalBetterWay = animal {
    print(animalBetterWay.species)
}

// Second Part: Throwing Error

// If too many legs --> Error
// If No leg --> Error

enum InsectError: Error {
    case tooManyLegs // more than 10 legs
    case noLegs
}

struct Insect {
    let numberOfLegs: Int
    
    init(enterNumber: Int) throws {
        if enterNumber <= 0 {
            throw InsectError.noLegs
        }
        if enterNumber > 10 {
            throw InsectError.tooManyLegs
        }
        
        self.numberOfLegs = enterNumber
    }
}

// Let's handle the error

do {
    try Insect(enterNumber: 7)
    print("It's an insect buddy Relax!")
} catch InsectError.tooManyLegs {
    print("Ewww")
} catch InsectError.noLegs {
    print("EWWWWWWWWW")
}

// Try? 
try? Insect(enterNumber: -2) // wont run 

// Try!
//Insect(enterNumber: 12345) // if error thrown, automatically crash

