//
//  BibliographyRepository.swift
//  DN|Sub -0 Design
//
//  Created by Wayne Rumble on 05/05/2022.
//

import FirebaseFirestore
import FirebaseFirestoreSwift
import Combine


class BibliographyRepository: ObservableObject {
    
    private let path: String = "bibliography"
    private let store = Firestore.firestore()
    
    @Published var bibliography: Bibliography? = .defaultData
    
    init() {
        store.settings.isPersistenceEnabled = true
        getBibliography()
    }
    
    func getBibliography() {
        store.collection(path)
            .addSnapshotListener(includeMetadataChanges: true) { querySnapshot, error in
                guard let snapshot = querySnapshot,
                let document = snapshot.documents.first else {
                    self.bibliography = .defaultData
                    return
                }
                                
                self.bibliography = try? document.data(as: Bibliography.self)
                
                if snapshot.metadata.isFromCache && snapshot.documents.count == 0 {
                    self.bibliography = .defaultData
                }
            }
    }
}
