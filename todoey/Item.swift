//
//  item.swift
//  todoey
//
//  Created by Daniel Dodson on 2/11/19.
//  Copyright © 2019 Daniel Dodson. All rights reserved.
//

import Foundation

class Item: Encodable, Decodable {
    var title: String = ""
    var done: Bool = false
}
