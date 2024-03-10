//
//  ModelData.swift
//  Characterify
//
//  Created by Arya Adyatma on 01/03/24.
//

import Foundation


@Observable
class ModelData {
    var characters: [Character] = load("characterData.json")
    
    var categories: [String: [Character]] {
        Dictionary(
            grouping: characters,
            by: { $0.category.rawValue }
        )
    }
    
    var featuredCharacter: Character {
        characters[1]
    }
}


func load<T: Decodable>(_ filename: String) -> T {
    let data: Data


    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }


    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }


    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
