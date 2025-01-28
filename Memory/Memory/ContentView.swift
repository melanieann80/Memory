//
//  ContentView.swift
//  Memory
//
//  Created by Melanie Colanino on 1/28/25.
//

import SwiftUI

struct ContentView: View {
    let emojis = ["❤️","💙","💜","💚","🩵","💔","🖤","🧡","💛","🩶","🤎","💕"]
    
    @State var cardCount: Int = 4
    
    var body: some View {
        VStack {
            HStack {
                ForEach(0..<cardCount, id: \.self) { index in
                    CardView(content:emojis[index])
                }
            } .foregroundColor(.orange)
            HStack{
                Button(action: {
                    if cardCount > 1 {cardCount -= 1}
                }, label: {
                    Image(systemName:"rectangle.stack.badge.minus.fill")
                })

                Spacer()
                
                Button(action: {
                    if cardCount < emojis.count {cardCount += 1}
                }, label: {
                    Image(systemName:"rectangle.stack.badge.plus.fill")
                })
                }
            .imageScale(.large)
            .font(.largeTitle)
        
        }
       
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
