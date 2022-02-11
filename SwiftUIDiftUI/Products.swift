//
//  Products.swift
//  SwiftUIDiftUI
//
//  Created by Noah Pikielny on 2/10/22.
//

import SwiftUI

struct Products: View {
    var items = Item.models
    
    var body: some View {
        ScrollView {
            ForEach(0..<(items.count + 1) / 2, id: \.self) { row in
                HStack {
                    ItemCard(item: items[row * 2])
                    Spacer()
                    if row * 2 + 1 < items.count {
                        ItemCard(item: items[row * 2 + 1])
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
        Products()
    }
}
