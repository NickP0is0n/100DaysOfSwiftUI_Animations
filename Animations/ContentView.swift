//
//  ContentView.swift
//  Animations
//
//  Created by Mykola Chaikovskyi on 05.09.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var enabled = false
    
    var body: some View {
        VStack {
            Button("Tap me") {
                enabled.toggle()
            }
            .frame(width: 200, height: 200)
            .background(enabled ? .blue : .red)
            .foregroundStyle(.white)
            .animation(nil,  value: enabled)
            .clipShape(RoundedRectangle(cornerRadius: enabled ? 60 : 0))
            .animation(.easeInOut(duration: 3), value: enabled)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
