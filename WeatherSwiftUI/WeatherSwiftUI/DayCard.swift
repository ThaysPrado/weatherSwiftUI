//
//  DayCard.swift
//  WeatherSwiftUI
//
//  Created by Webeleven on 20/01/20.
//  Copyright © 2020 ThaysPrado. All rights reserved.
//

import SwiftUI

struct DayCard: View {
    var body: some View {
        VStack {
            Text("Dia")
            Text("img")
            Text("min/max")
        }
        .padding(20)
        .background(Rectangle().foregroundColor(.gray))
        .cornerRadius(10)
    }
}

struct DayCard_Previews: PreviewProvider {
    static var previews: some View {
        DayCard()
    }
}
