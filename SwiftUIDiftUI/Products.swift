//
//  Products.swift
//  SwiftUIDiftUI
//
//  Created by Noah Pikielny on 2/10/22.
//

import SwiftUI

struct Products: View {
    @Binding var items: [Item]
    
    var body: some View {
        ScrollView {
            ForEach((0...items.count / 2), id: \.self) { row in
                HStack {
                    ItemCard(item: $items[2 * row])
                        .onTapGesture {
                            items[2 * row].inCart.toggle()
                        }
                    Spacer()
                    if 2 * row + 1 < items.count {
                        ItemCard(item: $items[2 * row + 1])
                            .onTapGesture {
                                items[2 * row + 1].inCart.toggle()
                            }
                    } else {
                        EmptyView()
                    }
                }
            }.listRowSeparator(.hidden)
        }
        .padding()
    }
}

struct Products_Previews: PreviewProvider {
    static var previews: some View {
        Products(items: .constant([]))
    }
}
