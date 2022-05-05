//
//  ExampleView.swift
//  DN|Sub -0 Design
//
//  Created by Wayne Rumble on 05/05/2022.
//

import SwiftUI

struct ExampleView: View {
    
    var prologueItem: PrologueItem
    
    var body: some View {
        VStack {
            if let exampleTitle = prologueItem.exampleTitle {
                Text(exampleTitle.uppercased())
                    .multilineTextAlignment(.center)
                    .font(.subHeader3)
                    .foregroundColor(Color.fontGreen)
                    .padding(.top, 30)
                    .frame(width: UIScreen.main.bounds.width * 0.62)
                Image("exampleSpacerView")
                    .resizable()
                    .frame(width: UIScreen.main.bounds.width * 0.31, height: 5)
                    .padding(.top, 16)
                    .clipShape(RoundedRectangle(cornerRadius: 14))
            }
            
            if let exampleImage = prologueItem.exampleImage,
               let examplePlaceHolderName = prologueItem.examplePlaceHolderName {
                FirebaseImage(imageName: exampleImage, placeHolderName: examplePlaceHolderName)
                    .shadow(color: .black.opacity(0.25), radius: 4, x: 0, y: 4)
                    .padding(.top, 16)
            }
            
            if let exampleSubText = prologueItem.exampleSubText {
                Text(exampleSubText.uppercased())
                    .multilineTextAlignment(.center)
                    .font(.subHeader3)
                    .foregroundColor(Color.fontGreen)
                    .padding(.top, 30)
                    .padding(.bottom, 25)
                    .frame(width: UIScreen.main.bounds.width * 0.62)
            }
        }
        .frame(
            maxWidth: UIScreen.main.bounds.width * 0.7
        )
        .background(
            LinearGradient(colors: [Color.exampleViewRightFadeBackground, Color.exampleViewLeftFadeBackground], startPoint: .leading, endPoint: .trailing)
        )
        .clipShape(RoundedRectangle(cornerRadius: 24))
        .shadow(color: Color.chapterViewTopDropShadow, radius: 8, x: -2, y: -3)
        .shadow(color: Color.exampleViewBottomDropShadow, radius: 5, x: 1, y: 1)
    }
}

struct ExampleView_Previews: PreviewProvider {
    static var previews: some View {
        ExampleView(prologueItem: PrologueItem.defaultData[0])
    }
}
