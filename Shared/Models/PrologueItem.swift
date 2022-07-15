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
    let examplePlaceHolderName: String?
    let exampleImage: String?
    let exampleSubText: String?
}

extension PrologueItem {
    var hasExample: Bool {
        exampleTitle != nil &&
            exampleImage != nil &&
            examplePlaceHolderName != nil &&
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
        examplePlaceHolderName: String = "examplePlaceHolderName",
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
            examplePlaceHolderName: examplePlaceHolderName,
            exampleImage: exampleImage,
            exampleSubText: exampleSubText)
    }
    
    static var defaultData: [Self] {
        [item1, item2, item3, item4, item5, item6, item7, item8, item9]
    }
    
    private static var item1: Self {
        let text =
        """
        The research subject area of this thesis explores the relationship between digital nomads and the architecture they inhabit within cold environments. It raises attention to the fact that, in most cases, the current spaces provided that these individuals inhabit are not purposefully designed for their lifestyle. The objective is to create a thesis for businesses on designing accommodation for the digital nomads living in cold climates. To achieve this, it will begin by identifying what a digital nomad is, creating a brief for a business and client, and then proposing a design.
        """
        return PrologueItem(
            text: text,
            imageName: "bulbCogs",
            position: 1,
            placeHolderName: "bulbCogs",
            title: "introduction",
            subTitle: nil,
            exampleTitle: nil,
            examplePlaceHolderName: nil,
            exampleImage: nil,
            exampleSubText: nil)
    }
    
    private static var item2: Self {
        let text =
        """
        The research is pertinent and topical today as there is a considerable increase in the digital nomad population. A survey conducted in 2019 found that 4.1 million workers in the US described themselves as digital nomads (The changing nature of American workforce, 2021).   Similarly, if counted as a single population, the nomadic community would be the 41st largest population belonging to one country, according to a survey conducted in 2021 (63 Surprising Digital Nomad Statistics in 2021 – A Brother Abroad, 2021). Additionally, the founder of 'The Nomadlist.com' predicts that by 2035 one in three freelancers will become a digital nomad. Furthermore, by 2035, sixty per cent of the working population will be freelancing, with a predicted billion people identifying themselves as digital nomads (Jacobs and Gussekloo, 2016). These predictions of a significant global increase in the numbers of digital nomads are why we need to start designing purposeful habitats for this population, or it could become a global problem. Thus, this thesis will focus on developing a thesis on how to design proposals for cold environments.
        """
        return PrologueItem(
            text: text,
            imageName: "page",
            position: 2,
            placeHolderName: "page",
            title: "context",
            subTitle: nil,
            exampleTitle: nil,
            examplePlaceHolderName: nil,
            exampleImage: nil,
            exampleSubText: nil)
    }
    
    private static var item3: Self {
        let text =
        """
        This thesis runs parallel with a current design project which takes an existing digital nomad hub and expands, designing a community located in the Lofoten archipelagos islands of Norway. Due to the location's extreme climate and environment, the design must address its harsh conditions. Therefore, the colder environment will develop a focus and advancement in the design for this chosen lifestyle within this climate.   The thesis enquires into a particular typology of architecture which means it requires to be highly tailored to its natural surroundings and occupants. Therefore, the first part of the thesis will introduce the topic and define digital nomads, understand the motivation behind becoming a digital nomad, what the lifestyle involves, and analyse the current digital nomad demographics. It will then analyse the gathered information so that the design can be informed and the business/client can better understand how to accommodate digital nomads, enabling them to form their brief accordingly. Aspects of the digital nomad lifestyle that need to be analysed are; the perks and challenges of the lifestyle, the suitable careers, work-life balance, how to adjust to the lifestyle and travel destinations, becoming a minimalist, and how they integrate into different locations and which possessions to take with them.   Using qualitative and quantitative measures will deduce the identity of a digital nomad using a mix of primary and secondary research methods. Using a descriptive and thorough design approach allows the data to be gathered without any influence and a larger scale of data to represent the whole digital nomadic community without having confounding variables.   The qualitative research will use an ethnographic design approach to analyse statistical data from secondary survey sources to examine demographic data. These qualitative aspects of researching the identification of a digital nomad will be conducted using a phenomenological design. Primary and secondary thematic and content analysis using surveys, interviews, observational data, literature reviews, and case study data will inform the thesis' third part.
        """
        return PrologueItem(
            text: text,
            imageName: "harrySmall",
            position: 3,
            placeHolderName: "harrySmall",
            title: "part 1",
            subTitle: "identifying the digital nomad",
            exampleTitle: nil,
            examplePlaceHolderName: nil,
            exampleImage: nil,
            exampleSubText: nil)
    }
    
    private static var item4: Self {
        let text =
        """
        The second part of the thesis will consist of; the client brief and the design brief. The client brief will research and create a; strategic brief, need statement, client outline requirements and functional requirements. While the project brief will detail   * Building life span and flexibility requirements  * Project expectations  * Space, time and budget parameters  to ensure they are aligned with the client's vision and needs  * Client roles and the project structure  * Contextual information  * Objectives and priorities of the  project  * User information  * Client description  * Site information  * Spatial requirements  * Technical requirements  * Component requirements  * Project requirements  * Environmental concerns   * Sustainability NEWLINE The design brief will research and analyse how existing buildings are built for cold climates and digital nomadic living by looking at numerous categories; environment, transport, design, technical,   economic, management, social, time and legal. This design brief will begin to form a kit of parts for the fabric and form of the proposal and inform the businesses/client brief. The Arctic Coworking Lodge will start the research and, consequently, bring in multiple precedents to learn and develop the design proposal.    Design and client briefs will be created through quantitative and qualitative research methods, which will be used to deduce the primary and secondary descriptive research on what areas need to be addressed.   At this point of the thesis, the research analysed in quantitative and qualitative forms gathered in parts one and two of the thesis will be used to create a design proposal that will begin the experimental research by developing a design proposal.
        """
        return PrologueItem(
            text: text,
            imageName: "bookSmall",
            position: 4,
            placeHolderName: "bookSmall",
            title: "part 2",
            subTitle: "forming a design and client brief",
            exampleTitle: nil,
            examplePlaceHolderName: nil,
            exampleImage: nil,
            exampleSubText: nil)
    }
    
    private static var item5: Self {
        let text =
        """
        The third part of the thesis will use parts one (digital nomad identification) and two (project, client and design brief) to create a proposal. The kit of parts generated from the identification of a digital nomad and design brief is then manipulated by the construction business/client brief. Firstly, the concept phase will analyse; location, site, existing buildings, landscape and risks. Once a concept has been conceived, it will be developed, looking at the structural design, required services and architectural details. Following this, it will need to be tested against the target audience, survey a preference test, and then a prototype can be made, tested with the users and then can reflect on its quality. Consequently, the proposal will need to be optimised before construction to ensure it is appropriate. This can be done by re-evaluating some of the constraints and analysing the design using a simulator to determine if it is well designed for; the digital nomad lifestyle, cold climates, ease of transport, and the stresses and loads it will endure.  As a result, the hypothesised design for nomads inhabiting cold climates will be implemented and analysed. Creating this exemplar design will inform and set a precedent for further projects when developing dwellings suitable for digital nomads within cold climates and be viewed as a handbook.  The output may include; testing the exemplar design created to be tested against an audience through interviews, surveys and polls.
        """
        return PrologueItem(
            text: text,
            imageName: "penTip",
            position: 5,
            placeHolderName: "penTip",
            title: "part 3",
            subTitle: "creating a design proposal",
            exampleTitle: nil,
            examplePlaceHolderName: nil,
            exampleImage: nil,
            exampleSubText: nil)
    }
    
    private static var item6: Self {
        return PrologueItem(
            text: nil,
            imageName: nil,
            position: 6,
            placeHolderName: nil,
            title: "digital nomad dwelling examples",
            subTitle: nil,
            exampleTitle: nil,
            examplePlaceHolderName: nil,
            exampleImage: nil,
            exampleSubText: nil)
    }
    
    private static var item7: Self {
        return PrologueItem(
            text: nil,
            imageName: nil,
            position: 7,
            placeHolderName: nil,
            title: nil,
            subTitle: nil,
            exampleTitle: "ARCTIC CO-WORKING LODGE",
            examplePlaceHolderName: "lodge",
            exampleImage: "lodge",
            exampleSubText: "(arcticcoworkinglodge, 2019)")
    }
    
    private static var item8: Self {
        return PrologueItem(
            text: nil,
            imageName: nil,
            position: 8,
            placeHolderName: nil,
            title: nil,
            subTitle: nil,
            exampleTitle: "‘2468 HOUSE",
            examplePlaceHolderName: "expandedHouse",
            exampleImage: "expandedHouse",
            exampleSubText: "(2-4-6-8 House, n.d.)")
    }
    
    private static var item9: Self {
        return PrologueItem(
            text: nil,
            imageName: nil,
            position: 9,
            placeHolderName: nil,
            title: nil,
            subTitle: nil,
            exampleTitle: "‘2468 HOUSE",
            examplePlaceHolderName: "expandedHouse",
            exampleImage: "expandedHouse",
            exampleSubText: "(Zoku Copenhagen Accommodation: Loft Apartments In Copenhagen, 2021)")
    }
}
