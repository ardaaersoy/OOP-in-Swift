//
//  ProtocolWithDelegation.playground
//  Object Oriented Programming
//
//  Created by Arda Ersoy on 15.02.2021.
//  Copyright © 2021 Arda Ersoy. All rights reserved.
//

import UIKit

// MARK: - Protocols
// --> Delegation is a design pattern that enables a class or structure to hand off (or delegate) some of its responsibilities to an instance of another type. Delegation pattern can also be used as a callback kind of mechanism. The following code is self explanatory for a swift developer with intermediate level of knowledge.

protocol CallBackDelegate {
    func dataArrived()
}

class Network {
    var delegate: CallBackDelegate?
    
    func fetchRequest() {
        delegate?.dataArrived()
    }
}

class Main: CallBackDelegate {
    func dataArrived() {
        print("Our fetch request is completed and data arrived to demonstrate.")
    }
}

let api = Network()
let vc = Main()

api.delegate = vc
api.fetchRequest()
