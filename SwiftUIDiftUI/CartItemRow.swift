//
//  CartItemRow.swift
//  SwiftUIDiftUI
//
//  Created by Hanzheng Li on 2/11/22.
//

import SwiftUI

struct CartItemRow: View {
    @Binding var item: Item
    
    var body: some View {
        Text(item.name)
    }
}

struct CartItemRow_Previews: PreviewProvider {
    static var previews: some View {
        CartItemRow(item: .constant(Item.model))
    }
}
