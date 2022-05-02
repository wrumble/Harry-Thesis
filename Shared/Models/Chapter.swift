//
//  Chapter.swift
//  DN|Sub -0 Design (iOS)
//
//  Created by Wayne Rumble on 29/04/2022.
//

import Foundation

struct Chapter: Hashable, Identifiable, Codable, Equatable {
    var id: String {
        UUID().uuidString
    }
    
    let name: String
    let number: Int
    let imageName: String
    let placeHolderName: String
}

extension Chapter {
    static func mock(name: String = "Chapter 1", number: Int = 0, imageName: String = "photoCopy", placeHolderName: String = "lightBulb") -> Self {
        .init(name: name, number: number, imageName: imageName, placeHolderName: placeHolderName)
    }
}
