//
//  SpacerView.swift
//  DN|Sub -0 Design
//
//  Created by Wayne Rumble on 01/05/2022.
//

import SwiftUI

struct SpacerView: View {
    
    var body: some View {
        Image("spacerView")
            .resizable()
            .frame(width: UIScreen.main.bounds.width * 0.7, height: 24)
            .shadow(radius: 4, x: 0, y: 4)
    }
}

struct SpacerView_Previews: PreviewProvider {
    static var previews: some View {
        SpacerView()
    }
}
