//
//  TitleItemsView.swift
//  DN|Sub -0 Design
//
//  Created by Wayne Rumble on 30/04/2022.
//

import SwiftUI

struct TitleItemsView: View {
    
    var titleItems: [TitleItem] = TitleItem.defaultData
    
    var body: some View {
        VStack(spacing: 16) {
            ForEach(titleItems, id: \.position) { titleItem in
                ZStack {
                    Image("titleItemView")
                    FirebaseImage(imageName: titleItem.imageName, placeHolderName: titleItem.placeHolderName)
                }
                Text(titleItem.text.uppercased())
                    .font(.subHeader1)
                    .foregroundColor(Color.fontGreen)
            }
        }
        .padding([.top, .bottom], 50)
        .frame(
            maxWidth: UIScreen.main.bounds.width * 0.83
        )
        .background(
            LinearGradient(colors: [Color.chapterViewLeftFadeBackground, Color.chapterViewRightFadeBackground], startPoint: .leading, endPoint: .trailing)
        )
        .clipShape(RoundedRectangle(cornerRadius: 24))
        .shadow(color: Color.chapterViewBottomDropShadow, radius: 19, x: 4, y: 3)
        .shadow(color: Color.chapterViewTopDropShadow, radius: 16, x: -7, y: -7)
    }
}

struct TitleItemsView_Previews: PreviewProvider {
    static var previews: some View {
        TitleItemsView(titleItems: TitleItem.defaultData)
    }
}
