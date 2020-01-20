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
                Button(action: {
                    print("Edit button pressed...")
                }) {
                    Text("Edit")
                }
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
