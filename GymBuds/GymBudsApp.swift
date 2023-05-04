//
//  GymBudsApp.swift
//  GymBuds
//
//  Created by Andrew Keck on 5/4/23.
//

import SwiftUI
import FirebaseCore


class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()

    return true
  }
}


@main
struct GymBudsApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView{
                LoginView()
            }
        }
    }
}
