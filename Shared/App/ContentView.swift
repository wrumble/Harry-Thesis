//
//  ContentView.swift
//  Shared
//
//  Created by Wayne Rumble on 29/04/2022.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var router: Router
    
    var body: some View {
        GeometryReader { geometry in
            VStack(spacing: 0) {
                TabScreen(router: router, statusBarHeight: geometry.safeAreaInsets.top)
                TabBar(router: router, size: geometry.size)
            }
            .background(
                LinearGradient(colors: [Color.leftFadeBackground, Color.rightFadeBackground], startPoint: .leading, endPoint: .trailing)
            )
            .edgesIgnoringSafeArea([.top, .bottom])
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(router: Router())
    }
}
