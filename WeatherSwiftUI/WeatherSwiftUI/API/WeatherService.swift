//
//  WeatherService.swift
//  WeatherSwiftUI
//
//  Created by Thays Prado on 25/01/20.
//  Copyright © 2020 ThaysPrado. All rights reserved.
//

import Foundation
import SwiftyJSON

class WeatherService {

    enum Endpoint: String {
        case weatherLocation = "/location/{location}/"
    }
    
    public func getWeatherAPI(parameters: [String: String],
                           onSuccess successCallback: ((_ response: [Weather]) -> Void)?,
                           onFailure failureCallback: ((_ errorMessage: String) -> Void)?) {
        let endPoint = Endpoint.weatherLocation.rawValue
                               .replacingOccurrences(of: "{location}", with: parameters["location"]!)
        let url = apiBaseUrl + endPoint
        
        APICallManager.shared.createRequest(
            url, method: .get, headers: nil, parameters: nil,
            onSuccess: {(responseObject: [Any]) -> Void in
                var data = [Weather]()
                if let response = responseObject as? [Weather] {
                    data = response
                }
                successCallback?(data)
            }, onFailure: {(errorMessage: String) -> Void in
                failureCallback?(errorMessage)
            })
    }
    
}
