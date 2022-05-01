//
//  FirebaseImage.swift
//  DN|Sub -0 Design
//
//  Created by Wayne Rumble on 01/05/2022.
//

import SwiftUI
import FirebaseStorage
import SDWebImageSwiftUI

struct FirebaseImage: View {
        
    @State private var imageURL = URL(string: "")
    
    private var placeHolderName: String
    private var imageName: String
    
    init(imageName: String, placeHolderName: String) {
        self.imageName = imageName
        self.placeHolderName = placeHolderName
    }
    
    private func loadImage() {
        let storage = Storage.storage()
        let ref = storage.reference().child("\(imageName).png")
        ref.downloadURL { url, error in
            if let error = error {
                print("WTF: \(error.localizedDescription)")
            }
            self.imageURL = url
        }
    }
  
    var body: some View {
        WebImage(url: imageURL)
            .placeholder {
                Image(placeHolderName)
            }
            .indicator(.activity)
            .onAppear(perform: loadImage)
    }
}
