//
//  CharacterDetailView.swift
//  Characterify
//
//  Created by Arya Adyatma on 01/03/24.
//

import SwiftUI

struct CharacterDetailPage: View {
    @Environment(ModelData.self) var modelData
    var character: Character
    
    var characterIndex: Int {
        modelData.characters.firstIndex(where: { character.id == $0.id })!
    }
    
    var body: some View {
        @Bindable var modelData = modelData
        
        VStack {
            Spacer()
            character.image
                .resizable()
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            Text(character.name)
                .font(.title)
            Text("By " + character.author)
                .font(.callout)
            FavoriteButton(isSet: $modelData.characters[characterIndex].isFavorite)
                .padding(.top, 1)
            Text(character.description)
                .font(.body)
                .padding(.top, 20)
            
            Spacer()
            
            VStack {
                Button("Chat with " + character.name) {
                    
                }.buttonStyle(.borderedProminent)    
                
                Button("Edit character") {
                    
                }.buttonStyle(.borderless)
                
            }
            
            
        }.padding(12)
    }
}

#Preview {
    CharacterDetailPage(character: ModelData().characters[0])
        .environment(ModelData())
}
