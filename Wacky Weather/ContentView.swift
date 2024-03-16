//
//  ContentView.swift
//  Wacky Weather
//
//  Created by Eliran Chomoshe on 3/14/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            BackgroundView(topColor: .blue, bottomColor: Color("LightBlue"))
            VStack {
                CityTextView(cityName: "San Diego")
                mainWeatherStatusView(imageName: "cloud.sun.fill", temp: 60)
                
                HStack(spacing: 20) {
                    WeatherDayView(day: "TUE", imageName: "cloud.sun.fill", temp: 86)
                    WeatherDayView(day: "WED", imageName: "sun.max.fill", temp: 76)
                    WeatherDayView(day: "THUR", imageName: "cloud.sun.fill", temp: 66)
                    WeatherDayView(day: "FRI", imageName: "sun.max.fill", temp: 56)
                    WeatherDayView(day: "SAT", imageName: "snow", temp: 36)
                }
                Spacer()
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                  Text("Change Day Time")
                        .frame(width: 280, height: 50)
                        .background(.white)
                        .font(.system(size: 20, weight: .bold, design: .default))
                        .cornerRadius(10)
                })
                Spacer()
            }
        }
       
    }
}

#Preview {
    ContentView()
}

struct WeatherDayView: View {
    var day: String
    var imageName: String
    var temp: Int
    
    var body: some View {
        VStack {
            Text(day)
                .font(.system(size: 16, weight: .medium, design: .default))
                .foregroundStyle(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(temp)°")
                .font(.system(size: 28, weight: .medium))
                .foregroundStyle(.white)
        }
    }
}

struct BackgroundView: View {
    var topColor: Color
    var bottomColor: Color
    var body: some View {
        
        LinearGradient(gradient: Gradient(colors: [topColor, bottomColor]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
        .edgesIgnoringSafeArea(.all)
    }
}



struct CityTextView: View {
    var cityName: String
    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundStyle(.white)
            .padding()
    }
}

struct mainWeatherStatusView: View {
    var imageName: String
    var temp: Int
    var body: some View {
        VStack(spacing: 8) {
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            Text("\(temp)°")
                .font(.system(size: 70, weight: .medium))
                .foregroundStyle(.white)
        }
        .padding(.bottom, 40)
    }
}
