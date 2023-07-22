//
//  ContentView.swift
//  AttemptFour
//
//  Created by Liaisan on 7/22/23.
//

import SwiftUI

struct ContentView: View {
    @State private var redSliverValue = Double.random(in: 1...255)
    @State private var greenSliverValue = Double.random(in: 1...255)
    @State private var blueSliverValue = Double.random(in: 1...255)
    var body: some View {
        ZStack {
            Color.cyan
                .ignoresSafeArea()
                .opacity(0.5)
            VStack(spacing: 50) {
               Color(red: redSliverValue/255, green: greenSliverValue/255, blue: blueSliverValue/255, opacity: 1)
                    .frame(width: 380, height: 200)
                    .cornerRadius(20)
                    VStack(spacing: -10) {
                    sliderSettings(color: .red , value: $redSliverValue)
                    sliderSettings(color: .green , value: $greenSliverValue)
                    sliderSettings(color: .blue , value: $blueSliverValue)
                    Spacer()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct sliderSettings: View {
    var color: Color
    @Binding var value: Double
    var body: some View {
        HStack {
            Text("\(lround(value))")
                .foregroundColor(color)
            Slider(value: $value, in: 1...255, step: 1 )
                .tint(color)
                
            
        }
        .padding()
    }
}
