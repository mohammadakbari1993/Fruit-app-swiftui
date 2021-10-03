//
//  FruitNutritionsView.swift
//  Froctus
//
//  Created by Apple on 10/3/21.
//

import SwiftUI

struct FruitNutritionsView: View {
    
    var fruit : Fruit
    
    var nutritions : [String] = ["Energy","Sugar","Fat","Protein","Vitamins","Minerals"]
    
    var body: some View {
        
        GroupBox {
            DisclosureGroup("Nutritionals in 100 Grams") {
                ForEach((0..<nutritions.count) , id : \.self) { item in
                 
                    Divider().padding(.vertical , 2)
                    
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutritions[item])
                        }.foregroundColor(fruit.gradientColors[1])
                        .font(Font.system(.body).bold())
                        
                        Spacer(minLength: 25)
                        
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                        
                    }
                }
            }
        }.font(.footnote)
    }
}

struct FruitNutritionsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutritionsView(fruit: fruitData.first!)
            .previewLayout(.fixed(width: 340, height: 400))
            .padding()
    }
}
