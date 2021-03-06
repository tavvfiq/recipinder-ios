//
//  View.swift
//  recipinder
//
//  Created by Taufiq Widi on 06/03/21.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            GeometryReader { (rootView) in
                VStack(alignment: .center) {
                    Spacer()
                    ZStack {
                        Card(rootView)
                    }
                    Spacer()
                    HStack (alignment: .center) {
                        Spacer()
                        CircleButton(iconName: "xmark", iconColor: .red, width: rootView.size.width * 0.2, height: rootView.size.width * 0.2)
                        CircleButton(iconName: "heart.fill", iconColor: .green ,width: rootView.size.width * 0.2, height: rootView.size.width * 0.2)
                        Spacer()
                    }
                    Spacer()
                }.frame(width: rootView.size.width, height: rootView.size.height, alignment: .center)
            }.navigationBarTitleDisplayMode(.inline).toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    NavigationLink(destination: SettingsView()) {
                        Image(systemName: "gear").foregroundColor(.green)
                    }
                }
                ToolbarItem(placement: .principal) {
                    Text("recipinder").font(.logo)
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink(destination: SavedRecipeView()) {
                        Image(systemName: "list.bullet").foregroundColor(.green)
                    }
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
