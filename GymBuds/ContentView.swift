//
//  ContentView.swift
//  GymBuds
//
//  Created by Andrew Keck on 5/4/23.
//

import SwiftUI

struct ContentView: View {
    @State private var showMenu = false
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        Group {
            //no user logged in
            if viewModel.userSession == nil {
                LoginView()
            }
            else { //user is logged in
                mainInterfaceView
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(AuthViewModel())
    }
}

extension ContentView {

    var mainInterfaceView: some View {
        VStack {
            MainTabView()
        }

    }
}
