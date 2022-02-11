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

        let price = items
            .filter { $0.inCart }
            .map { $0.price }
            .reduce(0, +)


        VStack {
            HStack {
                Text("Total Price")
                    .font(.headline)
                Spacer()
                Text("$\(price, specifier: "%.2f")")
                    .font(.headline)
            }.padding(12)

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

}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView(items: .constant([]))
    }
}
