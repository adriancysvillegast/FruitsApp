//
//  ContentView.swift
//  Fruits App
//
//  Created by Adriancys Jesus Villegas Toro on 14/4/23.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - Properties
    @State private var isShowingSettings: Bool = false
    
    var fruit: [Fruit] = fruitsData
    
    // MARK: - Body
    
    var body: some View {
        
        NavigationView {
            List{
                ForEach(fruit.shuffled()) { iten in
                    NavigationLink(destination: FruitDetailView(fruit: iten)){
                        FruitRowView(fruit: iten)
                            .padding(.vertical, 4)
                    }
                }
            }//:List
            .navigationTitle("Fruits")
            .navigationBarItems(trailing:
                                    Button(action: {
                isShowingSettings = true
            }, label: {
                Image(systemName: "slider.horizontal.3")
            })//:botton
                .sheet(isPresented: $isShowingSettings, content: {
                    SettingsView()
                })
            )
        }//: NavigationView
        .navigationViewStyle(.stack)

    }
}


// MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruit: fruitsData)
    }
}
