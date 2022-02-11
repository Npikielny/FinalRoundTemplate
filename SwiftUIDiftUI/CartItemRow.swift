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
        HStack(alignment: .center) {
            VStack {
                item.image
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 40)
                    .cornerRadius(15)
                Text(item.name)
            }
            Spacer()
            Text("$" + String(format: "%.2f", item.price))
        }
        .padding()
    }
}

struct CartItemRow_Previews: PreviewProvider {
    static var previews: some View {
        CartItemRow(item: .constant(Item.pickles))
    }
}
