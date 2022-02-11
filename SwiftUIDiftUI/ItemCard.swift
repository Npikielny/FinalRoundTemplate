//
//  ItemCard.swift
//  SwiftUIDiftUI
//
//  Created by Noah Pikielny on 2/10/22.
//

import SwiftUI

struct ItemCard: View {
    var item: Item
    
    var body: some View {
        VStack {
            item.image
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100)
                .cornerRadius(15)
            HStack {
                Text(item.name)
                Spacer()
                Text("$" + String(format: "%.2f", item.price))
            }
        }
        .padding()
        .background(Color.mint.opacity(0.25))
        .cornerRadius(15)
    }
}

struct ItemCard_Previews: PreviewProvider {
    static var previews: some View {
        ItemCard(item: Item.model)
    }
}
