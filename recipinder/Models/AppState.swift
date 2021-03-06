//
//  AppState.swift
//  recipinder
//
//  Created by Taufiq Widi on 06/03/21.
//

import Foundation

class AppState: ObservableObject {
    @Published var likedRecipe = []
    @Published var nopedRecipe = []
}
