//
//  TabScreen.swift
//  DN|Sub -0 Design (iOS)
//
//  Created by Wayne Rumble on 29/04/2022.
//

import SwiftUI

struct TabScreen: View {
    
    @StateObject var router: Router
    
    @ObservedObject var homeScreenViewModel = HomeScreenViewModel()
    @ObservedObject var chaptersScreenViewModel = ChaptersScreenViewModel()
    @ObservedObject var bibliographyViewModel = BibliographyViewModel()
        
    var statusBarHeight: CGFloat
    
    var body: some View {
        switch router.currentScreen {
        case .home:
            HomeScreen(viewModel: homeScreenViewModel, statusBarHeight: statusBarHeight)
        case .chapters:
            ChaptersScreen(viewModel: chaptersScreenViewModel, router: router,  statusBarHeight: statusBarHeight)
        case .bibliography:
            if let bibliography = bibliographyViewModel.bibliography {
                BibliographyScreen(bibliography: bibliography)
            }
        case .chapterReader:
            ChapterReaderScreen(chapter: router.currentChapter)
        }
    }
}

struct TabScreen_Previews: PreviewProvider {
    static var previews: some View {
        let router = Router()
        TabScreen(router: router, statusBarHeight: 50)
    }
}
