//
//  LightView.swift
//  TrafficLight
//
//  Created by Alexey Kanaev on 6/9/23.
//

import SwiftUI

struct LightView: View {
    let color: Color
    let opacity: Double
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .opacity(opacity)
            .frame(width: 150, height: 150)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }
}

struct LightView_Previews: PreviewProvider {
    static var previews: some View {
        LightView(color: .red, opacity: 0.3)
    }
}
