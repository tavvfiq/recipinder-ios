//
//  SavedRecipeView.swift
//  recipinder
//
//  Created by Taufiq Widi on 06/03/21.
//

import SwiftUI

struct SavedRecipeView: View {
    var body: some View {
        TabView {
            NavigationView {
                Text("screen 1")
            }.tabItem {
                Label("Noped", systemImage: "xmark").font(fontTheme(type: .medium, size: 20))
            }
            NavigationView {
                Text("screen 2")
            }.tabItem {
                Label("Liked", systemImage: "heart.fill").font(fontTheme(type: .medium, size: 20))
            }
        }.toolbar {
            ToolbarItem(placement: .principal) {
                Text("Saved Recipe").font(fontTheme(type: .bold, size: 20))
            }
        }
    }
}

struct SavedRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        SavedRecipeView()
    }
}
