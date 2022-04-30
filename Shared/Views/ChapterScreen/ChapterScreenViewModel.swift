//
//  ChapterScreenViewModel.swift
//  DN|Sub -0 Design
//
//  Created by Wayne Rumble on 30/04/2022.
//

import Combine

class ChaptersScreenViewModel: ObservableObject {
    
    private let chapterRepository = ChapterRepository()
    @Published var chapters: [Chapter] = []
    
    private var cancellables: Set<AnyCancellable> = []
    
    init() {
        chapterRepository.$chapters
            .assign(to: \.chapters, on: self)
            .store(in: &cancellables)
    }
}
