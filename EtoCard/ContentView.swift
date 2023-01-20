//
//  ContentView.swift
//  EtoCard
//
//  Created by cmStudent on 2023/01/20.
//

import SwiftUI

struct ContentView: View {
    var cards: [Card] = [
        Card(title: "鼠", etoName: "子", image: "mouse"),
        Card(title: "牛", etoName: "丑", image: "cow"),
        Card(title: "虎", etoName: "寅", image: "tiger"),
        Card(title: "兎", etoName: "卯", image: "rabbit"),
        Card(title: "龍", etoName: "辰", image: "dragon"),
        Card(title: "蛇", etoName: "巳", image: "snake"),
        Card(title: "馬", etoName: "午", image: "horse"),
        Card(title: "羊", etoName: "未", image: "sheep"),
        Card(title: "猿", etoName: "申", image: "monkey"),
        Card(title: "鶏", etoName: "酉", image: "chicken"),
        Card(title: "犬", etoName: "戌", image: "dog"),
        Card(title: "猪", etoName: "亥", image: "boar")
    ]
    var body: some View {
        VStack {
            Spacer()
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    ForEach(cards) { card in
                        GeometryReader { geometry in
                            CardView(
                                title: card.title,
                                etoName: card.etoName,
                                image: card.image
                            )
                            .rotation3DEffect(
                                Angle(degrees: (Double(geometry.frame(in: .global).minX) - 40) / -20), axis: (x: 0, y: 10, z: 0))
                        }
                        .frame(width:246, height: 150)
                    }
                }
                .padding(40)
                
                Spacer()
            }
            .frame(width: UIScreen.main.bounds.width, height: 460)
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
