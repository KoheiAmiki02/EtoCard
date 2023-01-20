//
//  CardView.swift
//  EtoCard
//
//  Created by cmStudent on 2023/01/20.
//

import SwiftUI

struct CardView: View {
    var title: String
    var etoName: String
    var image: String
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 246, height: 350)
                .foregroundColor(.yellow)
                .shadow(color: .orange, radius: 10, x: 10, y: 10)
            VStack {
                Text(title)
                    .font(.system(size: 36))
                Text(etoName)
                    .font(.system(size: 36))
                Image(image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150)
            }
        }
        
    }
}
