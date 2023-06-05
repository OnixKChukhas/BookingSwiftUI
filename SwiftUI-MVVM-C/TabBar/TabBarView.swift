//
//  TabBarView.swift
//  SwiftUI-MVVM-C
//
//  Created by Konstantin Chukhas on 05.06.2023.
//

import SwiftUI

struct TabBarView: View {
    
    @State var selected: PageType = .home
    @State var showMenu = false
    
    var body: some View {
        NavigationView {
            GeometryReader { geometry in
                VStack {
                    
                    Spacer()
                    switch selected {
                    case .home:
                        HotelListCoordinator()
                    case .confirmation:
                        Text(PageType.confirmation.rawValue)
                    case .notification:
                        Text(PageType.notification.rawValue)
                    case .profile:
                        Text(PageType.profile.rawValue)
                    }
                    Spacer()
                        HStack {
                            Spacer()
                            TabBarItemView(selected: $selected, tab: .home, width: 21, height: 21)
                            Spacer()
                            TabBarItemView(selected: $selected, tab: .confirmation, width: 21, height: 21)
                            Spacer()
                            TabBarItemView(selected: $selected, tab: .notification, width: 21, height: 21)
                            Spacer()
                            TabBarItemView(selected: $selected, tab: .profile, width: 21, height: 21)
                            Spacer()
                        }
                        .frame(width: geometry.size.width, height: geometry.size.height/10)
                        .background(Color("TabBarBackground").shadow(radius: 2))
                }
                .edgesIgnoringSafeArea(.bottom)
            }
        }
    }
}

