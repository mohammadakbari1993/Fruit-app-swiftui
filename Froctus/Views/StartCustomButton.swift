//
//  StartCustomButton.swift
//  Froctus
//
//  Created by Apple on 10/2/21.
//

import SwiftUI

struct StartCustomButton: View {
    
    // MARK: - PROPERTIES
    @AppStorage("isOnboarding") var isOnboarding : Bool?
    // MARK: - BODY
    var body: some View {
        
        Button(action: {
            isOnboarding = false
        }, label: {
            
            HStack (spacing : 16) {
                Text("Start")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal , 16)
            .padding(.vertical , 10)
            .background(
                Capsule().strokeBorder(Color.white , lineWidth: 1.25)
            )
        }) //: BUTTON
        .accentColor(.white)
    }
}

struct StartCustomButton_Previews: PreviewProvider {
    static var previews: some View {
        StartCustomButton()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
