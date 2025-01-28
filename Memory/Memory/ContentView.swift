//
//  ContentView.swift
//  Memory
//
//  Created by Melanie Colanino on 1/28/25.
//

import SwiftUI

struct ContentView: View {
    let emojis = ["❤️","💙","💜","💚","🩵"]

    var body: some View {
        HStack {
            ForEach(emojis.indices, id: \.self) { index in
                CardView(content:emojis[index])
            }
        
        }.foregroundColor(.orange)
            .padding()
    }
}
struct CardView: View {
    let content: String
    @State var isFaceUp = true

    
    var body: some View {
        ZStack {
            let base = RoundedRectangle(cornerRadius: 12)
            if isFaceUp {
                base.fill(.white)
                base.strokeBorder(lineWidth:5)
                Text(content).font(.largeTitle)
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
