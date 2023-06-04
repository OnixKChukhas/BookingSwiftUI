

import SwiftUI
import Foundation

class DateFormatterHelper: ObservableObject {
    var formatterFrom: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "MMM dd"
        formatter.locale = Locale(identifier: "us_US")
        return formatter
    }()

    var formatterTo: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "MMM dd, yyyy"
        formatter.locale = Locale(identifier: "us_US")
        return formatter
    }()
}
