//
//  PageType.swift
//  SwiftUI-MVVM-C
//
//  Created by Konstantin Chukhas on 05.06.2023.
//

import SwiftUI

enum PageType: String {
    
    case home = "Home"
    case confirmation = "Search"
    case notification = "Message"
    case profile = "profile"
    
    var image: String {
        switch self {
        case .home: return "home"
        case .confirmation: return "confirmation"
        case .notification: return "notification"
        case .profile: return "profile"
        }
    }
}
