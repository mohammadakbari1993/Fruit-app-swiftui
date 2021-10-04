//
//  SettingView.swift
//  Froctus
//
//  Created by Apple on 10/4/21.
//

import SwiftUI

struct SettingView: View {
    // MARK : - PROPERTIES
    @Environment(\.presentationMode) var presentationMode
    // MARK : - BODY
    var body: some View {
       
        NavigationView {
            
            ScrollView {
            
                Text("Hello World")
           
            }//:SCROLLVIEW
            .navigationTitle("Setting")
            .navigationBarTitleDisplayMode(.large)
            .navigationBarItems(trailing: Button(action: {
                self.presentationMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "xmark")
            }))
            
            
        } //:NAVIGATIONVIEW
        
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
            .preferredColorScheme(.dark)
    }
}
