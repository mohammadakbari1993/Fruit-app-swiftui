//
//  ContentView.swift
//  Froctus
//
//  Created by Apple on 10/2/21.
//

import SwiftUI

struct ContentView: View {
    
    // MARK : - PROPERTIES
    
    @State private var isShowingSetting : Bool = false
    
    var fruits : [Fruit] = fruitData
    
    // MARK : - BODY
    var body: some View {
        
        NavigationView {
            
            List {
                
                ForEach (fruits.shuffled()) { item in
                  
                    NavigationLink(
                        destination: FruitDetailView(fruit: item),
                        label: {
                            FruitRowView(fruit: item)
                                .padding(.vertical , 4)
                        })
                
                } // : FOREACH
                
            } // : LIST
            
            .navigationTitle("Fruits")
            .navigationBarItems(trailing: Button(action: {
                self.isShowingSetting = true
            }, label: {
                Image(systemName: "slider.horizontal.3")
            }))
            .sheet(isPresented: self.$isShowingSetting , content: {
                SettingView()
            })
        
        } //: NVIAGTION VIEW
        .navigationViewStyle(StackNavigationViewStyle())
    
    } //: BODY

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitData)
    }
}
