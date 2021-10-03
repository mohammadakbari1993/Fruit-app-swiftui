//
//  FruitHeaderView.swift
//  Froctus
//
//  Created by Apple on 10/3/21.
//

import SwiftUI

struct FruitHeaderView: View {
    // MARK : - PROPERTIES
    var fruit : Fruit
    @State private var isAnimatingImage : Bool = false
    // MARk : - BODY
    var body: some View {
        ZStack {
            
            LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .topTrailing, endPoint: .bottomTrailing)
        
            Image(fruit.image)
                .resizable()
                .renderingMode(.original)
                .scaledToFit()
                .shadow(color: Color(red: 0, green: 0, blue: 0 , opacity: 0.30), radius: 8, x: 6, y: 8)
                .padding(.vertical , 20)
                .scaleEffect(isAnimatingImage ?  1.0 : 0.6)
            
        } //: ZSTACK
        .frame(height : 440)
        .onAppear() {
            withAnimation(.easeOut(duration: 0.5)) {
                self.isAnimatingImage = true
            }
        }
    }
    
}

struct FruitHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeaderView(fruit: fruitData[0])
            .previewLayout(.fixed(width: 375, height: 440))
    }
}
