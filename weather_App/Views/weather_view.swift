//
//  weather_view.swift
//  weather_App
//
//  Created by Maximilian Meier on 16.06.22.
//

import SwiftUI

struct weather_view: View {
    // Replace YOUR_API_KEY in WeatherManager by your own for the app to work
    var weather: ResponseBody
    
    var body: some View {
        VStack {
            Text("Wetter")
                .font(.system(size: 50))
                .fontWeight(.bold)
                .foregroundColor(Color.black)
            Image(weather.weather[0].icon)
            Text(weather.main.feelsLike.roundDouble() + " ° C")
                .font(.system(size: 50))
                .fontWeight(.bold)
                .foregroundColor(Color.black)
            Text(weather.weather[0].description)
                .font(.system(size: 30))
                .fontWeight(.semibold)
                .foregroundColor(Color.black)
            Text(weather.name)
                .font(.system(size: 25))
                .fontWeight(.bold)
                .foregroundColor(Color.gray)    
        }.background(
            RoundedRectangle(cornerRadius: 0.0, style: .continuous)
                .frame(width: 900.0, height: 900.0)
                .edgesIgnoringSafeArea(.all)
                .foregroundColor(.white)
        )
        .edgesIgnoringSafeArea(.all)
    }
}

struct weather_view_Previews: PreviewProvider {
    static var previews: some View {
        weather_view(weather: previewWeather)
    }
}
