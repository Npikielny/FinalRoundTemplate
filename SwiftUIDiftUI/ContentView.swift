//
//  ContentView.swift
//  SwiftUIDiftUI
//
//  Created by Noah Pikielny on 2/10/22.
//

import SwiftUI

struct ContentView: View {
    @State var items: [Item] = Item.models
        
    var body: some View {
        TabView {
            Products(items: $items)
                .tabItem {
                    VStack {
                        Image(systemName: "bag.circle.fill")
                        Text("Products")
                    }
                }
            CartView(items: $items)
                .tabItem {
                    Image(systemName: "cart.circle.fill")
                    let cartItems = items.filter { $0.inCart }
                    Text("Cart" + (cartItems.count == 0 ? "" : " (\(cartItems.count))"))
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
