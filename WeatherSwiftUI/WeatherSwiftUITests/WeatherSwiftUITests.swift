//
//  WeatherSwiftUITests.swift
//  WeatherSwiftUITests
//
//  Created by Thays Prado on 31/03/20.
//  Copyright © 2020 ThaysPrado. All rights reserved.
//

import XCTest
@testable import WeatherSwiftUI

class WeatherSwiftUITests: XCTestCase {
    
    let data: [String: Any] = [
       "id": 6381777272700928,
       "weather_state_name": "Light Rain",
       "applicable_date": "2020-01-24",
       "min_temp": 9.055,
       "max_temp": 14.754999999999999,
       "the_temp": 13.530000000000001,
       "humidity" : 87
    ]
    
    func testInitWeather() {
        let weather = Weather(json: data)
        
        XCTAssertEqual(weather.humidity, "87")
        XCTAssertEqual(weather.minTemp, "9.0")
        XCTAssertEqual(weather.maxTemp, "15.0")
        XCTAssertEqual(weather.theTemp, "14.0")
    }
    
    func testWeatherGetDefault() {
        let weather = Weather(json: data)
        XCTAssertEqual(weather, Weather.getDefault())
    }
    
    func testWeatherGetModels() {
        let weather = Weather(json: data)
        let arrModel = [weather]
        let arr = [data]
        
        XCTAssertEqual(arrModel, Weather.getModels(arr))
    }
    
    func testWeatheDate() {
        let weather = Weather(json: data)
        let date = "24/01"
        XCTAssertEqual(date, weather.getDate())
    }

}
