//
//  ContentView.swift
//  Characterify
//
//  Created by Arya Adyatma on 29/02/24.
//

import SwiftUI

struct Splash: View {
    var body: some View {
        VStack {
            Image("logo")
                .resizable()
                .frame(width: 128.0, height: 128.0)
            
            Text("Characterify")
                .font(.title)
                .fontWeight(.bold)
                .foregroundStyle(.blue)
            
            Text("Chat with custom AI persona")
        }
    }
}

#Preview {
    Splash()
}
