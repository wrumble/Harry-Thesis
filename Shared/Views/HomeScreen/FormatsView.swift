//
//  FormatsView.swift
//  DN|Sub -0 Design
//
//  Created by Wayne Rumble on 02/05/2022.
//

import SwiftUI

struct FormatItemsView: View {
    
    var formatItems: [FormatItem]
    
    var body: some View {
        VStack(spacing: 17) {
            ForEach(formatItems, id: \.position) { formatItem in
                ZStack {
                    Image("formatImageView")
                    FirebaseImage(imageName: formatItem.imageName, placeHolderName: formatItem.placeHolderName)
                }
                Text(formatItem.text.uppercased())
                    .font(.subHeader1)
                    .foregroundColor(Color.fontGreen)
                    .padding(.top, 16)
            }
        }
    }
}

struct FormatItemsView_Previews: PreviewProvider {
    static var previews: some View {
        FormatItemsView(formatItems: [.mock(), .mock(), .mock()])
    }
}
