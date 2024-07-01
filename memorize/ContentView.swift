//
//  ContentView.swift
//  memorize
//
//  Created by 이영민 on 7/1/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            CardView(isfaceup : false)
            CardView()
            CardView(isfaceup: true)
            CardView(isfaceup: true)
        }.foregroundColor(.orange)
            .padding()
    }
}


struct CardView: View{
    @State var isfaceup = false
    
    var body : some View{
        ZStack {
            let base = RoundedRectangle(cornerRadius : 12)
            if isfaceup{
                base.fill(.white)
                base.strokeBorder(lineWidth : 2)
                Text("🤮").font(.largeTitle)
            }
            else{
                base.fill()
            }
        }.onTapGesture {
            isfaceup = !isfaceup         }
    }
}

#Preview {
    ContentView()
}
