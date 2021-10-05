//
//  SettingsLabelView.swift
//  Froctus
//
//  Created by Bahman on 10/5/21.
//

import SwiftUI

struct SettingsLabelView: View {
    
    // MARK: - PROPERTIES
    
    var labelName : String
    var labelImageName : String
    
    // MARK: - BODY
    
    var body: some View {
        HStack{
            Text(self.labelName.uppercased())
                .fontWeight(.bold)
            Spacer()
            Image(systemName: self.labelImageName)
        } //: HSTACK
    }
}

struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelName: "Fructos", labelImageName: "info.circle").previewLayout(.sizeThatFits).padding()
    }
}
