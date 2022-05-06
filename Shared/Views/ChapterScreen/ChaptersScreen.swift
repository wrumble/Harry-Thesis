//
//  ChapterScreen.swift
//  DN|Sub -0 Design (iOS)
//
//  Created by Wayne Rumble on 30/04/2022.
//

import SwiftUI
import Firebase

struct ChaptersScreen: View {
    
    @ObservedObject var viewModel: ChaptersScreenViewModel
    
    @StateObject var router: Router
    
    var statusBarHeight: CGFloat
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(spacing: 32) {
                ForEach(viewModel.chapters, id: \.number) { chapter in
                    ChapterView(chapter: chapter, router: router)
                }
            }
            .padding(.top, statusBarHeight + 20)
            .frame(maxWidth: .infinity)
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
                               parameters: [AnalyticsParameterScreenName: "\(ChaptersScreen.self)",
                                           AnalyticsParameterScreenClass: "\(ChaptersScreen.self)"])
        }
    }
}

struct ChapterScreen_Previews: PreviewProvider {
    static var previews: some View {
        ChaptersScreen(viewModel: ChaptersScreenViewModel(), router: Router(), statusBarHeight: 20)
    }
}
