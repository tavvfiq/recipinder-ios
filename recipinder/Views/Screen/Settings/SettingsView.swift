//
//  SettingsView.swift
//  recipinder
//
//  Created by Taufiq Widi on 06/03/21.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        NavigationView {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }.toolbar {
            ToolbarItem(placement: .principal) {
                Text("Settings").font(fontTheme(type: .bold, size: 20))
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
