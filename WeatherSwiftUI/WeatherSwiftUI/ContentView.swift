//
//  ContentView.swift
//  WeatherSwiftUI
//
//  Created by Thays Prado on 20/01/20.
//  Copyright © 2020 ThaysPrado. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            WeatherCard()
                .padding()
            HStack {
                DayCard()
                DayCard()
                DayCard()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
