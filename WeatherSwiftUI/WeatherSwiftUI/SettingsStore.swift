//
//  SettingsStore.swift
//  WeatherSwiftUI
//
//  Created by Thays Prado on 23/01/20.
//  Copyright © 2020 ThaysPrado. All rights reserved.
//

import Foundation
import Combine

class SettingsStore: ObservableObject {

    let willChange = PassthroughSubject<Void, Never>()

    var city: Int = UserDefaults.city {
        willSet {
            UserDefaults.city = newValue
            willChange.send()
        }
    }
}

extension UserDefaults {

    private struct Keys {
        static let city = "City"
    }

    static var city: Int {
        get {
            return UserDefaults.standard.integer(forKey: Keys.city)
        }
        set {
            UserDefaults.standard.set(newValue, forKey: Keys.city)
        }
    }
}
