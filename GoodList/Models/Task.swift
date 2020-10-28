//
//  Task.swift
//  GoodList
//
//  Created by Kantemir Vologirov on 9/21/20.
//  Copyright © 2020 Kantemir Vologirov. All rights reserved.
//

import Foundation

enum Priority: Int {
    case high
    case medium
    case low
}

struct Task {
    let title: String
    let priority: Priority
}
