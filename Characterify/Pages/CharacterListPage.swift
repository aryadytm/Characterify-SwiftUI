//
//  CharacterList.swift
//  Characterify
//
//  Created by Arya Adyatma on 02/03/24.
//

import SwiftUI

struct CharacterListPage: View {
    @Environment(ModelData.self) var modelData
    @State private var showFavoritesOnly: Bool = false
    
    var filteredCharacters: [Character] {
        modelData.characters.filter { character in
            (!showFavoritesOnly || character.isFavorite)
        }
    }
    
    var body: some View {
        
        NavigationSplitView {
            List {
                Button("Add Character") {
                }
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Show favorites only")
                }
                ForEach(filteredCharacters){ character in
                    NavigationLink {
                        CharacterDetail(character: character)
                    } label: {
                        CharacterRow(character: character)
                    }
                }
            }
            .navigationTitle("My Characters")
        } detail: {
            Text("Select a Character")
        }
        
    }
}

#Preview {
    CharacterListPage()
        .environment(ModelData())
}
