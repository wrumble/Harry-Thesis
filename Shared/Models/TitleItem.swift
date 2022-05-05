//
//  TitleItem.swift
//  DN|Sub -0 Design
//
//  Created by Wayne Rumble on 30/04/2022.
//

import Foundation

struct TitleItem: Hashable, Identifiable, Codable, Equatable {
    var id: String {
        UUID().uuidString
    }
    
    let text: String
    let imageName: String
    let position: Int
    let placeHolderName: String
}

extension TitleItem {
    static func mock(text: String = "text", icon: String = "harry", position: Int = 0, placeHolderName: String = "photoCopyIcon") -> Self {
        .init(text: text, imageName: icon, position: position, placeHolderName: placeHolderName)
    }
    
    static var defaultData: [Self] {
        [item1, item2, item3, item4, item5]
    }
    
    private static var item1: TitleItem {
        TitleItem(text: "How to", imageName: "harry", position: 1, placeHolderName: "harry")
    }
    
    private static var item2: TitleItem {
        TitleItem(text: "Design for", imageName: "pencil", position: 2, placeHolderName: "pencil")
    }
    
    private static var item3: TitleItem {
        TitleItem(text: "digital nomads", imageName: "book", position: 3, placeHolderName: "book")
    }
    
    private static var item4: TitleItem {
        TitleItem(text: "in cold", imageName: "mountains", position: 4, placeHolderName: "mountains")
    }
    
    private static var item5: TitleItem {
        TitleItem(text: "climates", imageName: "bear", position: 5, placeHolderName: "bear")
    }
}
