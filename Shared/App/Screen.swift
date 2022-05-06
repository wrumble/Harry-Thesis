//
//  Screen.swift
//  DN -0 Design (iOS)
//
//  Created by Wayne Rumble on 29/04/2022.
//

import Foundation

enum Screen: Equatable {
    case home
    case chapters
    case bibliography
    case chapterReader
}

extension Screen {
    var iconSelected: String {
        switch self {
        case .home:
            return "selectedHome"
        case .chapters:
            return "selectedChapters"
        case .bibliography:
            return "selectedBibliography"
        case .chapterReader:
            return "tabBarIconViewSelected"
        }
    }
    
    var iconUnSelected: String {
        switch self {
        case .home:
            return "unSelectedHome"
        case .chapters:
            return "unSelectedChapters"
        case .bibliography:
            return "unSelectedBibliography"
        case .chapterReader:
            return "tabBarIconViewUnSelected"
        }
    }
}
