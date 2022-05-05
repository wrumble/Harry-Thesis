//
//  BibliographyViewModel.swift
//  DN|Sub -0 Design
//
//  Created by Wayne Rumble on 05/05/2022.
//

import Combine

class BibliographyViewModel: ObservableObject {
    
    private let bibliographyRepository = BibliographyRepository()
    @Published var bibliography: Bibliography? = nil
    
    private var cancellables: Set<AnyCancellable> = []
    
    init() {
        bibliographyRepository.$bibliography
            .assign(to: \.bibliography, on: self)
            .store(in: &cancellables)
    }
}
