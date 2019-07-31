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
    
    @Binding var isShowDetail: Bool
    
    var body: some View {
        VStack(spacing: 0) {
            TopBriefView(subtitle: self.subtitle, title: self.title, backgroundImage: self.backgroundImage, briefSummary: self.briefSummary, isShowDetail: $isShowDetail)
            
            ScrollView(.vertical, showsIndicators: true) {
                Text(description)
                    .font(.body)
                    .foregroundColor(.white)
                    .lineLimit(nil)
                    .frame(idealHeight: isShowDetail ? .infinity : nil)
                    .padding()
                    .background(Color("bgColor1"))
            }
            .animation(.default)
            .frame(height: isShowDetail ? UIScreen.main.bounds.height * 0.75 : 0)
            
        }
        .edgesIgnoringSafeArea(.all)
        
        
//        ScrollView(.vertical, showsIndicators: true) {
//            ZStack(alignment: .top) {
//                Text(description)
//                    .foregroundColor(.black)
//                    .lineLimit(nil)
//                    .frame(idealHeight: isShowDetail ? .infinity : nil)
//                    .offset(y: isShowDetail ? UIScreen.main.bounds.height / 2 : UIScreen.main.bounds.height)
//
//
//                TopBriefView(subtitle: self.subtitle, title: self.title, backgroundImage: self.backgroundImage, briefSummary: self.briefSummary, isShowDetail: $isShowDetail)
//            }
//        }
//        .edgesIgnoringSafeArea(.all)
    }
}


#if DEBUG
struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(subtitle: "MEET THE DEVELOPER", title: "Insider VSCO's Imaging Lab", backgroundImage: Image("bg1"), briefSummary: "How VSCO brings analog authenticity to your digital shots", description: desPlaceholer, isShowDetail: .constant(true))
    }
}
#endif

struct TopBriefView: View {
    var subtitle: String
    var title: String
    var backgroundImage: Image
    var briefSummary: String
    
    @Binding var isShowDetail: Bool
    
    var body: some View {
        VStack(alignment: .leading) {
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
            
            HStack(alignment: .center) {
                Text(briefSummary)
                    .foregroundColor(.white)
                    .font(.caption)
                    .lineLimit(3)
                Spacer()
            }
        }
        .padding()
        .frame(height: isShowDetail ? UIScreen.main.bounds.height * 0.25 : 420)
        .background(
                backgroundImage
                    .resizable()
                    .aspectRatio(contentMode: .fill)
        )
        .cornerRadius(20)
    }
}
