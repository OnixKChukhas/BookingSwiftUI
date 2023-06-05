

import Foundation
import SwiftUI

struct CalendarView: UIViewControllerRepresentable {
    @State var selectedValue: FastisRange?  = nil
    var selectedValueCallback: ((FastisRange?) -> Void)? = nil
        
    func makeUIViewController(context: Context) -> UIViewController {
        var config = FastisConfig.default
        config.monthHeader.height = .init(defaultSize: 1)
        config.weekView.textFont = .systemFont(ofSize: 13, weight: .semibold)
        config.weekView.textColor = .lightGray
        config.weekView.backgroundColor = .clear
        config.dayCell.dateLabelFont = .systemFont(ofSize: 17, weight: .regular)
        config.calendar.locale = .init(identifier: "us_US")
        config.currentValueView.placeholderTextForRanges = ""
        config.currentValueView.textColor = .clear
        config.currentValueView.clearButtonTintColor = .clear
        
        let fastisController = FastisController(mode: .range, config: config)
        fastisController.minimumDate = Date()
        fastisController.maximumDate = Calendar.current.date(byAdding: .year, value: 3, to: Date())
        fastisController.doneHandler = { value in
            selectedValue = value
            selectedValueCallback?(value)
        }
        return fastisController
    }
    
    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
       
    }
}
