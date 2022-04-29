//
//  Screen.swift
//  DN -0 Design (iOS)
//
//  Created by Wayne Rumble on 29/04/2022.
//

import Foundation

enum Screen {
    case home
    case chapters
    case bibliography
    case search
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
        case .search:
            return "selectedSearch"
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
        case .search:
            return "unSelectedSearch"
        }
    }
}
