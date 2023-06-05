//
//  HotelListCoordinator.swift
//  SwiftUI-MVVM-C
//
//  Created by Konstantin Chukhas on 05.06.2023.
//

import SwiftUI

struct HotelListCoordinator: View {
    @State private var selectedData: MockData?
    @State private var isRepoDetailsActive = false
    
    var body: some View {
            VStack {
                HotelListView(tapOnRepoAction: { mockData in
                    selectedData = mockData
                    isRepoDetailsActive = true
                })
                .listStyle(PlainListStyle())
                
                if let selectedData = selectedData {
                    EmptyNavigationLink(destination: HotelDetailsView(selectedItem: selectedData)
                        .navigationBarBackButtonHidden(true),
                                        isActive: $isRepoDetailsActive)
                }
            }
    }
}
