//
//  Item.swift
//  SwiftUIDiftUI
//
//  Created by Noah Pikielny on 2/10/22.
//

import Foundation
import SwiftUI

struct Item: Hashable {
    static var model = Item(imageName: "pickles", name: "Plant", price: 15)
    static var models = Array(repeating: model, count: 15)
    
    private var imageName: String
    var image: Image { Image(imageName) }
    var name: String
    var price: Double
    var inCart: Bool = false
}
