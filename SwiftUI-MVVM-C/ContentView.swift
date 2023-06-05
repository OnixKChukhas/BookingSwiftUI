//
//  ContentView.swift
//  SwiftUI-MVVM-C
//
//  
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab = 0
    
    init() {
        // Customize the appearance of the tab bar
        let appearance = UITabBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = UIColor.white
        
        UITabBar.appearance().standardAppearance = appearance
    }
    
    var body: some View {
        TabView(selection: $selectedTab)  {
            HotelListCoordinator()
                .tabItem {
                    Image("home")
                        .renderingMode(.template)
                }
                .tag(0)
            ConfirmationView()
                .tabItem {
                    Image("confirmation")
                        .renderingMode(.template)
                }
                .tag(1)
            NotificationView()
                .tabItem {
                    Image("notification")
                        .renderingMode(.template)
                }
                .tag(2)
            ProfileView()
                .tabItem {
                    Image("profile")
                        .renderingMode(.template)
                }
                .tag(3)
        }
        .accentColor(AppColor.buttonColor.color)
    }
}

