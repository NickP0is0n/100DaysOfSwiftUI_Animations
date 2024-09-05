//
//  ContentView.swift
//  Animations
//
//  Created by Mykola Chaikovskyi on 05.09.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var animationAmount = 0.0
    
    var body: some View {
        VStack {
            Button("Tap me") {
                withAnimation(.spring()) {
                    animationAmount += 360
                }
            }
            .padding(50)
            .background(.red)
            .foregroundStyle(.white)
            .clipShape(Circle())
            .rotation3DEffect(.degrees(animationAmount), axis: (x: 1, y: 1, z: 0))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
