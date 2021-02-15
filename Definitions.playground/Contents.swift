//
//  Definitions.playground
//  Object Oriented Programming
//
//  Created by Arda Ersoy on 15.02.2021.
//  Copyright © 2021 Arda Ersoy. All rights reserved.
//

// MARK: - Definitions of Basics

/*
 ------------------------------------------------------------------------------------------------
 
 --> Tuples, which are used to group multiple values in a single compound Value. The values in a tuple can be of any type, and do not need to be of same type. ("Tutorials Point", 123) is a tuple with two values, one of string Type, and other is integer type. It is a legal command. Tuples are useful for temporary values and are not suited for complex data.

 var error501 = (501, “Not implemented”)
 
-------------------------------------------------------------------------------------------------

 --> Arrays, which are used to store ordered lists of values of the same type. Swift 4 puts strict checking which does not allow you to enter a wrong type in an array, even by mistake.
 
 var someArray = [SomeType]()
 var someInts = [Int](count: 3, repeatedValue: 0)
 
 ------------------------------------------------------------------------------------------------
 
 --> Sets, which are used to store distinct values of same types but they don’t have definite ordering as arrays have. We can use sets instead of arrays if ordering of elements is not an issue, or if you want to ensure that there are no duplicate values. (sets allow only distinct values.) A type must be hashable to be stored in a set. A hash value is a Int value that is equal for equal objects. For example, if x == y, then x.hashvalue == y.hashvalue. All the basic swift values are of hashable type by default and may be used as set values.
 
 var someSet = Set<Character>()
 let odds: Set = [5,7,9,11,13]
 
 ------------------------------------------------------------------------------------------------
 
 --> Dictionaries, which are used to store unordered lists of values of the same type. Swift 4 puts strict checking which does not allow you to enter a wrong type in a dictionary even by mistake. Swift 4 dictionaries use unique identifier known as a key to store a value which later can be referenced and looked up through the same key. Unlike items in an array, items in a dictionary do not have a specified order. You can use a dictionary when you need to look up values based on their identifiers. A dictionary key can be either an integer or a string without a restriction, but it should be unique within a dictionary. If you assign a created dictionary to a variable, then it is always mutable which means you can change it by adding, removing, or changing its items. But if you assign a dictionary to a constant, then that dictionary is immutable, and its size and contents cannot be changed.
 
 var someDict:[Int:String] = [1:"One", 2:"Two", 3:"Three"]
 
 ------------------------------------------------------------------------------------------------
 
 
 */
