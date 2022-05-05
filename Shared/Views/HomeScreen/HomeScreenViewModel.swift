//
//  HomeScreenViewModel.swift
//  DN|Sub -0 Design
//
//  Created by Wayne Rumble on 30/04/2022.
//

import Combine

class HomeScreenViewModel: ObservableObject {
    
    private let homeRepository = HomeRepository()
    
    @Published var titleItems: [TitleItem] = []
    @Published var credentials: Credentials? = nil
    @Published var formatItems: [FormatItem] = []
    @Published var prologueItems: [PrologueItem] = []
    
    private var cancellables: Set<AnyCancellable> = []
    
    var hasTitleItems: Bool {
        titleItems.count > 0
    }
    
    var hasCredentials: Bool {
        credentials != nil
    }
    
    var hasFormatItems: Bool {
        formatItems.count > 0
    }
    
    var hasPrologueItems: Bool {
        prologueItems.count > 0
    }
    
    init() {
        homeRepository.$titleItems
            .assign(to: \.titleItems, on: self)
            .store(in: &cancellables)
        
        homeRepository.$credentials
            .assign(to: \.credentials, on: self)
            .store(in: &cancellables)
        
        homeRepository.$formatItems
            .assign(to: \.formatItems, on: self)
            .store(in: &cancellables)
        
        homeRepository.$prologueItems
            .assign(to: \.prologueItems, on: self)
            .store(in: &cancellables)
    }
    
}
