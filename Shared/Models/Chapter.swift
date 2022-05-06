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
    let subTitle: String?
    let text: String
    let imageName: String
    let placeHolderName: String
}

extension Chapter {
    static func mock(name: String = "Chapter 1", subTitle: String = "subTitle", text: String = "text", number: Int = 0, imageName: String = "photoCopy", placeHolderName: String = "lightBulb") -> Self {
        .init(name: name, number: number, subTitle: subTitle, text: text, imageName: imageName, placeHolderName: placeHolderName)
    }
    
    static var defaultData: [Self] {
        [chapter1, chapter2, chapter3, chapter4, chapter5, chapter6, chapter7, chapter8, chapter9, chapter10]
    }
    
    static var chapter1: Self {
        let text =
        """
        This thesis runs parallel with a current design project which takes an existing digital nomad hub and expands, designing a community located in the Lofoten archipelagos islands of Norway. Due to the location's extreme climate and environment, the design must address its harsh conditions. Therefore, the colder environment will develop a focus and advancement in the design for this chosen lifestyle within this climate.   The thesis enquires into a particular typology of architecture which means it requires to be highly tailored to its natural surroundings and occupants. Therefore, the first part of the thesis will introduce the topic and define digital nomads, understand the motivation behind becoming a digital nomad, what the lifestyle involves, and analyse the current digital nomad demographics. It will then analyse the gathered information so that the design can be informed and the business/client can better understand how to accommodate digital nomads, enabling them to form their brief accordingly. Aspects of the digital nomad lifestyle that need to be analysed are; the perks and challenges of the lifestyle, the suitable careers, work-life balance, how to adjust to the lifestyle and travel destinations, becoming a minimalist, and how they integrate into different locations and which possessions to take with them.   Using qualitative and quantitative measures will deduce the identity of a digital nomad using a mix of primary and secondary research methods. Using a descriptive and thorough design approach allows the data to be gathered without any influence and a larger scale of data to represent the whole digital nomadic community without having confounding variables.   The qualitative research will use an ethnographic design approach to analyse statistical data from secondary survey sources to examine demographic data. These qualitative aspects of researching the identification of a digital nomad will be conducted using a phenomenological design. Primary and secondary thematic and content analysis using surveys, interviews, observational data, literature reviews, and case study data will inform the thesis' third part.
        """
        return Chapter(name: "Chapter 1", number: 1, subTitle: "identifying the digital nomad", text: text, imageName: "photoCopy", placeHolderName: "photoCopy")
    }
    
    private static var chapter2: Self {
        let text =
        """
        The second part of the thesis will consist of; the client brief and the design brief. The client brief will research and create a; strategic brief, need statement, client outline requirements and functional requirements. While the project brief will detail   * Building life span and flexibility requirements  * Project expectations  * Space, time and budget parameters  to ensure they are aligned with the client's vision and needs  * Client roles and the project structure  * Contextual information  * Objectives and priorities of the  project  * User information  * Client description  * Site information  * Spatial requirements  * Technical requirements  * Component requirements  * Project requirements  * Environmental concerns   * Sustainability NEWLINE The design brief will research and analyse how existing buildings are built for cold climates and digital nomadic living by looking at numerous categories; environment, transport, design, technical,   economic, management, social, time and legal. This design brief will begin to form a kit of parts for the fabric and form of the proposal and inform the businesses/client brief. The Arctic Coworking Lodge will start the research and, consequently, bring in multiple precedents to learn and develop the design proposal.    Design and client briefs will be created through quantitative and qualitative research methods, which will be used to deduce the primary and secondary descriptive research on what areas need to be addressed.   At this point of the thesis, the research analysed in quantitative and qualitative forms gathered in parts one and two of the thesis will be used to create a design proposal that will begin the experimental research by developing a design proposal.
        """
        return Chapter(name: "Chapter 2", number: 2, subTitle: nil, text: text, imageName: "lightBulb", placeHolderName: "lightBulb")
    }
    
    private static var chapter3: Self {
        Chapter(name: "Chapter 3", number: 3, subTitle: nil, text: "text", imageName: "thermometer", placeHolderName: "thermometer")
    }
    
    private static var chapter4: Self {
        Chapter(name: "Chapter 4", number: 4, subTitle: nil, text: "text", imageName: "key", placeHolderName: "key")
    }
    
    private static var chapter5: Self {
        Chapter(name: "Chapter 5", number: 5, subTitle: nil, text: "text", imageName: "thermometer", placeHolderName: "thermometer")
    }
    
    private static var chapter6: Self {
        Chapter(name: "Chapter 6", number: 6, subTitle: nil, text: "text", imageName: "key", placeHolderName: "key")
    }
    
    private static var chapter7: Self {
        Chapter(name: "Chapter 7", number: 7, subTitle: nil, text: "text", imageName: "key", placeHolderName: "key")
    }
    
    private static var chapter8: Self {
        Chapter(name: "Chapter 8", number: 8, subTitle: nil, text: "text", imageName: "key", placeHolderName: "key")
    }
    
    private static var chapter9: Self {
        Chapter(name: "Chapter 9", number: 9, subTitle: nil, text: "text", imageName: "thermometer", placeHolderName: "thermometer")
    }
    
    private static var chapter10: Self {
        Chapter(name: "Chapter 10", number: 10, subTitle: nil, text: "text", imageName: "key", placeHolderName: "key")
    }
}
