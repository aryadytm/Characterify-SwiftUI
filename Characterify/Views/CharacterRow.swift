//
//  CharacterRow.swift
//  Characterify
//
//  Created by Arya Adyatma on 02/03/24.
//

import SwiftUI

struct CharacterRow: View {
    var character: Character
    
    var body: some View {
        HStack {
            character.image
                .resizable()
                .frame(width: 50, height: 50)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            
            Text(character.name)
            
            Spacer()
            
            if character.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
    }
}

#Preview("Character List") {
    Group {
        CharacterRow(character: ModelData().characters[0])
        CharacterRow(character: ModelData().characters[1])
    }
}

