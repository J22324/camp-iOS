//
//  FavoriteView.swift
//  NetworkedApp
//
//  Created by tech-girls-camp02 on 2025/03/08.
//

import SwiftUI

struct FavoriteView: View {
    @State var coffees: [Coffee] = []
    
    var body: some View {
        ScrollView {
            LazyVStack{
                ForEach(coffees) { coffee in
                    CoffeeItemView(coffee: coffee)
                        .padding(.horizontal, 20)
                }

            }
        }
        .onAppear {
            coffees = FavoriteManager.shared.coffees
        }
    }
}

#Preview {
    FavoriteView()
}
