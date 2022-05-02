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
}
