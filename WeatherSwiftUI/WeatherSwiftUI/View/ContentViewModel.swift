//
//  ContentViewModel.swift
//  WeatherSwiftUI
//
//  Created by Thays Prado on 25/01/20.
//  Copyright © 2020 ThaysPrado. All rights reserved.
//

import Foundation
import Combine

class ContentViewModel: ObservableObject {
    
    let willChange = PassthroughSubject<Void, Never>()
    private var weatherService: WeatherService = WeatherService()
    
    @Published var isVisible: Bool = false
    
    var weatherList: [Weather] = [Weather]() {
       willSet {
           willChange.send()
       }
    }
    
    func getWeather() {
        let code = self.getLocationCode(city: UserDefaults.city)
        let params = ["location": code]
        
        weatherService.getWeatherAPI(
            parameters: params,
            onSuccess: {(response) in
                self.weatherList = response
                self.isVisible = true
            },
            onFailure: {(message) in
                print("message \(message)")
            })
    }
    
    private func getLocationCode(city: String) -> String {
        switch city {
        case "São Paulo":
           return "455827"
        case "Rio de Janeiro":
           return "455825"
        case "Salvador":
            return "455826"
        default:
            return "455827"
        }
    }
}
