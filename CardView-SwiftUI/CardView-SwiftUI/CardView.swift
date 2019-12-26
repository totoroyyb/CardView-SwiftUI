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
    
    @State var isShowDetail = false
    
    var body: some View {
        GeometryReader { geo in
            ZStack {
                TopView(subtitle: self.subtitle, title: self.title, backgroundImage: self.backgroundImage, briefSummary: self.briefSummary)
            }
            .onTapGesture {
                    self.isShowDetail.toggle()
            }
            .cornerRadius(20)
            .offset(x: self.isShowDetail ? -geo.frame(in: .global).minX : 0, y: self.isShowDetail ? -geo.frame(in: .global).minY : 0)
            .frame(height: self.isShowDetail ? UIScreen.main.bounds.height : nil)
            .frame(width: self.isShowDetail ? UIScreen.main.bounds.width : nil)
        }
        .frame(width: UIScreen.main.bounds.width - 20)
        .frame(height: 300)
    }
}


#if DEBUG
struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CardView(subtitle: "MEET THE DEVELOPER", title: "Insider VSCO's Imaging Lab", backgroundImage: Image("bg1"), briefSummary: "How VSCO brings analog authenticity to your digital shots", description: desPlaceholer, isShowDetail: false)
            
            CardView(subtitle: "MEET THE DEVELOPER", title: "Insider VSCO's Imaging Lab", backgroundImage: Image("bg1"), briefSummary: "How VSCO brings analog authenticity to your digital shots", description: desPlaceholer, isShowDetail: true)
            
            ExpandedView(subtitle: "MEET THE DEVELOPER", title: "Insider VSCO's Imaging Lab", backgroundImage: Image("bg1"), briefSummary: "How VSCO brings analog authenticity to your digital shots", description: desPlaceholer)
        }
    }
}
#endif

struct TopView: View {
    var subtitle: String
    var title: String
    var backgroundImage: Image
    var briefSummary: String
    
    var body: some View {
        GeometryReader { geo in
            VStack(alignment: .center) {
                HStack {
                    VStack(alignment: .leading) {
                        Text(self.subtitle)
                            .font(.caption)
                            .foregroundColor(.gray)
                        
                        Text(self.title)
                            .font(.headline)
                            .foregroundColor(.white)
                        
                        Spacer()
                    }
                    .lineLimit(3)
                    
                    Spacer()
                }
                .padding()
                
                HStack(alignment: .center) {
                    Text(self.briefSummary)
                        .foregroundColor(.white)
                        .font(.caption)
                        .lineLimit(3)
                    Spacer()
                }
                .padding()
            }
            .background(
                self.backgroundImage
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(maxWidth: geo.size.width, maxHeight: geo.size.height)
                    .clipped()
            )
        }
    }
}

struct ExpandedView: View {
    var subtitle: String
    var title: String
    var backgroundImage: Image
    var briefSummary: String
    var description: String
    
    var body: some View {
        ZStack {
            ScrollView(.vertical, showsIndicators: true) {
                Text(self.description)
                    .font(.body)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color("bgColor1"))
            }
            .animation(.default)
            
            TopView(subtitle: self.subtitle, title: self.title, backgroundImage: self.backgroundImage, briefSummary: self.briefSummary)
        }
    }
}
