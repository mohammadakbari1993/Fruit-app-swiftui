//
//  FroctusApp.swift
//  Froctus
//
//  Created by Apple on 10/2/21.
//

import SwiftUI

@main
struct FroctusApp: App {
    
    @AppStorage("isOnboarding") var isOnboarding : Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}
