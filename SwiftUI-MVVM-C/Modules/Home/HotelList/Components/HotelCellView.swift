//
//  HotelCellView.swift
//  SwiftUI-MVVM-C
//
//  Created by Konstantin Chukhas on 04.06.2023.
//

import SwiftUI

struct HotelCellView: View {
    let data: MockData
    
    var body: some View {
        VStack {
            HStack(alignment: .top, spacing: 5) {
                Image("avatar")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 48, height: 48)
                    .clipShape(Circle())
                
                VStack(alignment: .leading, spacing: 2) {
                    HStack{
                        Text(data.name)
                            .font(AppFont.semibold(size: 16).font)
                        Image("tick")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 15, height: 15)
                            .clipShape(Circle())
                            
                        Spacer()
                        
                        Button(action: {
                            
                        }) {
                            Image("dots")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 20, height: 20)
                                .clipShape(Circle())
                                
                        }
                    }
                    Text(data.city)
                        .font(AppFont.regular(size: 14).font)
                        .foregroundColor(AppColor.lightGray.color)
                        .multilineTextAlignment(.leading)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.trailing, 8)
            .padding(.leading, 8)
            
            CollectionView(imageName: data.imageName)
        }
        VStack(alignment: .leading, spacing: 5) {
            Text(data.hotelName)
                .font(AppFont.semibold(size: 16).font)
                .multilineTextAlignment(.leading)
            
            Text(data.description)
                .font(AppFont.regular(size: 16).font)
                .foregroundColor(AppColor.lightGray.color.opacity(0.6))
                .multilineTextAlignment(.leading)

            
            Text(data.price)
                .font(AppFont.regular(size: 15).font)
                .multilineTextAlignment(.leading)
        }
        .padding(.bottom, 20)
    }
}
