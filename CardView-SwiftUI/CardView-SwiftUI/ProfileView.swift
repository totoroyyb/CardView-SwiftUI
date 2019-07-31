//
//  ProfileView.swift
//  CardView-SwiftUI
//
//  Created by Quentin on 2019/7/31.
//  Copyright © 2019 TotoroQ. All rights reserved.
//

import SwiftUI

struct ProfileView: View {
    @Binding var isProfileShow: Bool
    
    var body: some View {
        VStack {
            ZStack(alignment: .center) {
                Text("Account")
                    .font(.headline)
                
                HStack {
                    Spacer()
                    Button(action: { self.isProfileShow.toggle() }) {
                        Text("Cancel")
                    }
                }
            }
            
            Text("This is a user account profile view!")
                .font(.body)
                .frame(minWidth: 0, maxWidth: .infinity,
                       minHeight: 0, maxHeight: .infinity)
                .foregroundColor(.red)
            
        }
        .padding()
    }
}

#if DEBUG
struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(isProfileShow: .constant(true))
    }
}
#endif
