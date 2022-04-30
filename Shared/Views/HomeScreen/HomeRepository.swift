//
//  HomeRepository.swift
//  DN|Sub -0 Design
//
//  Created by Wayne Rumble on 30/04/2022.
//


import FirebaseFirestore
import FirebaseFirestoreSwift
import Combine


class HomeRepository: ObservableObject {
    
    private let store = Firestore.firestore()
    
    @Published var titleItems: [TitleItem] = []
    
    init() {
        store.settings.isPersistenceEnabled = true
        getTitleItems()
    }
    
    func getTitleItems() {
        store.collection("titleItems")
            .addSnapshotListener { querySnapshot, error in
                guard let documents = querySnapshot?.documents else {
                    print("No TitleItems for HomeScreen")
                    return
                }
                
                self.titleItems = documents.compactMap { document in
                    try? document.data(as: TitleItem.self)
                }
                
            
                self.titleItems.sort(by: { $0.position < $1.position })
            }
    }
}
