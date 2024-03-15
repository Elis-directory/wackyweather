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
            LinearGradient(gradient: Gradient(colors: [.blue, .white]), 
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("PlaceHolder")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundStyle(.white)
                    .padding()
                VStack(spacing: 8) {
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    Text("78°")
                        .font(.system(size: 70, weight: .medium))
                        .foregroundStyle(.white)
                }
                HStack {
                    VStack {
                        Text("TUE")
                            .font(.system(size: 16, weight: .medium, design: .default))
                            .foregroundStyle(.white)
                        Image(systemName: "cloud.sun.fill")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 40, height: 40)
                        Text("78°")
                            .font(.system(size: 28, weight: .medium))
                            .foregroundStyle(.white)
                    }
                }
                Spacer()
            }
        }
       
    }
}

#Preview {
    ContentView()
}
