//
//  Item.swift
//  SwiftUIDiftUI
//
//  Created by Noah Pikielny on 2/10/22.
//

import Foundation
import SwiftUI

struct Item: Hashable {
    static var pickles = Item(imageName: "pickles", name: "Pickles", price: 15)
    static var jeff = Item(imageName: "jeff", name: "Jeff", price: 0.99)
    static var bluePants = Item(imageName: "bluepants", name: "Blue Pants", price: 99999.99)
    static var sandals = Item(imageName: "sandals", name: "Sandals", price: 13.49)
    
    static var models: [Item] = {
        var tempModels = [Item]()
        let models = [pickles, jeff, bluePants, sandals]
        for _ in 0...17 {
            let seed = Int.random(in: 0..<models.count)
            tempModels.append(models[seed])
        }
        return tempModels
    }()
    
    private var imageName: String
    var image: Image { Image(imageName) }
    var name: String
    var price: Double
    var inCart: Bool = false
}
