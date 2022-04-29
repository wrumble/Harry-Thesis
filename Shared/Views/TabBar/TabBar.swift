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
        HStack {
            let iconSize = size.width/6
            Spacer()
            TabBarIcon(router: router, size: iconSize, screen: .home)
            Spacer()
            TabBarIcon(router: router, size: iconSize, screen: .chapters)
            Spacer()
            TabBarIcon(router: router, size: iconSize, screen: .bibliography)
            Spacer()
            TabBarIcon(router: router, size: iconSize, screen: .search)
            Spacer()
        }
        .frame(width: size.width, height: size.height/8)
        .background(Color.tabBarBackground.shadow(radius: 6))
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar(router: Router(), size: CGSize(width: 300, height: 600))
    }
}
