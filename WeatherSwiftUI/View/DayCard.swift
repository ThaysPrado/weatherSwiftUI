//
//  DayCard.swift
//  WeatherSwiftUI
//
//  Created by Thays Prado on 20/01/20.
//  Copyright © 2020 ThaysPrado. All rights reserved.
//

import SwiftUI

struct DayCard: View {
    @State var weather: Weather
    
    var body: some View {
        VStack {
            Text(weather.getDate())
            Image(weather.weatherState).resizable().frame(width: 50, height: 50)
            Text("\(weather.minTemp)º/\(weather.maxTemp)º")
        }
        .padding(20)
        .background(Rectangle().foregroundColor(Color("cardColor")))
        .cornerRadius(10)
    }
}

struct DayCard_Previews: PreviewProvider {
    static var previews: some View {
        DayCard(weather: Weather.getDefault())
    }
}
