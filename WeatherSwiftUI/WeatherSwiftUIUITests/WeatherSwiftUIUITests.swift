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

    func testLaunchPerformance() {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            measure(metrics: [XCTOSSignpostMetric.applicationLaunch]) {
                XCUIApplication().launch()
            }
        }
    }
    
    func testWeatherHasValue() {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        
        let weatherDisplay = app.staticTexts["Weather"]
        let weatherText = weatherDisplay.label
        
        XCTAssert(weatherText != "")

    }
    
    

}
