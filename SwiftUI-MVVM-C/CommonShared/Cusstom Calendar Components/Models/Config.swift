//
//  Config.swift

import Foundation

/// Main configuration file
public struct FastisConfig {

    public static var `default` = FastisConfig()

    private init() {}

    /**
     Base calendar used to build a view
     
     Default value — `.current`
     */
    public var calendar: Calendar = .current

    /// Base view controller (`cancelButtonTitle`, `doneButtonTitle`, etc.)
    public var controller = FastisConfig.Controller()

    /// Month titles
    public var monthHeader = FastisConfig.MonthHeader()

    /// Day cells (selection parameters, font, etc.)
    public var dayCell = FastisConfig.DayCell()

    /// Top header view with week day names
    public var weekView = FastisConfig.WeekView()

    /// Current value view appearance (clear button, date format, etc.)
    public var currentValueView = FastisConfig.CurrentValueView()

    /// Bottom view with shortcuts
    public var shortcutContainerView = FastisConfig.ShortcutContainerView()

    /// Shortcut item in the bottom view
    public var shortcutItemView = FastisConfig.ShortcutItemView()

}
