//
//  HomeScreen.swift
//  DN|Sub -0 Design (iOS)
//
//  Created by Wayne Rumble on 29/04/2022.
//

import SwiftUI
import Firebase

struct HomeScreen: View {
    
    @ObservedObject var viewModel = HomeScreenViewModel()
    
    @StateObject var router: Router
    
    var statusBarHeight: CGFloat
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(spacing: 50) {
                TitleItemsView(titleItems: viewModel.titleItems)
                if viewModel.titleItems.count > 0 && viewModel.credentials != nil {
                    SpacerView()
                }
                if let credentials = viewModel.credentials {
                    CredentialsView(credentials: credentials)
                }
            }
            .padding(.top, statusBarHeight + 20)
            .frame(maxWidth: .infinity)
        }
        .frame(
            maxWidth: .infinity,
            maxHeight: .infinity
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
        let homeScreen = HomeScreen(router: Router(), statusBarHeight: 20)
        homeScreen.viewModel.titleItems = [.mock(), .mock()]
        return homeScreen
    }
}
