

import SwiftUI
import MapKit

struct HotelDetailsView: View {
    @StateObject var viewModel = HotelDetailsViewModel()
    @Environment(\.presentationMode) var presentationMode
    @State private var isSheetPresented = false
    @State private var sheetHeight: CGFloat = .zero
    
    var selectedItem: MockData
    
    var body: some View {
            VStack {
                HStack(spacing: 5) {
                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                        
                    }){
                        Image("back")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 12, height: 12)
                            .clipShape(Circle())
                        Text("Hotel Huntington")
                            .frame(height: 22)
                            .font(AppFont.semibold(size: 17).font)
                            .foregroundColor(AppColor.title.color)
                    }
                    Spacer()
                    Button(action: {
                        
                    }) {
                        Image("dots")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                            .padding(.trailing, 8)
                    }
                    .padding(.top, 0)
                }
            }
           
        .frame(height: 38)
        .padding(.horizontal, 10)
        
        ScrollView {
            LazyHStack {
                PageDetailView(selectedItem: selectedItem)
                GeometryReader { geometry in
                        Image("mapButton")
                            .resizable()
                            .frame(width: 52, height: 52)
                            .offset(x: geometry.size.width - 90 , y: geometry.size.height - 70)
                    }
            }
            .padding(.bottom, 24)
            
            VStack(alignment: .leading, spacing: 8) {
                Text(selectedItem.hotelName)
                    .font(AppFont.semibold(size: 22).font)
                    .multilineTextAlignment(.leading)
                    .lineLimit(nil)
                    .padding(.horizontal)
                
                Text(selectedItem.location)
                    .font(AppFont.regular(size: 17).font)
                    .foregroundColor(AppColor.lightGray.color.opacity(0.6))
                    .multilineTextAlignment(.leading)
                    .lineLimit(nil)
                    .padding(.horizontal)
                HStack(spacing: 4){
                    Image("star")
                        .frame(width: 16, height: 16)
                    HStack(spacing: 0){
                        Text("\(selectedItem.rating)")
                            .font(AppFont.semibold(size: 16).font)
                        Text("\(selectedItem.reviews)")
                            .font(AppFont.semibold(size: 16).font)
                            .foregroundColor(AppColor.lightGray.color.opacity(0.6))
                    }
                }
                .padding(.horizontal, 16)
                .padding(.bottom, 24)
                
                Text(selectedItem.info)
                    .font(AppFont.regular(size: 17).font)
                    .multilineTextAlignment(.leading)
                    .lineLimit(nil)
                    .padding(.horizontal, 16)
                    .padding(.bottom, 24)
                
                Text(selectedItem.price)
                    .font(AppFont.regular(size: 22).font)
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal, 16)
                    .padding(.bottom, 34)
            }
            .padding(.bottom, 20)
            .padding(.leading, 16)
            .padding(.trailing, 16)
            .frame(maxWidth: .infinity, alignment: .leading)
            
            VStack(alignment: .leading, spacing: 8) {
                Text("Location")
                    .font(AppFont.semibold(size: 16).font)
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal, 16)
                    .padding(.bottom, 24)
                    
                
                MapView(coordinate: viewModel.locationCoordinate)
                    .edgesIgnoringSafeArea(.all)
                    .frame(height: 215)
                    .padding(.horizontal, 16)
                    .padding(.bottom, 15)
            }
            .padding(.leading, 16)
            .padding(.trailing, 16)
            Button(action: {
                // Open sheet here
                isSheetPresented = true
            }, label: {
                HStack(spacing: 11) {
                    Image("bookIcon")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 18, height: 18)
                    
                    Text("Book Now")
                        .font(AppFont.semibold(size: 17).font)
                        .foregroundColor(.white)
                }
                .frame(maxWidth: .infinity)
                .frame(height: 52)
                .background(AppColor.buttonColor.color)
                .cornerRadius(20)
                .padding(.horizontal, 16)
            })
            .padding(.bottom, 15)
            .padding(.leading, 16)
            .padding(.trailing, 16)
            .sheet(isPresented: $isSheetPresented, onDismiss: {
                sheetHeight = 0
            }) {
                BookView()
                    .padding()
                    .overlay {
                        GeometryReader { geometry in
                            Color.clear.preference(key: InnerHeightPreferenceKey.self, value: geometry.size.height)
                        }
                    }
                    .onPreferenceChange(InnerHeightPreferenceKey.self) { newHeight in
                        sheetHeight = newHeight
                    }
                    .presentationDetents([.height(sheetHeight)])
            }
        }
    }
    
    struct InnerHeightPreferenceKey: PreferenceKey {
        static var defaultValue: CGFloat = .zero
        static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
            value = nextValue()
        }
    }
}
   
    
    
