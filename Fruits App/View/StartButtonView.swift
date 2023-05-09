//
//  StartButtonView.swift
//  Fruits App
//
//  Created by Adriancys Jesus Villegas Toro on 16/4/23.
//

import SwiftUI

struct StartButtonView: View {
    // MARK: - properties
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    
    // MARK: - body
    
    var body: some View {
        Button {
            isOnboarding = false
        } label: {
            HStack(spacing: 8) {
                Text("Start")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }//:HStack
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule().strokeBorder(Color.white, lineWidth: 1.25)
            )
        }//: button
        .accentColor(Color.white)
    }
}

// MARK: - preview
struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
