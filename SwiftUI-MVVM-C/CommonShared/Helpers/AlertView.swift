//
//  AlertView.swift
//  SwiftUI-MVVM-C
//
//  Created by Konstantin Chukhas on 04.06.2023.
//

import Foundation
import SwiftUI

enum AlertAction {
    case ok
    case cancel
    case others
}

struct AlertView: View {
    
    @Binding var shown: Bool
    @Binding var closureAction: AlertAction?
    var title: String
    var message: String
    
    
    var body: some View {
        VStack {
            Text(title)
                .font(.system(.title2))
                .foregroundColor(Color.white)
            Text(message).foregroundColor(Color.white)
            Spacer()
            Divider()
            HStack {
                Button("OK") {
                    closureAction = .ok
                    shown.toggle()
                }
                .frame(width: UIScreen.main.bounds.width/2-30, height: 40)
                .foregroundColor(.white)
                
            }
        }
        .frame(width: UIScreen.main.bounds.width-50, height: 200)
        
        .background(Color.black.opacity(0.5))
        .cornerRadius(12)
        .clipped()
        
    }
}

struct CustomAlert_Previews: PreviewProvider {
    
    static var previews: some View {
        AlertView(shown: .constant(false), closureAction: .constant(.others), title: "", message: "")
    }
}
