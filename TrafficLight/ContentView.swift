//
//  ContentView.swift
//  TrafficLight
//
//  Created by Alexey Kanaev on 6/9/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            LightView(color: .red)
            LightView(color: .yellow)
            LightView(color: .green)

            Spacer()

            Button(action: changeLight) {
                ZStack {
                    Capsule()
                        .frame(width: 100, height: 45)
                    Text("Start")
                        .font(.largeTitle)
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

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
