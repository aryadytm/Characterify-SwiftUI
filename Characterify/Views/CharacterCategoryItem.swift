//
//  CharacterCategoryView.swift
//  Characterify
//
//  Created by Arya Adyatma on 10/03/24.
//

import SwiftUI

struct CharacterCategoryItem: View {
    var character: Character
    
    var body: some View {
        VStack(alignment: .leading) {
            character.image
                .renderingMode(.original)
                .resizable()
                .frame(width: 135, height: 135)
                .cornerRadius(12)
            Text(character.name)
                .foregroundColor(.primary)
                .font(.caption)
        }
    }
}

#Preview {
    CharacterCategoryItem(character: ModelData().characters[0])
}
