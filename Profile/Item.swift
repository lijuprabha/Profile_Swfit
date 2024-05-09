//
//  Item.swift
//  Profile
//
//  Created by liju prabhavathy sudhakaran on 2024-05-09.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
