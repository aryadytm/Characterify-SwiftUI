//
//  CharacterData.swift
//  Characterify
//
//  Created by Arya Adyatma on 01/03/24.
//

import Foundation
import SwiftUI

struct Character : Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var author: String
    var description: String
    var systemPrompt: String
    var isFavorite: Bool
    
    var category: Category
    enum Category : String, Codable, CaseIterable {
        case education = "Education"
        case entertainment = "Entertainment"
        case productivity = "Productivity"
    }
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
}
