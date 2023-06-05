

import SwiftUI

struct PageDetailView: View {
    var selectedItem: MockData
    var body: some View {
        TabView {
            ForEach(selectedItem.imageName, id: \.self) { name in
                ZStack {
                    Image("\(name)")
                        .resizable()
                }
            }
            .padding(.all, 0)
        }
        .frame(width: UIScreen.main.bounds.width, height: 360)
        .tabViewStyle(PageTabViewStyle())
    }
}

