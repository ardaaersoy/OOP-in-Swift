//
//  ProtocolWithPropertyMethod.playground
//  Object Oriented Programming
//
//  Created by Arda Ersoy on 13.02.2021.
//  Copyright © 2021 Arda Ersoy. All rights reserved.
//

import UIKit

// MARK: - Protocols
// --> Protocols provide a blueprint for Methods, properties and other requirements functionality. It is just described as a methods or properties skeleton instead of implementation. Methods and properties implementation can further be done by defining classes, functions and enumerations. Conformance of a protocol is defined as the methods or properties satisfying the requirements of the protocol.

protocol CarDataSource {
    var speed: Int { get set }
    var newer: Bool { get }
    
    func wellDesigned() -> String
    func isSecure() -> String
}

// --> Protocol inheritance
protocol CarProtocol: CarDataSource {
    var present: Bool { get set }
    var brand: String { get set }
    var model: String { get set }
}

class Car: CarProtocol {
    var present: Bool = false
    var brand: String = "Audi"
    var model: String = "A3"
    
    var speed: Int = 250
    var newer: Bool = true
    
    func wellDesigned() -> String {
        return "Yes"
    }
    
    func isSecure() -> String {
        return "Of course"
    }
}

let bmw = Car()
print(bmw.brand, bmw.model, bmw.newer, bmw.present, bmw.speed, bmw.isSecure(), bmw.wellDesigned())
