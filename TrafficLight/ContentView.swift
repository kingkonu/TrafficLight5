//
//  ContentView.swift
//  TrafficLight
//
//  Created by Alexey Kanaev on 6/9/23.
//

import SwiftUI

struct ContentView: View {
    @State var redLight = LightView(color: .red)
    @State var yellowLight = LightView(color: .yellow)
    @State var greenLight = LightView(color: .green)
    @State var buttonText = "Start"

    @State private var currentLight = CurrentLight.red
    private let lightIsOn: CGFloat = 1
    private let lightIsOff: CGFloat = 0.3

    var body: some View {
        VStack {
            redLight
            yellowLight
            greenLight

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
        if buttonText == "Start"{
            buttonText = "Next"
        }

        switch currentLight {
        case .red:
            greenLight.opacity = lightIsOff
            redLight.opacity = lightIsOn
            currentLight = .yellow
        case .yellow:
            redLight.opacity = lightIsOff
            yellowLight.opacity = lightIsOn
            currentLight = . green
        case .green:
            greenLight.opacity = lightIsOn
            yellowLight.opacity = lightIsOff
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
