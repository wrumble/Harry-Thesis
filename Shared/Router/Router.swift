//
//  Router.swift
//  DN -0 Design (iOS)
//
//  Created by Wayne Rumble on 29/04/2022.
//

import FirebaseFirestore
import FirebaseFirestoreSwift
import Combine

class Router: ObservableObject {
    
    @Published var currentScreen: Screen = .home
    @Published var currentChapter: Chapter = .chapter1 {
        didSet {
            if isFromLaunch  {
                listener?.remove()
                isFromLaunch = false
            }
        }
    }
    
    private var isFromLaunch = true
    
    private let store = Firestore.firestore()
    private var listener: ListenerRegistration?
    
    init() {
        let settings = FirestoreSettings()
        settings.isPersistenceEnabled = true
        store.settings = settings

        getFirstChapter()
    }
    
    func getFirstChapter() {
        listener = store.collection("chapters")
            .addSnapshotListener { querySnapshot, error in
                guard let snapshot = querySnapshot else {
                    self.currentChapter = .chapter1
                    return
                }
                
                var chapters = snapshot.documents.compactMap { document in
                    try? document.data(as: Chapter.self)
                }
                
                chapters.sort(by: { $0.number < $1.number })
                
                if let firstChapter = chapters.first {
                    self.currentChapter = firstChapter
                }
                
                if snapshot.metadata.isFromCache && snapshot.documents.count == 0 {
                    self.currentChapter = .chapter1
                }
            }
    }

}
