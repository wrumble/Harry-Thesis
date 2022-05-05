//
//  BibliographyScreen.swift
//  DN|Sub -0 Design
//
//  Created by Wayne Rumble on 05/05/2022.
//

import SwiftUI
import Firebase

struct BibliographyScreen: View {
    
    var bibliography: Bibliography = .defaultData
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack() {
                Spacer(minLength: 80)
                iconView(imageName: bibliography.imageName, placeHolderName: bibliography.placeHolderName)
                
                title(title: bibliography.title)
                
                text(text: bibliography.text)
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

struct BibliographyScreen_Previews: PreviewProvider {
    static var previews: some View {
        BibliographyScreen(bibliography: .defaultData)
    }
}

