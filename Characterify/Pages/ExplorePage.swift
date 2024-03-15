//
//  CategoryHome.swift
//  Characterify
//
//  Created by Arya Adyatma on 10/03/24.
//

import SwiftUI

struct ExplorePage: View {
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
                        Text("Featured")
                            .font(.body)
                            .fontWeight(.bold)
                        
                        modelData.featuredCharacter.image
                            .renderingMode(.original)
                            .resizable()
                            .scaledToFill()
                            .frame(height: 200)
                            .clipped()
                            .cornerRadius(12)
                        
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
                .navigationTitle("Explore")
                
        } detail: {
            Text("Select a Character")
        }
    }
}

#Preview {
    ExplorePage()
        .environment(ModelData())
}
