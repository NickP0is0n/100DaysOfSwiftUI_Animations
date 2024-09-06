//
//  ContentView.swift
//  Animations
//
//  Created by Mykola Chaikovskyi on 05.09.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var dragAmount = CGSize.zero
    
    var body: some View {
        LinearGradient(colors: [.yellow, .red], startPoint: .topLeading, endPoint: .bottomTrailing)
            .frame(width: 300, height: 200)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .offset(dragAmount)
            .gesture(
                DragGesture()
                    .onChanged {
                        dragAmount = $0.translation
                    }
                    .onEnded { _ in
                        withAnimation(.easeInOut(duration: 2)) {
                            dragAmount = .zero
                        }
                    }
             )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
