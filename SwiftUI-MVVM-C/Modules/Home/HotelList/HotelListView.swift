


import SwiftUI

struct HotelListView: View {
    @StateObject var viewModel = HotelListViewModel()
    let tapOnRepoAction: (MockData) -> Void
    @State private var selectedButton: String = ""
    @State private var selectedTitle: String = "Already Booked"
    
    
    var body: some View {
        VStack {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 8) {
                    ForEach(viewModel.buttonTitles, id: \.self) { title in
                        Button(action: {
                            selectedTitle = title
                        }) {
                            Text(title)
                                .padding()
                                .frame(height: 38)
                                .background(selectedTitle == title ? AppColor.buttonColor.color : AppColor.buttonLightGrayColor.color)
                                .foregroundColor(selectedTitle == title ? .white : .black)
                                .font(AppFont.semibold(size: 13).font)
                                .cornerRadius(20)
                        }
                    }
                }
                .padding(.horizontal)
                .padding(.top, 0)
            }
            List {
                ForEach(viewModel.data.indices, id: \.self) { index in
                    HotelCellView(data: viewModel.data[index])
                        .onTapGesture {
                            tapOnRepoAction(viewModel.data[index])
                        }
                }
            }
        }
    }
}

struct CollectionView: View {
    let imageName: [String]
    var body: some View {
        LazyHStack(alignment: .center) {
            PageView(imageName: imageName)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

