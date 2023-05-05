//
//  PostView.swift
//  GymBuds
//
//  Created by Andrew Keck on 5/5/23.
//

import SwiftUI

struct PostView: View {
    var body: some View {
        VStack (alignment: .leading) {
            
            HStack (spacing: 20){
                Circle()
                    .frame(width: 50, height: 50)
                Text("Username")
            }
            
            Rectangle()
                .frame(width: UIScreen.main.bounds.width - 10, height: UIScreen.main.bounds.width - 10)
            
            HStack {
                Button {
                    print("Like button clicked")
                } label: {
                    Image(systemName: "heart")
                }
                
                Button {
                    print("Comment button clicked")
                } label: {
                    Image(systemName: "message")
                }
            }
            
            Text("0 Likes")
                .padding(.top)
            Text("Caption")
                .padding(.top, 0.5)
            
        }
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView()
    }
}
