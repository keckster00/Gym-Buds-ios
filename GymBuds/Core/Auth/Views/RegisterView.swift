//
//  RegisterView.swift
//  GymBuds
//
//  Created by Andrew Keck on 5/4/23.
//

import SwiftUI

struct RegisterView: View {
    @State private var email = ""
    @State private var username = ""
    @State private var fullname = ""
    @State private var password = ""
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        //parent container
        VStack {
            //header view
            AuthHeaderView(title1: "Get Started", title2: "Create an Account!")
            
            //Text fields
            VStack(spacing: 40) {
                CustomInputFields(imageName: "envelope", placeholderText: "Email", text: $email)
                
                CustomInputFields(imageName: "person", placeholderText: "Username", text: $username)
                
                CustomInputFields(imageName: "person", placeholderText: "Last Full Name", text: $fullname)
                
                CustomInputFields(imageName: "lock", placeholderText: "Password", text: $password)
                    
            }
            .padding(.horizontal, 32)
            .padding(.top, 44)
            
            
            Button {
                viewModel.register(withEmail: email, password: password, fullname: fullname, username: username)
            } label: {
                Text("Sign Up")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(width: 340, height: 50)
                    .background(Color(.systemBlue))
                    .clipShape(Capsule())
                    .padding()
            }
            .shadow(color: .gray.opacity(0.5), radius: 10, x: 0, y: 0 )
            .padding(.top)

            Spacer()
            NavigationLink {
                LoginView()
                    .navigationBarHidden(true)
            } label: {
                HStack {
                    Text("Already have an account?")
                    Text("Log in!")
                        .fontWeight(.semibold)
                }.foregroundColor(.blue)
            }
            .padding(.bottom, 32)

        }
        .ignoresSafeArea()
        .navigationBarHidden(true)
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
