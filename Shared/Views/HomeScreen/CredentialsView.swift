//
//  CredentialsView.swift
//  DN|Sub -0 Design
//
//  Created by Wayne Rumble on 01/05/2022.
//

import SwiftUI

struct CredentialsView: View {
    
    var credentials: Credentials = .defaultData
    
    var body: some View {
        VStack {
            if let prefix = credentials.prefix?.uppercased(), !prefix.isEmpty {
                prefixText(prefix: prefix)
            }
            if let formattedName = credentials.authorsName?
                .uppercased()
                .replacingOccurrences(of: " ", with: "\n\n\n"), !formattedName.isEmpty  {
                authorsNameText(name: formattedName)
            }
            detailsView
        }
    }
    
    private func prefixText(prefix: String) -> some View {
        Text(prefix)
            .font(.subHeader1)
            .foregroundColor(Color.fontGreen)
            .padding(.top, 30)
    }
    
    private func authorsNameText(name: String) -> some View {
        let padding: CGFloat = credentials.prefix != nil ? 80 : 30
        return Text(name)
            .font(.subHeader1)
            .foregroundColor(Color.fontGreen)
            .padding(.top, padding)
            .multilineTextAlignment(.center)
    }
    
    private var detailsView: some View {
        ZStack {
            Image("credentialsBox")
                .resizable()
                .frame(maxWidth: UIScreen.main.bounds.width * 0.83, maxHeight: credentials.detailsViewHeight)
            VStack() {
                if let universityName = credentials.universityName?.uppercased(), !universityName.isEmpty {
                    detailsText(detail: universityName)
                }
                if let dissertationType = credentials.dissertationType?.uppercased(), !dissertationType.isEmpty {
                    detailsText(detail: dissertationType)
                }
                if let studentID = credentials.studentID?.uppercased(), !studentID.isEmpty {
                    studentIDText(studentID: studentID)
                }
            }
        }
        .padding(.top, 80)
    }
    
    private func detailsText(detail: String) -> some View {
        Text(detail)
            .font(.subHeader4)
            .foregroundColor(Color.fontGreen)
            .padding(.top, credentials.spacing)
            .padding(.bottom, credentials.spacing)
    }
    
    private func studentIDText(studentID: String) -> some View {
        Text("STUDENT ID: \(studentID)")
            .font(.subHeader4)
            .foregroundColor(Color.fontGreen)
            .padding(.top, credentials.spacing)
            .padding(.bottom, credentials.spacing)
    }
}

struct CredentialsView_Previews: PreviewProvider {
    static var previews: some View {
        CredentialsView(credentials: .defaultData)
    }
}
