//
//  ChapterRepository.swift
//  DN|Sub -0 Design
//
//  Created by Wayne Rumble on 30/04/2022.
//

import FirebaseFirestore
import FirebaseFirestoreSwift
import Combine


class ChapterRepository: ObservableObject {
    
    private let path: String = "chapters"
    private let store = Firestore.firestore()
    
    @Published var chapters: [Chapter] = Chapter.defaultData
    
    init() {
        store.settings.isPersistenceEnabled = true
        getChapters()
    }
    
    func getChapters() {
        store.collection(path)
            .addSnapshotListener { querySnapshot, error in
                guard let documents = querySnapshot?.documents else {
                    self.chapters = Chapter.defaultData
                    return
                }
                
                self.chapters = documents.compactMap { document in
                    try? document.data(as: Chapter.self)
                }
                
            
                self.chapters.sort(by: { $0.number < $1.number })
            }
    }
}
