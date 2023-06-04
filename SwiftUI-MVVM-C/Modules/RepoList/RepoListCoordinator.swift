

import SwiftUI

struct RepoListCoordinator: View {
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
