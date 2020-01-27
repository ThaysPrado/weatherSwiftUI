//
//  ContentView.swift
//  WeatherSwiftUI
//
//  Created by Thays Prado on 20/01/20.
//  Copyright © 2020 ThaysPrado. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var contentVM: ContentViewModel
    
    let city = UserDefaults.city
    
    var body: some View {
        NavigationView {
            ZStack {
                Color("primaryColor").edgesIgnoringSafeArea(.all)
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
                            Spacer()
                            NavigationLink(destination: SettingsView(settingsStore: SettingsStore())) {
                                Text("Config")
                                Image(systemName: "gear")
                            }
                        }
                    }
                }
//                .navigationBarItems(trailing:
//                    NavigationLink(destination: SettingsView(settingsStore: SettingsStore())) {
//                        Image(systemName: "gear")
//                    }
//                )
            }
        }
        .onAppear(perform: fetch)
    }
    
    private func fetch() {
        contentVM.getWeather()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(contentVM: ContentViewModel())
    }
}

