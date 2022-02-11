//
//  CartItemRow.swift
//  SwiftUIDiftUI
//
//  Created by Hanzheng Li on 2/11/22.
//

import SwiftUI

struct CartItemRow: View {
    var item: Item
    
    var body: some View {
        Text(item.name)
    }
}

struct CartItemRow_Previews: PreviewProvider {
    static var previews: some View {
        CartItemRow(item: Item.model)
    }
}
