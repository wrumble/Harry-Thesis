//
//  TabBar.swift
//  DN|Sub -0 Design (iOS)
//
//  Created by Wayne Rumble on 29/04/2022.
//

import SwiftUI

struct TabBar: View {
    
    @StateObject var router: Router
    
    let size: CGSize
    
    var body: some View {
        let tabBarHeight = size.height/8
        HStack {
            let iconSize = tabBarHeight * 0.67
            Spacer()
            TabBarIcon(router: router, size: iconSize, screen: .home)
            Spacer()
            TabBarIcon(router: router, size: iconSize, screen: .chapters)
            Spacer()
            TabBarIcon(router: router, size: iconSize, screen: .bibliography)
            Spacer()
            TabBarIcon(router: router, size: iconSize, screen: .chapterReader)
            Spacer()
        }
        .frame(width: size.width, height: tabBarHeight)
        .background(Color.tabBarBackground.shadow(color: Color.chapterViewBottomDropShadow.opacity(0.43), radius: 14, x: 0, y: -6))
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar(router: Router(), size: CGSize(width: 300, height: 600))
    }
}
