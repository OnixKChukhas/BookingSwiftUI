//
//  ContentView.swift
//  SwiftUI-MVVM-C
//
//  
//

import SwiftUI

struct ContentView: View {
    @State var selection = 0
    
    var body: some View {
        TabBarView()
//        TabView(selection: $selection) {
//            TabItemView(selection: $selection, tabBarType: .home) {
//                HotelListCoordinator()
//            }
//            .tag(0)
//
//            TabItemView(selection: $selection, tabBarType: .confirmation) {
//                ConfirmationView()
//            }
//            .tag(1)
//
//            TabItemView(selection: $selection, tabBarType: .notification) {
//                NotificationView()
//            }
//            .tag(2)
//
//            TabItemView(selection: $selection, tabBarType: .profile) {
//                ProfileView()
//            }
//            .tag(3)
//        }
    }
}

//struct ContentView: View {
//    @State private var selectedTab = 0
//
//    init() {
//        // Customize the appearance of the tab bar
//        let appearance = UITabBarAppearance()
//        appearance.configureWithOpaqueBackground()
//        appearance.backgroundColor = UIColor.white
//
//        UITabBar.appearance().standardAppearance = appearance
//    }
//
//    var body: some View {
//            TabView(selection: $selectedTab)  {
//                HotelListCoordinator()
//                    .tabItem {
//                        Image("home")
//                            .renderingMode(.template)
//                    }
//                    .tag(0)
//                ConfirmationView()
//                    .tabItem {
//                        Image("confirmation")
//                            .renderingMode(.template)
//                    }
//                    .tag(1)
//                NotificationView()
//                    .tabItem {
//                        Image("confirmation")
//                            .renderingMode(.template)
//                    }
//                    .tag(2)
//                ProfileView()
//                    .tabItem {
//                        Image("profile")
//                            .renderingMode(.template)
//                    }
//                    .tag(3)
//            }
//            .accentColor(AppColor.buttonColor.color)
//        }
//    }
//
//
