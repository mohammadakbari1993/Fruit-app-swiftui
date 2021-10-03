//
//  FruitCardView.swift
//  Froctus
//
//  Created by Apple on 10/2/21.
//

import SwiftUI

struct FruitCardView: View {
    
    //MARK : PROPERTIES
    @State private var isAnimating : Bool = false
    var fruit : Fruit
    //MARK : BODY
    var body: some View {
        ZStack {

            VStack (spacing : 8){
                //MARK : - IMAGE
                Image(fruit.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .shadow(color: Color(red: 0, green: 0, blue: 0 , opacity: 0.15 ), radius: 8, x: 6, y: 6)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                //MARK : - TITLE
                Text(fruit.title)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                
                //MARK : - HEADLINE
               
                Text(fruit.headline)
                    .foregroundColor(.white)
                    .font(.system(size: 13))
                    .multilineTextAlignment(.center)
                    .frame(maxWidth : 480)
                    .padding(.horizontal , 16)
                
                //MARK : - START BUTTON
                StartCustomButton().padding(.top , 24)
                
            } //: VSTACK
            
        }//: ZSTACK
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                self.isAnimating = true
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/,  maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
    }
}

struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView(fruit: fruitData.first!)
            .previewLayout(.fixed(width: 320, height: 640))
            .padding([.vertical,.horizontal] , 20)
    }
}
