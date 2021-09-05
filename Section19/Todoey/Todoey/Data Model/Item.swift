//
//  Item.swift
//  Todoey
//
//  Created by shm on 2021/09/05.
//  Copyright © 2021 App Brewery. All rights reserved.
//

import Foundation
import RealmSwift

class Item: Object {
    @objc dynamic var title: String = ""
    @objc dynamic var dataCreated: Date?
    @objc dynamic var done: Bool = false
    
    // Relationship
    var parentCategory = LinkingObjects(fromType: Category.self, property: "items")
}
