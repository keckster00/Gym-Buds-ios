//
//  MainTabView.swift
//  GymBuds
//
//  Created by Andrew Keck on 5/5/23.
//

import SwiftUI

struct MainTabView: View {
    @State private var selectedIndex = 0
    var body: some View {
        TabView(selection: $selectedIndex) {
            FeedView()
                .onTapGesture(perform: {
                    self.selectedIndex = 0
                })
                .tabItem({
                    Image(systemName: "house")
                })
                .tag(0)
            
            FeedView()
                .onTapGesture(perform: {
                    self.selectedIndex = 1
                })
                .tabItem({
                    Image(systemName: "calendar")
                })
                .tag(1)
            
            FeedView()
                .onTapGesture(perform: {
                    self.selectedIndex = 2
                })
                .tabItem({
                    Image(systemName: "plus")
                })
                .tag(2)


            FeedView()
                .onTapGesture(perform: {
                    self.selectedIndex = 3
                })
                .tabItem({
                    Image(systemName: "lock")
                })
                .tag(3)

            FeedView()
                .onTapGesture(perform: {
                    self.selectedIndex = 4
                })
                .tabItem({
                    Image(systemName: "person")
                })
                .tag(4)

        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
