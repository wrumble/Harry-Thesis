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
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(spacing: 80) {
                spacerView
                titleItemsView
                spacerView
            }
            .padding(.top, 66)
            .frame(maxWidth: .infinity)
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
    
    var spacerView: some View {
        Image("spacerView")
            .resizable()
            .frame(width: UIScreen.main.bounds.width * 0.7, height: 24)
            .shadow(radius: 4, x: 0, y: 4)
    }
    
    var titleItemsView: some View {
        VStack(spacing: 16) {
            ForEach(viewModel.titleItems, id: \.position) { titleItem in
                ZStack {
                    Image("titleItemView")
                    Image(titleItem.icon)
                }
                Text(titleItem.text.uppercased())
                    .font(.subHeader)
                    .foregroundColor(Color.fontGreen)
            }
        }
        .padding(56)
        .frame(
            maxWidth: UIScreen.main.bounds.width - 70,
            maxHeight: CGFloat(viewModel.titleItems.count) * 220
        )
        .background(
            LinearGradient(colors: [Color.chapterViewLeftFadeBackground, Color.chapterViewRightFadeBackground], startPoint: .leading, endPoint: .trailing)
        )
        .clipShape(RoundedRectangle(cornerRadius: 24))
        .shadow(color: Color.chapterViewBottomDropShadow, radius: 19, x: 4, y: 3)
        .shadow(color: Color.chapterViewTopDropShadow, radius: 16, x: -7, y: -7)
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        let homeScreen = HomeScreen(router: Router())
        homeScreen.viewModel.titleItems = [.mock(), .mock()]
        return homeScreen
    }
}
