//
//  GymBudsApp.swift
//  GymBuds
//
//  Created by Andrew Keck on 5/4/23.
//

import SwiftUI
import FirebaseCore

@main
struct GymBudsApp: App {
    @StateObject var viewModel = AuthViewModel()
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ContentView()
            }
            .environmentObject(viewModel)
        }
    }
}
