//
//  Home.swift
//  DN|Sub -0 Design
//
//  Created by Wayne Rumble on 30/04/2022.
//

import Foundation

struct Home: Hashable, Identifiable, Codable, Equatable {
    var id: String {
        UUID().uuidString
    }
    
    let titleItems: [TitleItem]
}

extension Home {
    static func mock(titleItems: [TitleItem] = [.mock(), .mock()]) -> Self {
        .init(titleItems: titleItems)
    }
}
