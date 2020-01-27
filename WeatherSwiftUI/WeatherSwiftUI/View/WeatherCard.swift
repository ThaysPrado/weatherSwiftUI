//
//  WeatherCard.swift
//  WeatherSwiftUI
//
//  Created by Thays Prado on 20/01/20.
//  Copyright © 2020 ThaysPrado. All rights reserved.
//

import SwiftUI

struct WeatherCard: View {
    let weather: Weather
    
    var body: some View {
        VStack {
            HStack {
                Image(weather.weatherState).resizable().frame(width: 50, height: 50)
                Text("São Paulo").font(.title)
            }
            Spacer().frame(height: 40)
            Text("\(weather.theTemp)º").font(.system(size: 90))
            Spacer().frame(height: 40)
            HStack {
                VStack {
                    Text("Minima")
                    Text("\(weather.minTemp)º")
                }
                Divider().frame(height: 50).padding()
                 VStack {
                   Text("Maxima")
                    Text("\(weather.maxTemp)º")
               }
                Divider().frame(height: 50).padding()
                VStack {
                   Text("Umidade")
                    Text("\(weather.humidity)º")
               }
            }.frame(height: 80)
        }
    }
}

struct WeatherCard_Previews: PreviewProvider {
    static var previews: some View {
        WeatherCard(weather: Weather.getDefault())
    }
}
