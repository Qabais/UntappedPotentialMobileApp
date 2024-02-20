//
//  LoginPageView.swift
//  UntappedPotential
//
//  Created by apple on 20/02/2024.
//
// This file is a SwiftUI View that will hold the components of the LOGIN Page.

import SwiftUI




struct LoginPageView: View {
    //create var to hold email input
    @State private var email = ""
    //var to hold user password input
    @State private var password = ""
    
    var body: some View {
        NavigationStack{
            VStack{
                //Logo Image
                
                
                //Input fields
                VStack(spacing : 30){
                    //creating email address field
                    //pass in the empty email variable
                    //pass in class parameters to represent email field
                    InputFieldView(text: $email,
                                   fieldTitle: "Email Address",
                                   fieldTag: "email@address.com")
                    //inhibit caps, uniform entry to database.
                        .autocapitalization(.none)
                    
                    //create password field
                    //pass in empty password variable
                    //pass in class parameters to represent password field
                    //set securefield to true.
                    InputFieldView(text: $password,
                                   fieldTitle: "Password",
                                   fieldTag: "Enter your password: ",
                                   isSecureField: true)
                }
                //move away from egde of screen
                .padding(.horizontal)
                //create space between logo and text
                .padding(.top, 12)
                
                //login button
                //Pass in DEBUG message parameter
                //Pass in button name
                AccountPageButtonView(buttonAction: "User Request: LOGIN", buttonTitle: "Sign In")
                
                Spacer()
                
                //register account button
                NavigationLink{
                    //set destination of button press
                    AccountRegisterationView()
                        //hides the back button from the new view
                        .navigationBarBackButtonHidden(true)
                }   //display for register button
                    label: {
                    HStack{
                        Text("Do not have an account?")
                        Text("Sign Up")
                            .fontWeight(.bold)
                    }
                    .font(.system(size: 20))

                    
                }
                
            }
        }
    }
}

struct LoginPageView_Previews: PreviewProvider {
    static var previews: some View {
        LoginPageView()
    }
}
