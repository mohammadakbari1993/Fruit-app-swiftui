//
//  SettingRowView.swift
//  Froctus
//
//  Created by Bahman on 10/5/21.
//

import SwiftUI

struct SettingRowView: View {
    
    // MARK: - PROPERTIES
    var name : String
    var content : String? = nil
    var linkLabelText : String? = nil
    var linkURL : String? = nil
    
    // MARK: - BODY
    var body: some View {
        VStack {
            Divider().padding(.vertical , 4)
            HStack {
                
                Text(self.name).foregroundColor(.gray)
                
                Spacer()
               
                if content != nil {
                    Text(content!)
                } else if linkLabelText != nil && linkURL != nil {
                    Link(linkLabelText!, destination: URL(string: "https://\(linkURL!)")!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                } else {
                    EmptyView()
                }
                
            } //:HSTRACK
        } //: VSTACK
        
    }
}

struct SettingRowView_Previews: PreviewProvider {
    static var previews: some View {
        SettingRowView(
            name: "Developer",
            content: "Mohammad Akbari")
            .previewLayout(.fixed(width: 375, height: 40))
            .padding()
    }
}
