//
//  Category.swift
//  Todoey
//
//  Created by JetKane on 2019/3/21.
//  Copyright © 2019 JetKane. All rights reserved.
//

import Foundation
import RealmSwift

class Category: Object {
    @objc dynamic var name: String = ""
    let items = List<Item>()
}
