//
//  CategoryHome.swift
//  Characterify
//
//  Created by Arya Adyatma on 10/03/24.
//

import SwiftUI

struct CharacterCategoryHome: View {
    @Environment(ModelData.self) var modelData
    
    var body: some View {
        NavigationSplitView {
            List {
                
                ZStack {
                    NavigationLink(destination: CharacterDetail(character: modelData.featuredCharacter)) {
                        EmptyView()
                    }
                    .opacity(0)
                    .buttonStyle(PlainButtonStyle())

                    VStack(alignment: .leading) {
                        modelData.featuredCharacter.image
                            .renderingMode(.original)
                            .resizable()
                            .scaledToFill()
                            .frame(height: 200)
                            .clipped()
                            .cornerRadius(12)
                            .padding(.top, 8)
                        
                        Text(modelData.featuredCharacter.name)
                            .font(.caption)
                    }
                }

                
                ForEach(modelData.categories.keys.sorted(), id:\.self) { category in
                    CharacterCategoryRow(
                        category: category,
                        characters: modelData.categories[category]!
                    )
                }
                .padding(.leading)
                .padding(.top)
                .listRowInsets(EdgeInsets())
                .listRowSeparator(.hidden)
                
                Text("")
            }
                .navigationTitle("Featured")
                
        } detail: {
            Text("Select a Character")
        }
    }
}

#Preview {
    CharacterCategoryHome()
        .environment(ModelData())
}
