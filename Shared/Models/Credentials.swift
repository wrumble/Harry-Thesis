//
//  Credentials.swift
//  DN|Sub -0 Design
//
//  Created by Wayne Rumble on 30/04/2022.
//

import Foundation
import SwiftUI

struct Credentials: Hashable, Identifiable, Codable, Equatable {
    var id: String {
        UUID().uuidString
    }
    
    let authorsName: String?
    let dissertationType: String?
    let prefix: String?
    let studentID: String?
    let universityName: String?
}

extension Credentials {
    
    private var numberOfDetails: Int {
        return [universityName, dissertationType, studentID].compactMap { $0 }.count
    }
    
    var spacing: CGFloat {
        10
    }
    
    var detailsViewHeight: CGFloat {
        return CGFloat((30 * numberOfDetails) + (4 * Int(spacing)))
    }
}

extension Credentials {
    static func mock(
        authorsName: String = "authorsName",
        dissertationType: String? = "dissertationType",
        prefix: String? = "prefix",
        studentID: String? = "studentID",
        universityName: String? = "universityName") -> Self {
            
        .init(
            authorsName: authorsName,
            dissertationType: dissertationType,
            prefix: prefix,
            studentID: studentID,
            universityName: universityName)
    }
    
    static var defaultData: Self {
        Credentials(authorsName: "Harry James Oliver Parkinson", dissertationType: "Architectural Thesis", prefix: "by", studentID: "0009919971.6", universityName: "University of Greenwich")
    }
}
