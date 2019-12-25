//
//  ContentView.swift
//  CardView-SwiftUI
//
//  Created by Quentin on 2019/7/31.
//  Copyright © 2019 TotoroQ. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var isProfileShow = false
    @State var isShow = false
    
    var cards = cardData
    
    var body: some View {
        ZStack {
//            VStack {
//                TopMenu(isProfileShow: $isProfileShow)
//                    .padding()
//                    .background(Color.white)
//                Spacer()
//            }
            
            ScrollView {
                TopMenu(isProfileShow: $isProfileShow)
                    .padding()
                    .padding(.bottom, -10)
                
                VStack(alignment: .center, spacing: 10) {
                    ForEach(self.cards) { card in
                        GeometryReader { geo in
                            CardView (
                                subtitle: card.subtitle,
                                title: card.title,
                                backgroundImage: Image(card.backgroundImage),
                                briefSummary: card.briefSummary,
                                description: card.description
                            )
                            .onTapGesture {
                                    self.isShow.toggle()
                            }
                            .offset(y: self.isShow ? -geo.frame(in: .global).minY : 0)
                        }
                        .frame(height: self.isShow ? UIScreen.main.bounds.height : 300)
                        .frame(width: self.isShow ? UIScreen.main.bounds.width : 350)
                    }
                }
            }
        }
        .sheet(isPresented: $isProfileShow, content: {
            ProfileView(isProfileShow: self.$isProfileShow)
        })
        //.edgesIgnoringSafeArea(.all)
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView().colorScheme(.light)
            
            ContentView().colorScheme(.dark)
        }
    }
}
#endif

struct TopMenu: View {
    @Binding var isProfileShow: Bool
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("WED, JULY 31")
                .font(.caption)
                .padding(.bottom, -10)
                .foregroundColor(.gray)
            
            HStack(alignment: .center) {
                Text("Today")
                    .font(.title)
                    .fontWeight(.bold)
                
                Spacer()
                
                Button(action: { self.isProfileShow.toggle() }) {
                    Image(systemName: "person.circle")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.blue)
                }
            }
        }
    }
}
