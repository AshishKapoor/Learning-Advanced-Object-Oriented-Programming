// Lesson 06 - Property observer

import Foundation

struct AsianStudents {
    var gpa: Double {
        willSet (newGPA) {
            print("Your GPA is about to change to \(newGPA)")
        } didSet {
            print("Your GPA Changed to \(gpa)")
            if gpa > oldValue {
                print("Your GPA has increased by \(gpa - oldValue)")
            } else {
                print("Your GPA has decreased by \(gpa - oldValue)")
            }
        }
    }
}

var ashish = AsianStudents(gpa: 1.2)
ashish.gpa = 1.0

ashish.gpa = 2.1
