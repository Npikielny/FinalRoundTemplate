//
//  CartView.swift
//  SwiftUIDiftUI
//
//  Created by Hanzheng Li on 2/11/22.
//

import SwiftUI

struct CartView: View {
    @Binding var items: [Item]
    
    var body: some View {
        let cartItemIndices = items
            .enumerated()
            .filter { $0.element.inCart }
            .map { $0.offset }
        List {
            ForEach(cartItemIndices, id: \.self) { idx in
                CartItemRow(item: _items[idx])
            }
            .onDelete { idxSet in
                idxSet.forEach {
                    items[cartItemIndices[$0]].inCart.toggle()
                }
            }
        }
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView(items: .constant([]))
    }
}
