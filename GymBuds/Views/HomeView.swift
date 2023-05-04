//
//  ContentView.swift
//  GymBuds
//
//  Created by Andrew Keck on 5/4/23.
//

import SwiftUI

struct HomeView: View {
    @State var selectedDate: Date = Date()
    var body: some View {
        DatePicker("Selected Date", selection: $selectedDate)
            .padding(.horizontal)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
