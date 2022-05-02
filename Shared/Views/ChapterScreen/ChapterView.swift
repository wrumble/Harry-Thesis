//
//  ChapterView.swift
//  DN|Sub -0 Design (iOS)
//
//  Created by Wayne Rumble on 29/04/2022.
//

import SwiftUI

struct ChapterView: View {
    
    var chapter: Chapter
    
    @StateObject var router: Router
    
    var body: some View {
        HStack {
            ZStack {
                Image("chapterIconView")
                FirebaseImage(imageName: chapter.imageName, placeHolderName: chapter.placeHolderName)
            }
            .padding(19)
            Text(chapter.name.uppercased())
                .font(.subHeader1)
                .foregroundColor(Color.fontGreen)
            Spacer()
        }
        .frame(
            maxWidth: UIScreen.main.bounds.width * 0.84,
            maxHeight: 160
        )
        .background(
            LinearGradient(colors: [Color.chapterViewLeftFadeBackground, Color.chapterViewRightFadeBackground], startPoint: .leading, endPoint: .trailing)
        )
        .clipShape(RoundedRectangle(cornerRadius: 16))
        .shadow(color: Color.chapterViewBottomDropShadow, radius: 19, x: 4, y: 3)
        .shadow(color: Color.chapterViewTopDropShadow, radius: 16, x: -7, y: -7)
    }
}

struct ChapterView_Previews: PreviewProvider {
    static var previews: some View {
        ChapterView(chapter: .mock(), router: Router())
    }
}
