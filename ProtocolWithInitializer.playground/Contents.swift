//
//  ProtocolWithInitializer.playground
//  Object Oriented Programming
//
//  Created by Arda Ersoy on 15.02.2021.
//  Copyright © 2021 Arda Ersoy. All rights reserved.
//

import UIKit

// MARK: - Protocols
// --> Protocols can have specific initializers like normal methods which the conforming types can implement. We can implement a protocol initializer requirement on a conforming class as either a designated initializer or a convenience initializer. In both cases, we must mark the initializer implementation with the requiredmodifier.

protocol InitializerProtocol {
    init(name: String)
}

class Person: InitializerProtocol {
    var fullname: String = ""
    
    required init(name: String) {
        fullname = name
    }
    
    func getName() -> String {
        return self.fullname
    }
}

var p1 = Person(name: "arda")
print("My name is", p1.getName())
