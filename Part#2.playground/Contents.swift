//
//  Part#2.playground
//  Object Oriented Programming
//
//  Created by Arda Ersoy on 13.02.2021.
//  Copyright © 2021 Arda Ersoy. All rights reserved.
//

import UIKit

// MARK: - Inheritance, Overriding and Overloading
// --> Inheritance is defined as a process by which you inherit the properties of your parent. Technically, Inheritance is a process by which a child class inherits the properties of its parent class.
// --> Overriding is the process by which two methods have the same method name and parameters. One of the methods is in the parent class and the other is in the child class.
// --> Method overloading is the process by which a class has two or more methods with same name but different parameters.

class Vehicle {
    func engineOn() {
        print("Your vehicle is starting.")
    }
    
    func description(with name:String) {
        print("This is a vehicle with \(name).")
    }
    
    func description(with km:Int) {
        print("This is a vehicle and its km: \(km).")
    }
}

var v = Vehicle()
v.engineOn()

class Car: Vehicle {
    func openGlassCeiling() {
        print("Glass ceiling of your car is opening.")
    }
    
    override func description(with name: String) {
        print("This is a vehicle which has the name \(name).")
    }
}

var c = Car()
c.openGlassCeiling()
c.engineOn()
c.description(with: "BMW")
c.description(with: 100)
