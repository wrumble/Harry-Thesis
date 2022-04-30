//
//  DN__0_DesignApp.swift
//  Shared
//
//  Created by Wayne Rumble on 29/04/2022.
//

import SwiftUI
import Firebase

@main
struct DN__0_DesignApp: App {
    
    @StateObject var router = Router()
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView(router: router)
        }
    }
}
