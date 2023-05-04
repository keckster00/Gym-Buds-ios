//
//  LoginView.swift
//  GymBuds
//
//  Created by Andrew Keck on 5/4/23.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    var body: some View {
        //parent container
        VStack {
            //header view
            VStack(alignment: .leading) {
                HStack{Spacer()}
                Text("Gym Buds!")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
            }
            .frame(height: 260)
            .padding(.leading)
            .background(Color(.systemBlue))
            .foregroundColor(.white)
            .clipShape(RoundedShape(corners: [.bottomRight])) //wow
            
            //Text fields
            VStack(spacing: 40) {
                CustomInputFields(imageName: "envelope", placeholderText: "Email", text: $email)
                
                CustomInputFields(imageName: "lock", placeholderText: "Password", text: $password)
                    
            }
            .padding(.horizontal, 32)
            .padding(.top, 44)
            
            HStack{
                Spacer()
                
                NavigationLink {
                    Text("Reset password view...")
                } label: {
                    Text("Forgot Password")
                        .font(.caption)
                        .fontWeight(.bold)
                        .foregroundColor(.blue)
                        .padding(.top)
                        .padding(.trailing, 24)
                }
            }
            
            Button {
                print("Sign in here")
            } label: {
                Text("Sign In")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(width: 340, height: 50)
                    .background(Color(.systemBlue))
                    .clipShape(Capsule())
                    .padding()
            }
            .shadow(color: .gray.opacity(0.5), radius: 10, x: 0, y: 0 )

            Spacer()
            NavigationLink {
                RegisterView()
                    .navigationBarHidden(false)
            } label: {
                HStack {
                    Text("Dont have an account?")
                    Text("Sign up!")
                        .fontWeight(.semibold)
                }.foregroundColor(.blue)
            }
            .padding(.bottom, 32)

        }
        .ignoresSafeArea()
        .navigationBarHidden(true)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
