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
    
    static var defaultData: [Self] {
        [chapter1, chapter2, chapter3, chapter4, chapter5, chapter6, chapter7, chapter8, chapter9, chapter10]
    }
    
    private static var chapter1: Self {
        Chapter(name: "Chapter 1", number: 1, imageName: "photoCopy", placeHolderName: "photoCopy")
    }
    
    private static var chapter2: Self {
        Chapter(name: "Chapter 2", number: 2, imageName: "lightBulb", placeHolderName: "lightBulb")
    }
    
    private static var chapter3: Self {
        Chapter(name: "Chapter 3", number: 3, imageName: "thermometer", placeHolderName: "thermometer")
    }
    
    private static var chapter4: Self {
        Chapter(name: "Chapter 4", number: 4, imageName: "key", placeHolderName: "key")
    }
    
    private static var chapter5: Self {
        Chapter(name: "Chapter 5", number: 4, imageName: "thermometer", placeHolderName: "thermometer")
    }
    
    private static var chapter6: Self {
        Chapter(name: "Chapter 6", number: 4, imageName: "key", placeHolderName: "key")
    }
    
    private static var chapter7: Self {
        Chapter(name: "Chapter 7", number: 4, imageName: "key", placeHolderName: "key")
    }
    
    private static var chapter8: Self {
        Chapter(name: "Chapter 8", number: 4, imageName: "key", placeHolderName: "key")
    }
    
    private static var chapter9: Self {
        Chapter(name: "Chapter 9", number: 4, imageName: "thermometer", placeHolderName: "thermometer")
    }
    
    private static var chapter10: Self {
        Chapter(name: "Chapter 10", number: 4, imageName: "key", placeHolderName: "key")
    }
}
