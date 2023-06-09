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

            Button("Start") {

            }
            .foregroundColor(.white)
            .background(.blue)
            .frame(width: 100, height: 50)

        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
