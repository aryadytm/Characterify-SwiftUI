//
//  UserProfilePage.swift
//  Characterify
//
//  Created by Arya Adyatma on 15/03/24.
//

import SwiftUI

struct UserProfilePage: View {
    @Environment(\.editMode) var editMode
    @Environment(ModelData.self) var modelData
    @State private var draftUserProfile: UserProfile = UserProfile.default
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Spacer()
                EditButton()
            }
            
            if editMode?.wrappedValue == .inactive {
                UserProfileSummary(userProfile: draftUserProfile)
                    .padding(.top, 20)
            } else {
                Text("Profile Editor")
            }
            
            
            Spacer()
        }
        .padding(.top, 10)
        .padding(.horizontal, 20)
    }
}

#Preview {
    UserProfilePage()
        .environment(ModelData())
}
