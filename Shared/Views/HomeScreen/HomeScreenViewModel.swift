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
    
    private var cancellables: Set<AnyCancellable> = []
    
    init() {
        homeRepository.$titleItems
            .assign(to: \.titleItems, on: self)
            .store(in: &cancellables)
    }
}
