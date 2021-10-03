//
//  FruitRowView.swift
//  Froctus
//
//  Created by Apple on 10/3/21.
//

import SwiftUI

struct FruitRowView: View {
    
    // MARK : - PROPEETIES
    
    var fruit : Fruit
    
    var body: some View {
        HStack {
            
            // FRUIT IMAGE
            
            Image(fruit.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .shadow(color: Color(red: 0, green: 0, blue: 0 , opacity: 0.3), radius: 3, x: 3, y: 2)
                .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom))
                .cornerRadius(8)
            
            // VSTACK
            
            VStack (alignment: .leading, spacing: 5) {
                // TITLE
                Text(fruit.title)
                    .font(.title2)
                    .fontWeight(.bold)
                
                Text(fruit.headline)
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
            
            
        } //: HSTACK
    }
}

struct FruitRowView_Previews: PreviewProvider {
    static var previews: some View {
        FruitRowView(fruit: fruitData.first!)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
