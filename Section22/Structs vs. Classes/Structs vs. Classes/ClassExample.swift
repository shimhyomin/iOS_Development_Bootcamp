//
//  ClassExample.swift
//  Structs vs. Classes
//
//  Created by shm on 2021/09/09.
//

import Foundation

class Classhero {
    var name: String
    var universe: String
    
    init(name: String, universe: String) {
        self.name = name
        self.universe = universe
    }
}

let classhero = Classhero(name: "Iron Man", universe: "Marvel")
