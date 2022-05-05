//
//  formatItem.swift
//  DN|Sub -0 Design
//
//  Created by Wayne Rumble on 02/05/2022.
//

import Foundation

import Foundation

struct FormatItem: Hashable, Identifiable, Codable, Equatable {
    var id: String {
        UUID().uuidString
    }
    
    let text: String
    let imageName: String
    let position: Int
    let placeHolderName: String
}

extension FormatItem {
    static func mock(text: String = "text", icon: String = "harry", position: Int = 0, placeHolderName: String = "photoCopyIcon") -> Self {
        .init(text: text, imageName: icon, position: position, placeHolderName: placeHolderName)
    }
    
    static var defaultData: [FormatItem] {
        [item1 ,item2, item3]
    }
    
    private static var item1: Self {
        FormatItem(text: "research", imageName: "research", position: 1, placeHolderName: "research")
    }
    
    private static var item2: Self {
        FormatItem(text: "method", imageName: "method", position: 2, placeHolderName: "method")
    }
    
    private static var item3: Self {
        FormatItem(text: "statement", imageName: "statement", position: 3, placeHolderName: "statement")
    }
}
