//
//  ContentView.swift
//  Froctus
//
//  Created by Apple on 10/2/21.
//

import SwiftUI

struct ContentView: View {
    
    // MARK : - PROPERTIES
    
    var fruits : [Fruit] = fruitData
    
    // MARK : - BODY
    var body: some View {
        
        NavigationView {
            
            List {
                
                ForEach (fruits.shuffled()) { item in
                    FruitRowView(fruit: item).padding(.vertical , 4)
                } // : FOREACH
                
            } // : LIST
            
            .navigationTitle("Fruits")
        
        } //: NVIAGTION VIEW
    
    } //: BODY

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitData)
    }
}
