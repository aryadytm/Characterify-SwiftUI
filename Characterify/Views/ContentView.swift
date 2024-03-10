//
//  ContentView.swift
//  Characterify
//
//  Created by Arya Adyatma on 02/03/24.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Tab = .explore

    enum Tab {
        case explore
        case characters
    }
    
    var body: some View {
        TabView(selection: $selection) {
            CharacterCategoryHome()
                .tabItem {
                    Label("Explore", systemImage: "star")
                }
                .tag(Tab.explore)
            CharacterList()
                .tabItem {
                    Label("Characters", systemImage: "list.bullet")
                }
                .tag(Tab.characters)

        }
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
