//
//  HomeScreen.swift
//  DN|Sub -0 Design (iOS)
//
//  Created by Wayne Rumble on 29/04/2022.
//

import SwiftUI
import Firebase

struct HomeScreen: View {
    
    @StateObject var router: Router
    
    var body: some View {
        VStack {
            Spacer()
            Text("HomeScreen")
            Spacer()
        }
        .frame(
            maxWidth: .infinity,
            maxHeight: .infinity
        )
        .background(
            LinearGradient(colors: [Color.leftFadeBackground, Color.rightFadeBackground], startPoint: .leading, endPoint: .trailing)
        )
        .onAppear() {
            Analytics.logEvent(AnalyticsEventScreenView,
                               parameters: [AnalyticsParameterScreenName: "\(HomeScreen.self)",
                                           AnalyticsParameterScreenClass: "\(HomeScreen.self)"])
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen(router: Router())
    }
}
