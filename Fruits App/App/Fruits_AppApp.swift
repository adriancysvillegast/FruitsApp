//
//  Fruits_AppApp.swift
//  Fruits App
//
//  Created by Adriancys Jesus Villegas Toro on 14/4/23.
//

import SwiftUI

@main
struct Fruits_AppApp: App {
    
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            
            if isOnboarding {
                OnboardingView()
            }else {
                ContentView()
            }

            
        }
    }
}
