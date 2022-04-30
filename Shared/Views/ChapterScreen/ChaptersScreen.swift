//
//  ChapterScreen.swift
//  DN|Sub -0 Design (iOS)
//
//  Created by Wayne Rumble on 30/04/2022.
//

import SwiftUI



struct ChaptersScreen: View {
    
    @ObservedObject var viewModel = ChaptersScreenViewModel()
    
    @StateObject var router: Router
    
    var body: some View {
        VStack(spacing: 32) {
            ForEach(viewModel.chapters, id: \.number) { chapter in
                ChapterView(chapter: chapter, router: router)
            }
        }
        .frame(
            maxWidth: .infinity,
            maxHeight: .infinity
        )
        .background(
            LinearGradient(colors: [Color.leftFadeBackground, Color.rightFadeBackground], startPoint: .leading, endPoint: .trailing)
        )
    }
}

struct ChapterScreen_Previews: PreviewProvider {
    static var previews: some View {
        ChaptersScreen(router: Router())
    }
}
