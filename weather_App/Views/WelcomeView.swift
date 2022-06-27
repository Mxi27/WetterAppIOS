//
//  WelcomeView.swift
//  weather_App
//
//  Created by Maximilian Meier on 13.06.22.
//

import SwiftUI
import CoreLocationUI

struct WelcomeView: View {
    @EnvironmentObject var locationManager: LocationManager

    var body: some View {
        VStack {
            VStack(spacing: 20) {
                Text("Willkommen in der Wetter App")
                    .foregroundColor(Color.black)
                    .bold()
                    .font(.title)
                
                Text("Bitte teile deinen Standort um Wetterdaten abzurufen")
                    .foregroundColor(Color.black)
                    .padding()
            }
            .multilineTextAlignment(.center)
            .padding()

            
            LocationButton(.shareCurrentLocation) {
                locationManager.requestLocation()
            }
            .cornerRadius(30)
            .symbolVariant(.fill)
            .foregroundColor(.white)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
