//
//  CardView.swift
//  CardView-SwiftUI
//
//  Created by Quentin on 2019/7/31.
//  Copyright © 2019 TotoroQ. All rights reserved.
//

import SwiftUI
import Combine

class CardView_Control: ObservableObject {
    @Published var anyTriggered = false
}

struct CardView: View {
    var subtitle: String
    var title: String
    var backgroundImage: Image
    var briefSummary: String
    var description: String
    
    @State var isShowDetail = false
    @EnvironmentObject var control: CardView_Control
    
    var body: some View {
        GeometryReader { geo in
            CardInnerView(subtitle: self.subtitle, title: self.title, backgroundImage: self.backgroundImage, briefSummary: self.briefSummary, description: self.description, isShow: self.$isShowDetail)
                .onTapGesture {
                    withAnimation(.interpolatingSpring(mass: 1, stiffness: 90, damping: 15, initialVelocity: 1)) {
                        self.isShowDetail.toggle()
                        self.control.anyTriggered.toggle()
                }    
            }
            .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
            .offset(x: self.isShowDetail ? -geo.frame(in: .global).minX : 0, y: self.isShowDetail ? -geo.frame(in: .global).minY : 0)
            .frame(height: self.isShowDetail ? UIScreen.main.bounds.height : nil)
            .frame(width: self.isShowDetail ? UIScreen.main.bounds.width : nil)
        }
        .frame(width: UIScreen.main.bounds.width - 40)
        .frame(height: 300)
        .offset(x: control.anyTriggered && !isShowDetail ? UIScreen.main.bounds.width : 0)
        .opacity(control.anyTriggered && !isShowDetail ? 0 : 1)
    }
}


#if DEBUG
struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CardView(subtitle: "MEET THE DEVELOPER", title: "Insider VSCO's Imaging Lab", backgroundImage: Image("bg1"), briefSummary: "How VSCO brings analog authenticity to your digital shots", description: desPlaceholer, isShowDetail: false)
            .environmentObject(CardView_Control())
            
//            CardView(subtitle: "MEET THE DEVELOPER", title: "Insider VSCO's Imaging Lab", backgroundImage: Image("bg1"), briefSummary: "How VSCO brings analog authenticity to your digital shots", description: desPlaceholer, isShowDetail: true)
//
//            TopView(subtitle: "MEET THE DEVELOPER", title: "Insider VSCO's Imaging Lab", backgroundImage: Image("bg1"), briefSummary: "How VSCO brings analog authenticity to your digital shots")
//                .background(Color.black)
        }
    }
}
#endif

struct CardInnerView: View {
    var subtitle: String
    var title: String
    var backgroundImage: Image
    var briefSummary: String
    var description: String
    
    @Binding var isShow: Bool
    @State private var translation = CGSize.zero
    
    var body: some View {
        GeometryReader { geo in
            VStack {
                TopView(subtitle: self.subtitle, title: self.title, backgroundImage: self.backgroundImage, briefSummary: self.briefSummary, isShow: self.$isShow)
                    .frame(height: 300)
                    .background(
                        self.backgroundImage
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(maxWidth: geo.size.width, maxHeight: geo.size.height)
                            .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
                    )
                    .offset(y: self.translation.height)
                
                if self.isShow {
                    ScrollView {
                        ExpandableView(description: self.description, isShow: self.$isShow)
                            .transition(.opacity)
                    }
                }
            }
            .background(Color.black)
        }
    }
}

struct TopView: View {
    var subtitle: String
    var title: String
    var backgroundImage: Image
    var briefSummary: String
    
    @Binding var isShow: Bool
    
    var body: some View {
        GeometryReader { geo in
            VStack(alignment: .center, spacing: 0) {
                if self.isShow {
                    Rectangle()
                        .frame(height: UIApplication.shared.windows.first?.safeAreaInsets.top)
                        .frame(maxWidth: .infinity)
                        .foregroundColor(Color.clear)
                        .onTapGesture {
                            print(geo.safeAreaInsets.top)
                        }
                }
                
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
                
                Spacer()
                
                HStack(alignment: .center) {
                    Text(self.briefSummary)
                        .foregroundColor(.white)
                        .font(.caption)
                        .lineLimit(3)
                    Spacer()
                }
                .padding()
            }
        }
    }
}

struct ExpandableView: View {
    var description: String
    
    @Binding var isShow: Bool
    
    var body: some View {
        Text(self.description)
            .font(.body)
            .foregroundColor(.white)
            .padding()
    }
}
