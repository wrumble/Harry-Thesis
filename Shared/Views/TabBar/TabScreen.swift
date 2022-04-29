//
//  TabScreen.swift
//  DN|Sub -0 Design (iOS)
//
//  Created by Wayne Rumble on 29/04/2022.
//

import SwiftUI

struct TabScreen: View {
    
    @StateObject var router: Router
    
    var body: some View {
        switch router.currentScreen {
        case .home:
            HomeScreen(router: router)
        case .chapters:
            Spacer()
            Text("Chapters")
            Spacer()
        case .bibliography:
            Text("Bibliography")
        case .search:
            Text("Search")
        }
    }
}

struct TabScreen_Previews: PreviewProvider {
    static var previews: some View {
        TabScreen(router: Router())
    }
}
