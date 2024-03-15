//
//  ProfileEditor.swift
//  Characterify
//
//  Created by Arya Adyatma on 15/03/24.
//

import SwiftUI

struct UserProfileEditor: View {
    @Binding var userProfile: UserProfile
    
    var body: some View {
        List {
            HStack {
                Text("Email")
                Spacer()
                TextField("Email", text: $userProfile.email)
                    .foregroundStyle(.secondary)
                    .multilineTextAlignment(.trailing)
            }
        }
    }
}

#Preview {
    UserProfileEditor(userProfile: .constant(.default))
}
