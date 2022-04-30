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
    let icon: String
}

extension Chapter {
    static func mock(name: String = "Chapter 1", number: Int = 0, icon: String = "photoCopyIcon") -> Self {
        .init(name: name, number: number, icon: icon)
    }
}
