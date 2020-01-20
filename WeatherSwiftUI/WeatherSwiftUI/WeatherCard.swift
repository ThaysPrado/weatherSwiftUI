//
//  WeatherCard.swift
//  WeatherSwiftUI
//
//  Created by Thays Prado on 20/01/20.
//  Copyright © 2020 ThaysPrado. All rights reserved.
//

import SwiftUI

struct WeatherCard: View {
    var body: some View {
        VStack {
            Text("Segunda 20 Janeiro").font(.headline)
            Text("23ºC").font(.system(size: 65))
            Text("Nublado").font(.title)
            HStack {
                Text("min")
                Text("max")
                Text("umidade")
            }
        }
    }
}

struct WeatherCard_Previews: PreviewProvider {
    static var previews: some View {
        WeatherCard()
    }
}
