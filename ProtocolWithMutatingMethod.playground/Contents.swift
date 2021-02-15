//
//  ProtocolWithMutatingMethod.playground
//  Object Oriented Programming
//
//  Created by Arda Ersoy on 15.02.2021.
//  Copyright © 2021 Arda Ersoy. All rights reserved.
//

import UIKit

// MARK: - Protocols
// --> Mutating methods are methods that we use on value types like structs and enums. These methods are allowed to modify the instance it belongs to and any properties of that instance.

protocol Togglable {
    mutating func toggle()
}

enum OnOffSwitch: Togglable {
    case on, off
    mutating func toggle() {
        switch self {
        case .off:
            self = .on
        case .on:
            self = .off
        }
    }
}

var lightSwitch = OnOffSwitch.off
lightSwitch.toggle()

class ToggleClass: Togglable {
    var isOpened = false
    func toggle() {
        isOpened = true
    }
}

let toggleClassObj = ToggleClass()
toggleClassObj.toggle()
print("\(toggleClassObj.isOpened)")
