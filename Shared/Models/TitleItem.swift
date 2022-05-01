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
}
