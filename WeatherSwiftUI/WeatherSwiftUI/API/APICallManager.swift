//
//  APICallManager.swift
//  WeatherSwiftUI
//
//  Created by Thays Prado on 25/01/20.
//  Copyright © 2020 ThaysPrado. All rights reserved.
//
import Foundation
import Alamofire
import SwiftyJSON

let apiBaseUrl = "https://www.metaweather.com/api"

class APICallManager {
    static let shared = APICallManager()

    func createRequest(
        _ url: String,
        method: HTTPMethod,
        headers: [String: String]?,
        parameters: AnyObject?,
        onSuccess successCallback: (([Any]) -> Void)?,
        onFailure failureCallback: ((String) -> Void)?
    ) {
        AF.request(url, method: method).validate().responseJSON { response in
            switch response.result {
            case .success(let value):
                let json = JSON(value)
                var data = [Weather]()
                if let weatherList = json["consolidated_weather"].arrayObject as? [[String: Any]] {
                    data = Weather.getModels(weatherList)
                }
                successCallback?(data)
            case .failure(let error):
                if let callback = failureCallback {
                    callback(error.localizedDescription)
                }
            }
        }
    }
    
}
