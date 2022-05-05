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
        
    var statusBarHeight: CGFloat
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(spacing: 50) {
                if viewModel.hasTitleItems {
                    TitleItemsView(titleItems: viewModel.titleItems)
                }
                
                if viewModel.hasTitleItems && viewModel.hasCredentials {
                    SpacerView()
                }
                
                if let credentials = viewModel.credentials {
                    CredentialsView(credentials: credentials)
                }
                
                if viewModel.hasCredentials && viewModel.hasFormatItems {
                    SpacerView()
                }
                
                if viewModel.hasFormatItems {
                    FormatItemsView(formatItems: viewModel.formatItems)
                }
                
                if viewModel.hasFormatItems && viewModel.hasPrologueItems {
                    SpacerView()
                }
                
                if viewModel.hasPrologueItems {
                    ProloguesView(prologueItems: viewModel.prologueItems)
                        .padding(.top, -80)
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
        let homeScreen = HomeScreen(statusBarHeight: 20)
        homeScreen.viewModel.titleItems = TitleItem.defaultData
        homeScreen.viewModel.credentials = Credentials.defaultData
        homeScreen.viewModel.formatItems = FormatItem.defaultData
        homeScreen.viewModel.prologueItems = PrologueItem.defaultData
        return homeScreen
    }
}
