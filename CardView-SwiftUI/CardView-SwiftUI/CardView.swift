//
//  CardView.swift
//  CardView-SwiftUI
//
//  Created by Quentin on 2019/7/31.
//  Copyright © 2019 TotoroQ. All rights reserved.
//

import SwiftUI

struct CardView: View {
    var subtitle: String
    var title: String
    var backgroundImage: Image
    var briefSummary: String
    var description: String
    
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text(subtitle)
                        .font(.caption)
                        .foregroundColor(.gray)
                    
                    Text(title)
                        .font(.headline)
                        .foregroundColor(.white)
                    
                    Spacer()
                }
                .lineLimit(3)
                .frame(maxWidth: 180)
                Spacer()
            }
        }
        .padding()
        .frame(height: 420)
        .background(backgroundImage.resizable().aspectRatio(contentMode: .fill))
        .cornerRadius(10)
    }
}

#if DEBUG
struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(subtitle: "MEET THE DEVELOPER", title: "Insider VSCO's Imaging Lab", backgroundImage: Image("bg1"), briefSummary: "How VSCO brings analog authenticity to your digital shots", description: desPlaceholer)
    }
}
#endif
