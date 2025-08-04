//
//  ContentView.swift
//  Landmarks
//
//  Created by Refik Jaija on 28.7.25.
//

import SwiftUI

struct ContentView: View {
    let emojis: Array<String> = ["👻", "🎃", "🕷️", "🧛‍♂️", "👽"]
    
    var body: some View {
        HStack{
            ForEach(emojis.indices, id: \.self){ index in
                CardView(content: emojis[index])
                
            }
//            CardView(content: emojis[0] ,isFaceUp: true)
//            CardView(content: emojis[1])
//            CardView(content: emojis[2])
//            CardView(content: emojis[3])
        }
        .foregroundColor(.orange)
        .padding()
    }
}




struct CardView: View {
    let content: String
    @State var isFaceUp: Bool = false
    
    var body: some View {
        
        
        // ZStack(alignment: .top) {
        ZStack( content: {
            let base: RoundedRectangle = RoundedRectangle(cornerRadius: 12)
            if isFaceUp{
                base.foregroundColor(.white)
                base.strokeBorder(lineWidth:2)
                Text(content).font(.largeTitle)
            } else{
                base.fill()
            }
            
        })
        .onTapGesture(perform: {
            isFaceUp.toggle()
        })
        
        
        
        
        
    }
}











#Preview {
    ContentView()
}
