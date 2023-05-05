//
//  FeedHeaderView.swift
//  GymBuds
//
//  Created by Andrew Keck on 5/5/23.
//

import SwiftUI

struct FeedHeaderView: View {
    var body: some View {
        HStack {
            Text("GYM BUDS")
                
            Spacer()
                
            Button {
                print("Notification clicked")
            } label: {
                Image(systemName: "bell")
            }
            
            Button {
                print("Messages clicked")
            } label: {
                Image(systemName: "tray.fill")
            }

        }
        .padding(.horizontal)
    }
}

struct FeedHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FeedHeaderView()
    }
}
