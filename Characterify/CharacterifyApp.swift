//
//  CharacterifyApp.swift
//  Characterify
//
//  Created by Arya Adyatma on 29/02/24.
//

import SwiftUI

@main
struct CharacterifyApp: App {
    @State private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
