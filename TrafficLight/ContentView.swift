//
//  ContentView.swift
//  TrafficLight
//
//  Created by Alexey Kanaev on 6/9/23.
//

import SwiftUI

struct ContentView: View {
    @State private var redLight = 0.3
    @State private var yellowLight = 0.3
    @State private var greenLight = 0.3

    @State private var buttonText = "Start"

    @State private var currentLight = CurrentLight.red

    var body: some View {
        VStack(spacing: 20) {
            LightView(color: .red, opacity: redLight)
            LightView(color: .yellow, opacity: yellowLight)
            LightView(color: .green, opacity: greenLight)

            Spacer()

            Button(action: changeLight) {
                ZStack {
                    Capsule()
                        .frame(width: 200, height: 55)
                    Text(buttonText)
                        .font(.title)
                        .foregroundColor(.white)
                }
            }
            .foregroundColor(.blue)
            .overlay(Capsule().stroke(Color.white, lineWidth: 5))
            .shadow(radius: 10)
        }
        .padding()
    }
    private func changeLight() {
        let lightIsOn = 1.0
        let lightIsOff = 0.3

        if buttonText == "Start"{
            buttonText = "Next"
        }

        switch currentLight {
        case .red:
            greenLight = lightIsOff
            redLight = lightIsOn
            currentLight = .yellow
        case .yellow:
            redLight = lightIsOff
            yellowLight = lightIsOn
            currentLight = . green
        case .green:
            greenLight = lightIsOn
            yellowLight = lightIsOff
            currentLight = .red
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension ContentView {
    private enum CurrentLight {
        case red, yellow, green
    }
}
