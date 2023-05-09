//
//  SettingsView.swift
//  Fruits App
//
//  Created by Adriancys Jesus Villegas Toro on 26/4/23.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - properties
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    // MARK: - body
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    
                    // MARK: - Secction One
                    GroupBox {
                        Divider().padding(.vertical, 4)
                        
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            
                            Text("Most fruits are naturally low in fat, sodium and calories. None have cholesterol. Fruit are sources of many essential nutrients, including potassium dietary fiber, vitamins, and much more.")
                                .font(.footnote)
                        }//: HStack
                    } label: {
                        SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
                    }

                    
                    
                    // MARK: - Secction Two
                    
                    GroupBox {
                        Divider().padding(.vertical, 4)
                        Text("If you wish, you can restore the application by toggle the switch in this box. That way it starts the onboarding process and you will see the welcome screen again.")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        
                        Toggle(isOn: $isOnboarding) {
                            if isOnboarding {
                                Text("Restarted".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.green)
                            } else {
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.secondary)
                            }
                        }
                        .padding()
                        .background(
                            Color(UIColor.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        )
                        
                    } label: {
                        SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")
                    }

                    
                    // MARK: - Secction Three
                    GroupBox {
                        
                    } label: {
                        SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
                        
                        SettingsRowView(name: "Developer", content: "Adriancys Villegas")
                        SettingsRowView(name: "Designer", content: "Adriancys Villegas")
                        SettingsRowView(name:"Compatibility", content: "ios 14")
                        SettingsRowView(name: "Website", linkLabel: " SwiftUI Masterclass", linkDestination: "swiftuimasterclass.com")
                        SettingsRowView(name: "Twitter", linkLabel: "@adriancys", linkDestination: "twitter.com/adriancys")
                        SettingsRowView(name: "SwiftUI", content: "2.0")
                        SettingsRowView(name: "Version", content: "1.1.0")
                    }//: GroupBox

                    
                }//: VStack
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(trailing:
                                        Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    Image(systemName: "xmark")
                })
                )
                .padding()
            }//: Scroll
        }//: NavigationView
        
        
        
    }
}

// MARK: - preview

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
        
    }
}
