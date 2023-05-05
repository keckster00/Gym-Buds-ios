//
//  FeedView.swift
//  GymBuds
//
//  Created by Andrew Keck on 5/5/23.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        VStack {
            FeedHeaderView()
                .frame(height: 30)
                .padding(.bottom)
            ScrollView {
                LazyVStack {
                    ForEach(0 ... 20, id: \.self) { _ in
                        PostView()
                            .padding()
                        
                    }
                }
            }
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
