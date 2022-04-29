//
//  TabBarIcon.swift
//  DN -0 Design (iOS)
//
//  Created by Wayne Rumble on 29/04/2022.
//

import SwiftUI

struct TabBarIcon: View {
     
    @StateObject var router: Router
    
     let size: CGFloat
     let screen: Screen
    
     var body: some View {
         VStack {
             let isSelected = router.currentScreen == screen
             let image = isSelected ? screen.iconSelected : screen.iconUnSelected
             Image(image)
                 .resizable()
                 .aspectRatio(contentMode: .fit)
                 .frame(width: size, height: size)
                 .padding(.top, 10)
             Spacer()
         }
         .onTapGesture {
             router.currentScreen = screen
         }
     }
 }
