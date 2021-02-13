//
//  Part#4.playground
//  Object Oriented Programming
//
//  Created by Arda Ersoy on 13.02.2021.
//  Copyright © 2021 Arda Ersoy. All rights reserved.
//

import UIKit

// MARK: - Polymorphism, Classes and Protocols/Interfaces
// --> One of the important aspects of OOP which makes it a hero is the behavior of objects. Objects of the same class can behave independently within the same interface.

protocol GroceryItem {
    func cost() -> Float
    func description() -> String
}

struct Apple: GroceryItem {
    let name: String
    let price: Float
    func cost() -> Float {
        return price
    }
    func description() -> String {
        return "\(name): \(price)"
    }
}

struct Beef: GroceryItem {
    let name: String
    let weight: Float
    let pricePerPound: Float
    func cost() -> Float {
        return weight * pricePerPound
    }
    func description() -> String {
        return "\(name): Weight \(weight), Price Per Pound: \(pricePerPound)"
    }
}

struct Customer {
    let name: String
    let groceries: [GroceryItem] // instead of any type
}

struct GroceryStore {
    func printReceipt(customer: Customer) {
        print("Printing out receipt for customer: \(customer.name)\n")
        
        // higher order function
        let desc = customer.groceries.reduce("", {$0 + $1.description() + "\n"})
        print(desc)
        let total = customer.groceries.reduce(0, {$0 + $1.cost()})
        print("Total: \(total)")
        
        /*var total: Float = 0
        customer.groceries.forEach { (item) in
            print(item.description())
            total += item.cost()
            /*if let groceryItem = item as? GroceryItem {
                print(groceryItem.description())
                total += groceryItem.cost()
            }*/
        }*/
        
        /*customer.groceries.forEach { (item) in
            if let apple = item as? Apple {
                print("\(apple.name): \(apple.price)")
                total += apple.price
            } else if let beef = item as? Beef {
                print("\n\(beef.name): Weight \(beef.weight), Price Per Pound: \(beef.pricePerPound)")
                total += beef.weight * beef.pricePerPound
            } // another else case for drinks...so on and so forth
        }*/
    }
}

let newYorkSteak = Beef(name: "New York Steak", weight: 2.5, pricePerPound: 9.99)
let goldenApple = Apple(name: "Golden Apple", price: 4.99)
let greenApple = Apple(name: "Green Apple", price: 1.99)
let bill = Customer(name: "Bill", groceries: [goldenApple, greenApple, newYorkSteak])
let safeway = GroceryStore()
safeway.printReceipt(customer: bill)
