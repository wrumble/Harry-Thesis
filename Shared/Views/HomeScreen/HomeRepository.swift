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
    
    @Published var titleItems: [TitleItem] = TitleItem.defaultData
    @Published var credentials: Credentials? = Credentials.defaultData
    @Published var formatItems: [FormatItem] = FormatItem.defaultData
    @Published var prologueItems: [PrologueItem] = PrologueItem.defaultData
            
    init() {
        
        let settings = FirestoreSettings()
        settings.isPersistenceEnabled = true
        store.settings = settings

        getTitleItems()
        getCredentials()
        getFormats()
        getPrologueItems()
    }
    
    func getTitleItems() {
        store.collection("titleItems")
            .addSnapshotListener(includeMetadataChanges: true) { querySnapshot, error in
                guard let snapshot = querySnapshot else {
                    self.titleItems = TitleItem.defaultData
                    return
                }
                                
                self.titleItems = snapshot.documents.compactMap { try? $0.data(as: TitleItem.self) }
                
                if snapshot.metadata.isFromCache && snapshot.documents.count == 0 {
                    self.titleItems = TitleItem.defaultData
                }
            
                self.titleItems.sort(by: { $0.position < $1.position })
            }
    }
    
    func getCredentials() {
        store.collection("credentials")
            .addSnapshotListener(includeMetadataChanges: true) { querySnapshot, error in
                guard let snapshot = querySnapshot,
                let document = snapshot.documents.first else {
                    self.credentials = .defaultData
                    return
                }
                                
                self.credentials = try? document.data(as: Credentials.self)
                
                if snapshot.metadata.isFromCache && snapshot.documents.count == 0 {
                    self.credentials = .defaultData
                }
            }
    }
    
    func getFormats() {
        store.collection("formats")
            .addSnapshotListener(includeMetadataChanges: true) { querySnapshot, error in
                guard let snapshot = querySnapshot else {
                    self.formatItems = FormatItem.defaultData
                    return
                }
                                
                self.formatItems = snapshot.documents.compactMap { try? $0.data(as: FormatItem.self) }
                
                if snapshot.metadata.isFromCache && snapshot.documents.count == 0 {
                    self.formatItems = FormatItem.defaultData
                }
                
                self.formatItems.sort(by: { $0.position < $1.position })
            }
    }
    
    func getPrologueItems() {
        store.collection("prologueItems")
            .addSnapshotListener(includeMetadataChanges: true) { querySnapshot, error in
                guard let snapshot = querySnapshot else {
                    self.prologueItems = PrologueItem.defaultData
                    return
                }
                                
                self.prologueItems = snapshot.documents.compactMap { try? $0.data(as: PrologueItem.self) }
                
                if snapshot.metadata.isFromCache && snapshot.documents.count == 0 {
                    self.prologueItems = PrologueItem.defaultData
                }
                
                self.prologueItems.sort(by: { $0.position < $1.position })
            }
    }
}
