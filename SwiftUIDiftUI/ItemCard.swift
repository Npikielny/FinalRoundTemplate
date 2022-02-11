//
//  ItemCard.swift
//  SwiftUIDiftUI
//
//  Created by Noah Pikielny on 2/10/22.
//

import SwiftUI

struct ItemCard: View {
    @Binding var item: Item
    
    var body: some View {
        VStack {
            item.image
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 100, height: 100)
                .cornerRadius(15)
            HStack {
                Text(item.name)
                Spacer()
                Text("$" + String(format: "%.2f", item.price))
            }
        }
        .padding()
        .background(item.inCart ? Color.gray.opacity(0.25) : Color.mint.opacity(0.25))
        .cornerRadius(15)
    }
}

struct ItemCard_Previews: PreviewProvider {
    static var previews: some View {
        ItemCard(item: .constant(Item.jeff))
    }
}
