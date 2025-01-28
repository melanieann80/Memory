//
//  ContentView.swift
//  Memory
//
//  Created by Melanie Colanino on 1/28/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            CardView(isFaceUp: true)
            CardView()
            CardView()
            CardView()
            
        }.foregroundColor(.orange)
            .padding()
    }
}
struct CardView: View {
    @State var isFaceUp = false

    
    var body: some View {
        ZStack {
            let base = RoundedRectangle(cornerRadius: 12)
            if isFaceUp {
                base.fill(.white)
                base.strokeBorder(lineWidth:5)
                Text("❤️").font(.largeTitle)
            } else {
                base.fill()
            }
        }
        .onTapGesture{
            isFaceUp.toggle()
        }
    }
}




#Preview {
    ContentView()
}
