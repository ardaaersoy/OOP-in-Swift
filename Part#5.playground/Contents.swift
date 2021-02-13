//
//  Part#5.playground
//  Object Oriented Programming
//
//  Created by Arda Ersoy on 13.02.2021.
//  Copyright © 2021 Arda Ersoy. All rights reserved.
//

import UIKit

// MARK: - Protocols
// --> Protocols provide a blueprint for Methods, properties and other requirements functionality. It is just described as a methods or properties skeleton instead of implementation. Methods and properties implementation can further be done by defining classes, functions and enumerations. Conformance of a protocol is defined as the methods or properties satisfying the requirements of the protocol.

protocol CarDataSource {
    var color: String { get set }
    func drive()
    func isAllWheelDrive() -> Bool
}

class Car {
    
}

class BMW: Car, CarDataSource {
    var color: String
    
    init(color: String) {
        self.color = color
    }
    
    func drive() {
        
    }
    
    func isAllWheelDrive() -> Bool {
        return true
    }
}


