//
//  Category.swift
//  Todoey
//
//  Created by shm on 2021/09/05.
//  Copyright © 2021 App Brewery. All rights reserved.
//

import Foundation
import RealmSwift

class Category: Object {
    @objc dynamic var name: String = ""
    
    // Relationship
    let items = List<Item>()
}
