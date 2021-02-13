//
//  Part#1.playground
//  Object Oriented Programming
//
//  Created by Arda Ersoy on 13.02.2021.
//  Copyright © 2021 Arda Ersoy. All rights reserved.
//

import UIKit

// MARK: - Classes and objects
// --> Classes can be compared to a real-world group to which certain items or objects or living beings belong and each of these has similar kind of properties as present in the group.
// --> An object is anything that you see which comes from a particular class.

class Person {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func toString() {
        print("Your name is \(self.name) and age: \(self.age).")
    }
}

var person1 = Person(name: "arda", age: 24)
person1.toString()
