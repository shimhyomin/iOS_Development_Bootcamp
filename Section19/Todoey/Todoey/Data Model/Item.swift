//
//  Item.swift
//  Todoey
//
//  Created by shm on 2021/08/29.
//  Copyright © 2021 App Brewery. All rights reserved.
//

import Foundation

class Item: Encodable {
    var title: String = ""
    var done: Bool = false
}
