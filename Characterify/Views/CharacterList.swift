//
//  CharacterList.swift
//  Characterify
//
//  Created by Arya Adyatma on 02/03/24.
//

import SwiftUI

struct CharacterList: View {
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
            .navigationTitle("Characters")
        } detail: {
            Text("Select a Character")
        }
        
    }
}

#Preview {
    CharacterList()
        .environment(ModelData())
}
