//
//  Part#3.playground
//  Object Oriented Programming
//
//  Created by Arda Ersoy on 13.02.2021.
//  Copyright © 2021 Arda Ersoy. All rights reserved.
//

import UIKit

// MARK: - Encapsulation
// --> Encapsulation is a concept by which we hide data and methods from outside intervention and usage.

class Maths {
    let a: Int!
    let b: Int!
    private var result: Int?
    
    init(a: Int, b: Int) {
        self.a = a
        self.b = b
    }
    
    func add() {
        result = a + b
    }
    
    func displayResult() {
        print("Result - \(result)")
    }
}

let calculation = Maths(a: 2, b: 3)
calculation.add()
calculation.displayResult()
