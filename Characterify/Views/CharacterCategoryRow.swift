//
//  CharacterCategoryRow.swift
//  Characterify
//
//  Created by Arya Adyatma on 10/03/24.
//

import SwiftUI

struct CharacterCategoryRow: View {
    var category: String
    var characters: [Character]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(category)
                .font(.body)
                .fontWeight(.bold)
            ScrollView(.horizontal, showsIndicators: false){
                HStack(alignment: .top, spacing: 12) {
                    ForEach(characters) { character in
                        NavigationLink {
                            CharacterDetail(character: character)
                        } label: {
                            CharacterCategoryItem(character: character)
                        }
                    }
                }
                
            }
        }
    }
}

#Preview {
    CharacterCategoryRow(
        category: Character.Category.education.rawValue,
        characters: ModelData().characters
    )
}
