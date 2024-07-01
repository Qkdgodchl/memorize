//
//  ContentView.swift
//  memorize
//
//  Created by 이영민 on 7/1/24.
//

import SwiftUI

struct ContentView: View {
    let emojis = ["👽", "🤡" , "👿" , "☠️" , "💩"]
    var body: some View {
        HStack {
            ForEach(emojis.indices, id: \.self){index in
                CardView(content : emojis[index])}
        }.foregroundColor(.mint)
            .padding()
    }
}


struct CardView: View{
    let content : String
    @State var isfaceup = true
    
    var body : some View{
        ZStack {
            let base = RoundedRectangle(cornerRadius : 12)
            if isfaceup{
                base.fill(.white)
                base.strokeBorder(lineWidth : 2)
                Text(content).font(.largeTitle)
            }
            else{
                base.fill()
            }
        }.onTapGesture {
            isfaceup.toggle()        
        }
    }
}

#Preview {
    ContentView()
}
