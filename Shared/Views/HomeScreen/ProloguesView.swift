//
//  ProloguesView.swift
//  DN|Sub -0 Design
//
//  Created by Wayne Rumble on 02/05/2022.
//

import SwiftUI

struct ProloguesView: View {
    
    var prologueItems: [PrologueItem]
    
    var body: some View {
        VStack() {
            ForEach(prologueItems, id: \.position) { prologueItem in
                Spacer(minLength: 80)
                if prologueItem.hasImages {
                    prologueIconView(prologueItem: prologueItem)
                }
                
                if let title = prologueItem.title?.uppercased(), !title.isEmpty {
                    prologueTitle(title: title, hasImages: prologueItem.hasImages)
                }
                
                if let subTitle = prologueItem.subTitle?.uppercased(), !subTitle.isEmpty {
                    prologueSubTitle(subTitle: subTitle)
                }
                
                if let text = prologueItem.text, !text.isEmpty {
                    prologueText(text: text)
                }
                
                SpacerView()
                    .padding(.top, 80)
            }
        }
    }
    
    private func prologueIconView(prologueItem: PrologueItem) -> some View {
        HStack {
            if let imageName = prologueItem.imageName, let placeHolderName = prologueItem.placeHolderName {
                FirebaseImage(imageName: imageName, placeHolderName: placeHolderName)
            }
        }
        .frame(
            minWidth: 100,
            minHeight: 100
        )
        .background(
            LinearGradient(
                colors: [Color.tabBarBackground, Color.launchScreenBackground],
                startPoint: .leading,
                endPoint: .trailing)
        )
        .clipShape(RoundedRectangle(cornerRadius: 16))
        .shadow(color: Color.chapterViewTopDropShadow, radius: 22, x: -10, y: -10)
        .shadow(color: Color.chapterViewBottomDropShadow, radius: 20, x: 10, y: 10)
    }
    
    private func prologueTitle(title: String, hasImages: Bool) -> some View {
        Text(title)
            .font(.subHeader1)
            .lineSpacing(45)
            .multilineTextAlignment(.center)
            .fixedSize(horizontal: false, vertical: true)
            .foregroundColor(Color.fontGreen)
            .padding(.top, hasImages ? 58 : 0)
            .frame(maxWidth: UIScreen.main.bounds.width * 0.63)
    }
    
    private func prologueSubTitle(subTitle: String) -> some View {
        Text(subTitle)
            .font(.subHeader2)
            .multilineTextAlignment(.center)
            .fixedSize(horizontal: false, vertical: true)
            .foregroundColor(Color.fontGreen)
            .padding(.top, 35)
            .frame(maxWidth: UIScreen.main.bounds.width * 0.63)
    }
    
    private func prologueText(text: String) -> some View {
        Text(text)
            .font(.subHeader3)
            .lineSpacing(30)
            .fixedSize(horizontal: false, vertical: true)
            .foregroundColor(Color.fontGreen)
            .padding(.top, 35)
            .frame(maxWidth: UIScreen.main.bounds.width * 0.7)
    }
}

struct ProloguesView_Previews: PreviewProvider {
    static var previews: some View {
        ProloguesView(prologueItems: [.mock(), .mock(), .mock()])
    }
}
