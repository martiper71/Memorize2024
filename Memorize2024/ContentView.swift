//
//  ContentView.swift
//  Memorize2024
//
//  Created by Juan Carlos Martínez Pérez on 23/2/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack(content: {
            Carta(BocaAbajo: false)
            Carta()
            Carta(BocaAbajo: false)
            Carta(BocaAbajo: false)
        })
        .foregroundColor(Color.orange)
        .padding()
    }
}

struct Carta: View {
    var BocaAbajo: Bool = true
    
    var body: some View {
        ZStack(content: {
            if BocaAbajo {
                RoundedRectangle(cornerRadius: 12)
            } else {
                RoundedRectangle(cornerRadius: 12)
                    .foregroundColor(.white)
                RoundedRectangle(cornerRadius: 12)
                    .strokeBorder(lineWidth: 2)
                Text("👻")
                    .font(.largeTitle)
            }
        })
    }
}











#Preview {
    ContentView()
}
