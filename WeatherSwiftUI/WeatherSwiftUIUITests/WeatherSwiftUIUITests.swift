//
//  WeatherSwiftUIUITests.swift
//  WeatherSwiftUIUITests
//
//  Created by Webeleven on 01/04/20.
//  Copyright © 2020 ThaysPrado. All rights reserved.
//

import XCTest
@testable import WeatherSwiftUI

class WeatherSwiftUIUITests: XCTestCase {

    override func setUp() {
        continueAfterFailure = false
    }

    override func tearDown() {
        
    }
    
    func testWeatherHasValue() {
        let app = XCUIApplication()
        app.launch()
        
        let weatherDisplay = app.staticTexts["weather"]
        let weatherText = weatherDisplay.label
        XCTAssert(weatherText == "14.0º")
    }

}
