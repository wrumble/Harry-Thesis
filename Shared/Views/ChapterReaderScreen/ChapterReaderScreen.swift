//
//  ChapterReaderScreen.swift
//  DN|Sub -0 Design
//
//  Created by Wayne Rumble on 06/05/2022.
//

import SwiftUI
import Firebase

struct ChapterReaderScreen: View {
        
    var chapter: Chapter = .chapter1
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack() {
                Spacer(minLength: 80)
                iconView(imageName: chapter.imageName, placeHolderName: chapter.placeHolderName)
                
                title(title: chapter.name)
                
                if let subTitleText = chapter.subTitle?.uppercased(), !subTitleText.isEmpty {
                    subTitle(subTitle: subTitleText)
                }
                
                text(text: chapter.text)
            }
        }
        .frame(
            maxWidth: .infinity,
            maxHeight: .infinity
        )
        .background(
            LinearGradient(colors: [Color.leftFadeBackground, Color.rightFadeBackground], startPoint: .leading, endPoint: .trailing)
        )
        .onAppear() {
            Analytics.logEvent(AnalyticsEventScreenView,
                               parameters: [AnalyticsParameterScreenName: "\(BibliographyScreen.self)",
                                           AnalyticsParameterScreenClass: "\(BibliographyScreen.self)"])
        }
    }
    
    private func iconView(imageName: String, placeHolderName: String) -> some View {
        FirebaseImage(imageName: imageName, placeHolderName: placeHolderName)
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
    
    private func title(title: String) -> some View {
        Text(title.uppercased())
            .font(.subHeader1)
            .lineSpacing(45)
            .padding(.top, 58)
            .multilineTextAlignment(.center)
            .fixedSize(horizontal: false, vertical: true)
            .foregroundColor(Color.fontGreen)
            .frame(maxWidth: UIScreen.main.bounds.width * 0.63)
    }
    
    private func subTitle(subTitle: String) -> some View {
        Text(subTitle)
            .font(.subHeader2)
            .multilineTextAlignment(.center)
            .fixedSize(horizontal: false, vertical: true)
            .foregroundColor(Color.fontGreen)
            .padding(.top, 35)
            .frame(maxWidth: UIScreen.main.bounds.width * 0.63)
    }
    
    private func text(text: String) -> some View {
        Text(text.replacingOccurrences(of: " * ", with: "\n • ").replacingOccurrences(of: "NEWLINE", with: "\n"))
            .font(.subHeader3)
            .lineSpacing(30)
            .fixedSize(horizontal: false, vertical: true)
            .foregroundColor(Color.fontGreen)
            .padding(.top, 35)
            .frame(maxWidth: UIScreen.main.bounds.width * 0.7)
    }
}

struct ChapterReaderScreen_Previews: PreviewProvider {
    static var previews: some View {
        ChapterReaderScreen(chapter: .chapter1)
    }
}

