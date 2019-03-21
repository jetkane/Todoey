//
//  Item.swift
//  Todoey
//
//  Created by JetKane on 2019/3/21.
//  Copyright © 2019 JetKane. All rights reserved.
//

import Foundation
import RealmSwift

class Item: Object {
    @objc dynamic var title: String = ""
    @objc dynamic var done: Bool = false
    @objc dynamic var dateCreated: Date?
    var parentCategory = LinkingObjects(fromType: Category.self, property: "items")
}
