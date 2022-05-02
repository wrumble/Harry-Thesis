//
//  PrologueItem.swift
//  DN|Sub -0 Design
//
//  Created by Wayne Rumble on 02/05/2022.
//

import Foundation

struct PrologueItem: Hashable, Identifiable, Codable, Equatable {
    var id: String {
        UUID().uuidString
    }
    
    let text: String?
    let imageName: String?
    let position: Int
    let placeHolderName: String?
    let title: String?
    let subTitle: String?
    let exampleTitle: String?
    let exampleImage: String?
    let exampleSubText: String?
}

extension PrologueItem {
    var hasExample: Bool {
        exampleTitle != nil &&
            exampleImage != nil &&
            exampleSubText != nil
    }
    
    var hasImages: Bool {
        imageName != nil &&
        placeHolderName != nil
    }
}

extension PrologueItem {
    static func mock(
        text: String = "text",
        icon: String = "harrySmall",
        position: Int = 0,
        placeHolderName: String = "photoCopyIcon",
        title: String = "title",
        subTitle: String = "subTitle",
        exampleTitle: String = "exampleTitle",
        exampleImage: String = "exampleImage",
        exampleSubText: String = "exampleSubText"
    ) -> Self {
        PrologueItem(
            text: text,
            imageName: icon,
            position: position,
            placeHolderName: placeHolderName,
            title: title,
            subTitle: subTitle,
            exampleTitle: exampleTitle,
            exampleImage: exampleImage,
            exampleSubText: exampleSubText)
    }
}
