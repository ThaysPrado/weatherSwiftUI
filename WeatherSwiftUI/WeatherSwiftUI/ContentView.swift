//
//  ContentView.swift
//  WeatherSwiftUI
//
//  Created by Thays Prado on 20/01/20.
//  Copyright © 2020 ThaysPrado. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var cities = ["São Paulo", "Rio de Janeiro", "Belo Horizonte"]
    @State var settingsStore: SettingsStore
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    WeatherCard().padding()
                    ScrollView(.horizontal) {
                        HStack {
                            DayCard()
                            DayCard()
                            DayCard()
                            DayCard()
                            DayCard()
                        }
                    }.padding()
                }
            }
            .navigationBarItems(trailing:
                NavigationLink(destination: SettingsView(settingsStore: SettingsStore())) {
                    Image(systemName: "gear")
                }
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(settingsStore: SettingsStore())
    }
}

