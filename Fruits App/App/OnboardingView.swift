//
//  OnboardingView.swift
//  Fruits App
//
//  Created by Adriancys Jesus Villegas Toro on 16/4/23.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: - properties
    var fruits: [Fruit] = fruitsData
    // MARK: - body
    var body: some View {
        TabView {
            ForEach(fruits[0...5]) { item in
                FruitCardView(fruit: item)
            }//: loop
            
        }//:TabView
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}
// MARK: - priview
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruits: fruitsData)
    }
}
