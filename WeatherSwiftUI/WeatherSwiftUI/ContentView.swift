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
    @ObservedObject var contentVM: ContentViewModel
    
    var body: some View {
        NavigationView {
            ScrollView {
                if $contentVM.isVisible.wrappedValue {
                    VStack {
                        WeatherCard(weather: $contentVM.weatherList.wrappedValue.removeFirst()).padding()
                        ScrollView(.horizontal) {
                            HStack {
                                ForEach($contentVM.weatherList.wrappedValue, id: \.self) { weather in
                                    DayCard(weather: weather)
                                }
                            }
                        }.padding()
                    }
                }
            }
            .navigationBarItems(trailing:
                NavigationLink(destination: SettingsView(settingsStore: SettingsStore())) {
                    Image(systemName: "gear")
                }
            )
        }.onAppear(perform: fetch)
    }
    
    private func fetch() {
        contentVM.getWeather()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(settingsStore: SettingsStore(), contentVM: ContentViewModel())
    }
}

