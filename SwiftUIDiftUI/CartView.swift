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
        var cartItems = items.filter({ $0.inCart })
        List(cartItems, id: \.self) { item in
            CartItemRow(item: item)
        }
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView(items: .constant([]))
    }
}
