//
//  DetailTextView.swift
//  CardView-SwiftUI
//
//  Created by Quentin on 2019/7/31.
//  Copyright © 2019 TotoroQ. All rights reserved.
//

import SwiftUI

struct DetailTextView: View {
    var description: String
    
    var body: some View {
        Text(description)
            .foregroundColor(.black)
            .lineLimit(nil)
    }
}

#if DEBUG
struct DetailTextView_Previews: PreviewProvider {
    static var previews: some View {
        DetailTextView(description: desPlaceholer)
    }
}
#endif
