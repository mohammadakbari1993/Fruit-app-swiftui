//
//  FruitDetailView.swift
//  Froctus
//
//  Created by Apple on 10/3/21.
//

import SwiftUI

struct FruitDetailView: View {
    
    // MARK : - PROPERTIES
    var fruit : Fruit
    
    // MARk : - BODY
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .center, spacing: 20) {
                    
                    FruitHeaderView(fruit: fruit)
                    
                    VStack(alignment: .leading, spacing: 20) {

                        // TITLE
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        // HEADLINE
                       
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                            
                        //NUTRIENTS
                        
                        FruitNutritionsView(fruit: fruit)
                        
                        //SUBHEADLINE
                        
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        //DESCRIPTION
                        
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        
                        //LINK
                        
                        SourceLinkView()
                            .padding(.top , 10)
                            .padding(.bottom , 40)
                        
                    }//: VSTACK
                    .padding(.horizontal , 20)
                    .frame(maxWidth : 640 , alignment: .leading)
                
                    
                } //: VSTACK
                .navigationBarTitle(fruit.title,displayMode: .inline)
                .navigationBarHidden(true)
            } //:SCROLlVIEW
            .edgesIgnoringSafeArea(.top)
        } //: NAVIGATIONVIEW
        .navigationViewStyle(StackNavigationViewStyle())
        
    }
}

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitData[0])
    }
}
