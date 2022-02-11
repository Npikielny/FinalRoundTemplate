//
//  Item.swift
//  SwiftUIDiftUI
//
//  Created by Noah Pikielny on 2/10/22.
//

import Foundation
import SwiftUI

struct Item: Hashable {
    static let model = Item(imageName: "pickles", name: "Plant", price: 15)
    static let models = Array(repeating: model, count: 15)
    
    var imageName: String
    var image: Image { Image(imageName) }
    var name: String
    var price: Double
}
