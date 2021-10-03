//
//  OnboardingView.swift
//  Froctus
//
//  Created by Apple on 10/2/21.
//

import SwiftUI

struct OnboardingView: View {
    var fruits : [Fruit] = fruitData
    var body: some View {
        TabView {
            ForEach(fruits[0...5]) { item in
               
                FruitCardView(fruit: item)
                    .padding(.horizontal )
                
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical , 20)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruits: fruitData)
    }
}
