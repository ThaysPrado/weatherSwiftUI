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
            HStack {
                Image("hc").resizable().frame(width: 50, height: 50)
                Text("São Paulo, Brasil").font(.title)
            }
            Spacer().frame(height: 40)
            Text("28º").font(.system(size: 90))
            Spacer().frame(height: 40)
            HStack {
                VStack {
                    Text("minima")
                    Text("23º")
                }
                Divider().frame(height: 50).padding()
                 VStack {
                   Text("maxima")
                   Text("32º")
               }
                Divider().frame(height: 50).padding()
                VStack {
                   Text("umidade")
                   Text("32%")
               }
            }.frame(height: 80)
        }
    }
}

struct WeatherCard_Previews: PreviewProvider {
    static var previews: some View {
        WeatherCard()
    }
}
