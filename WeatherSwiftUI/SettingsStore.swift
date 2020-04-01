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

    var city: String = UserDefaults.city {
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

    static var city: String {
        get {
            return UserDefaults.standard.string(forKey: Keys.city) ?? "São Paulo"
        }
        set {
            UserDefaults.standard.set(newValue, forKey: Keys.city)
        }
    }
}
