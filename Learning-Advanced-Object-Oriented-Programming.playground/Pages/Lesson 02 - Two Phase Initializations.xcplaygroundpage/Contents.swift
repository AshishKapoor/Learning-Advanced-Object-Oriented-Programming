// Currency Conversions
// Different Units

import Foundation

struct NuclearRocket {
    var meters: Double
    var liters: Double
    
    // Initialization for Indian Scientists
    init(meters: Double, liters: Double) {
        self.meters = meters
        self.liters = liters
    }
    
    // Init for Australian Scientists
    init(ft: Double, gallons: Double) {
        let convertedMeters = ft / 3.28
        let convertedLiters = gallons / 3.70
        
        self.init(meters: convertedMeters, liters: convertedLiters)
    }
}

// Indian Scientist
var rocket = NuclearRocket(meters: 30, liters: 10)
rocket.liters
rocket.meters

// Australian Scientist
var aussyRocket = NuclearRocket(ft: 300, gallons: 700)
aussyRocket.liters
aussyRocket.meters