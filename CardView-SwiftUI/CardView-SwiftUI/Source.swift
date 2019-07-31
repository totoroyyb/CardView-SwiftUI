//
//  Source.swift
//  CardView-SwiftUI
//
//  Created by Quentin on 2019/7/31.
//  Copyright © 2019 TotoroQ. All rights reserved.
//

import Foundation
import SwiftUI

struct Card : Identifiable {
    var id = UUID()
    
    var subtitle = "MEET THE DEVELOPER"
    var title = "Insider VSCO's Imaging Lab"
    var backgroundImage =  "bg1"
    var briefSummary = "How VSCO brings analog authenticity to your digital shots"
    var description = desPlaceholer
}

let desPlaceholer = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Enim eu turpis egestas pretium aenean pharetra magna ac. Quis enim lobortis scelerisque fermentum. Phasellus faucibus scelerisque eleifend donec pretium. Nec ullamcorper sit amet risus nullam eget. Convallis convallis tellus id interdum velit. A erat nam at lectus urna duis convallis convallis tellus. Id ornare arcu odio ut sem nulla pharetra diam sit. Cum sociis natoque penatibus et magnis. Viverra accumsan in nisl nisi scelerisque eu ultrices. Et netus et malesuada fames ac turpis egestas integer. Montes nascetur ridiculus mus mauris vitae ultricies leo. Sed felis eget velit aliquet sagittis id consectetur. Ac tortor dignissim convallis aenean et.\nEt malesuada fames ac turpis egestas maecenas. Lorem donec massa sapien faucibus et molestie. Arcu non odio euismod lacinia at quis risus sed. Est ullamcorper eget nulla facilisi etiam dignissim diam. Vitae suscipit tellus mauris a diam maecenas. Leo duis ut diam quam nulla. Id diam maecenas ultricies mi. Viverra ipsum nunc aliquet bibendum enim facilisis gravida neque. Convallis tellus id interdum velit laoreet id donec. Neque convallis a cras semper auctor. Porta lorem mollis aliquam ut porttitor leo. Eget arcu dictum varius duis at consectetur. Orci sagittis eu volutpat odio. Nunc id cursus metus aliquam eleifend mi in nulla posuere. Adipiscing diam donec adipiscing tristique risus. Arcu risus quis varius quam quisque id diam. Viverra maecenas accumsan lacus vel facilisis. Eget aliquet nibh praesent tristique magna sit amet.\nSagittis aliquam malesuada bibendum arcu vitae elementum curabitur vitae. Id cursus metus aliquam eleifend mi in nulla posuere sollicitudin. Vestibulum lectus mauris ultrices eros in. Sapien eget mi proin sed libero enim. Sit amet commodo nulla facilisi nullam. Feugiat scelerisque varius morbi enim nunc. Blandit libero volutpat sed cras ornare arcu dui. Vitae justo eget magna fermentum iaculis. Quis lectus nulla at volutpat. Ante in nibh mauris cursus mattis molestie a iaculis. Volutpat lacus laoreet non curabitur. Natoque penatibus et magnis dis parturient montes nascetur ridiculus mus. In hac habitasse platea dictumst vestibulum. At volutpat diam ut venenatis tellus in metus vulputate eu. Curabitur vitae nunc sed velit dignissim sodales ut. At in tellus integer feugiat scelerisque varius morbi enim. Arcu bibendum at varius vel pharetra vel turpis nunc eget. Sit amet venenatis urna cursus eget nunc scelerisque.\nOrci porta non pulvinar neque laoreet suspendisse. Consectetur a erat nam at lectus urna duis. Ut pharetra sit amet aliquam id diam. Tellus cras adipiscing enim eu turpis. Viverra orci sagittis eu volutpat odio facilisis. Suspendisse sed nisi lacus sed viverra tellus in hac. Nunc mi ipsum faucibus vitae aliquet nec ullamcorper sit amet. Scelerisque eleifend donec pretium vulputate sapien nec sagittis aliquam. Mauris sit amet massa vitae tortor. Fermentum dui faucibus in ornare quam viverra orci sagittis. Maecenas pharetra convallis posuere morbi leo urna molestie. Magna fringilla urna porttitor rhoncus. Ornare arcu odio ut sem nulla pharetra diam. Sit amet risus nullam eget felis eget nunc lobortis mattis.\nNec tincidunt praesent semper feugiat. Elementum curabitur vitae nunc sed velit dignissim sodales. Auctor elit sed vulputate mi sit amet mauris commodo. Volutpat maecenas volutpat blandit aliquam etiam erat. Sed viverra tellus in hac habitasse. Mauris rhoncus aenean vel elit scelerisque mauris pellentesque pulvinar pellentesque. Non diam phasellus vestibulum lorem. Quis ipsum suspendisse ultrices gravida dictum fusce. Risus nullam eget felis eget nunc lobortis mattis aliquam. Sit amet nisl suscipit adipiscing bibendum est. Sit amet venenatis urna cursus eget nunc scelerisque viverra mauris. Ut eu sem integer vitae justo eget magna fermentum. Egestas sed tempus urna et. Varius quam quisque id diam vel quam elementum pulvinar etiam. Cursus turpis massa tincidunt dui ut ornare lectus sit amet. Vel pretium lectus quam id leo in vitae. Euismod nisi porta lorem mollis aliquam ut porttitor leo a."

let cardData: [Card] = [
    .init(),
    .init(),
    .init(),
    .init()
]
