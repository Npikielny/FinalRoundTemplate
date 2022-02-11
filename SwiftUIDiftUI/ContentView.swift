//
//  ContentView.swift
//  SwiftUIDiftUI
//
//  Created by Noah Pikielny on 2/10/22.
//

import SwiftUI

struct ContentView: View {
    @State var selected: [Item] = []
    
    var items = Item.models
    
    var body: some View {
        TabView {
            Products()
                .tabItem {
                    VStack {
                        Image(systemName: "bag.circle.fill")
                        Text("Products")
                    }
                }
            Products()
                .tabItem {
                    Image(systemName: "cart.circle.fill")
                    Text("Cart" + (selected.count == 0 ? "" : " (\(selected.count))"))
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
