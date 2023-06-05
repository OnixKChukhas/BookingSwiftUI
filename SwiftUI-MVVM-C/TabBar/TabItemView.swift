//
//  TabItemView.swift
//  SwiftUI-MVVM-C
//
//  Created by Konstantin Chukhas on 05.06.2023.
//

import SwiftUI

struct TabBarItemView: View {
    
    @Binding var selected: PageType
    let tab: PageType
    
    let width, height: CGFloat
    
    var body: some View {
        VStack {
            Image(tab.image)
                .renderingMode(.template)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: width, height: height)
                .padding(.all, 8)
            
//            Text(tab.rawValue)
//                .font(.footnote)
            Spacer()
        }
        .padding(.horizontal, -4)
        .onTapGesture {
            selected = tab
        }
        .foregroundColor(selected == tab ? AppColor.buttonColor.color : .black)
    }
}

enum TabBarType: Int {
    case home
    case confirmation
    case notification
    case profile
}
