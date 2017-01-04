// Lesson 05 - Computed Property

// Getters and Setters baby!

import Foundation

// Find an area of a square

struct Square {
    var side: Double
//    var area: Double { // gettable only
//        return side * side
//    }
    
    var area: Double { // Settable as well as gettable
        get {
            return side * side
        }
        
//        set {
//            side = sqrt(newValue)
//        }
        
        // Or
        set (newArea) {
            side = sqrt(newArea)
        }
    }
}

var twoByTwo = Square(side: 90)
twoByTwo.area // 8100

// Or
twoByTwo.side = 20
twoByTwo.area // 400

// Computed Properties
twoByTwo.area = 36
twoByTwo.side // 6



