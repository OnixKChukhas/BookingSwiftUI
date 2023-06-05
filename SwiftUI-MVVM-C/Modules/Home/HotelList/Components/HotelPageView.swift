

import SwiftUI

struct HotelPageView: View {
    let imageName: [String]
    var body: some View {
        TabView {
            ForEach(imageName, id: \.self) { name in
                ZStack {
                    Image("\(name)")
                        .cornerRadius(10)
                }
                .clipShape(RoundedRectangle(cornerRadius: 10.0, style: .continuous))
            }
            .padding(.all, 20)
        }
        .frame(width: UIScreen.main.bounds.width - 20, height: 150)
        .tabViewStyle(PageTabViewStyle())
    }
}
