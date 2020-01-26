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
        let params = ["location": "44418"]
        weatherService.getWeatherAPI(
            parameters: params,
            onSuccess: {(response) in
                self.weatherList.append(contentsOf: response)
                self.isVisible = true
            },
            onFailure: {(message) in
                print("message \(message)")
            })
    }
}
