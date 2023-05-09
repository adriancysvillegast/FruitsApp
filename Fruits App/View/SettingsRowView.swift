//
//  SettingsRowView.swift
//  Fruits App
//
//  Created by Adriancys Jesus Villegas Toro on 2/5/23.
//

import SwiftUI

struct SettingsRowView: View {
    
    // MARK: - Properties
    
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    // MARK: - Body
    
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack {
                Text(name).foregroundColor(Color.gray)
                Spacer()
                if (content != nil) {
                    Text(content!)
                } else if (linkLabel != nil && linkDestination != nil) {
                    Link(linkLabel!, destination: URL(string: "https://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                }
                
                else {
                    EmptyView()
                }
            }//:HSTACK
        }//: VSTACK
    }
}

// MARK: - Preview

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingsRowView(name: "Developer", content: "Adrian")
                .previewLayout(.fixed(width: 375, height: 60))
            .padding()
            SettingsRowView(name: "website", linkLabel: "SwiftUI Class", linkDestination: "swiftuimasterclass.com")
                .preferredColorScheme(.dark)
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
        }
    }
}
