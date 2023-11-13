//
//  ContentView.swift
//  FirebaseAuthentication
//
//  Created by Adesh Shah on 2023-11-13.
//

import SwiftUI
import Firebase

struct ContentView: View {
    
    @State var email = ""
    @State var password = ""
    @State var userIsLoggedIn = false
    
    var body: some View {
        if userIsLoggedIn {
            ListView()
        } else {
            content
        }
    }
    var content: some View {
        VStack{
            TextField("Email", text: $email)
            SecureField("Password", text: $password)
            
            Button(action: { login() }, label: {
                Text("Sign In")
            })
            
            Button(action: { signUp() }, label: {
                Text("Sign Up")
            })
        }.padding()
    }
    
    func login() {
        Auth.auth().signIn(withEmail: email, password: password) { result, error in
            if error != nil {
                print(error?.localizedDescription ?? "")
            } else {
                print("Login successful")
            }
            
        }
    }
    
    func signUp(){
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            if error != nil {
                print(error?.localizedDescription ?? "")
            } else {
                print("Sign Up successful")
            }
            
        }
    }
}

#Preview {
    ContentView()
}
