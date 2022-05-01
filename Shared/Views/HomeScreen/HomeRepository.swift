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
    @Published var credentials: Credentials? = Credentials.mock()
    
    init() {
        let settings = FirestoreSettings()
        settings.isPersistenceEnabled = true
        store.settings = settings

        getTitleItems()
        getCredentials()
    }
    
    func getTitleItems() {
        store.collection("titleItems")
            .addSnapshotListener(includeMetadataChanges: true) { querySnapshot, error in
                guard let snapshot = querySnapshot else {
                    self.titleItems = [.mock(), .mock(), .mock()]
                    return
                }
                                
                self.titleItems = snapshot.documents.compactMap { try? $0.data(as: TitleItem.self) }
                
                if snapshot.metadata.isFromCache && snapshot.documents.count == 0 {
                    self.titleItems = [.mock(), .mock(), .mock()]
                }
            
                self.titleItems.sort(by: { $0.position < $1.position })
            }
    }
    
    func getCredentials() {
        store.collection("credentials")
            .addSnapshotListener(includeMetadataChanges: true) { querySnapshot, error in
                guard let snapshot = querySnapshot,
                let document = snapshot.documents.first else {
                    self.credentials = .mock()
                    return
                }
                                
                self.credentials = try? document.data(as: Credentials.self)
                
                if snapshot.metadata.isFromCache && snapshot.documents.count == 0 {
                    self.credentials = .mock()
                }
            }
    }
}
