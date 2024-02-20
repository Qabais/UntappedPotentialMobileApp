//
//  AccountRegisterationView.swift
//  UntappedPotential
//
//  Created by apple on 20/02/2024.
//

import SwiftUI

struct AccountRegisterationView: View {
    
    //create var to hold email input
    @State private var email = ""
    //create var to hold name input
    @State private var fullName = ""
    //create var to hold password input
    @State private var password = ""
    //create var to hold confirm password input
    @State private var confirmPassword = ""
    
    //create var to close out of registeration screen.
    @Environment(\.dismiss) var closeRegisterScreen
    
    var body: some View {
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
                
                //creating full name field
                //pass in the empty name variable
                //pass in class parameters to represent name field
                InputFieldView(text: $fullName,
                               fieldTitle: "Full Name",
                               fieldTag: "Enter your name: ")
                
                //create password field
                //pass in empty password variable
                //pass in class parameters to represent password field
                //set securefield to true.
                InputFieldView(text: $password,
                               fieldTitle: "Password",
                               fieldTag: "Enter your password: ",
                               isSecureField: true)
                
                //create confirm password field
                //pass in empty confirm password variable
                //pass in class parameters to represent password field
                //set securefield to true.
                InputFieldView(text: $confirmPassword,
                               fieldTitle: "Confirm Password",
                               fieldTag: "Retype your password: ",
                               isSecureField: true)
            }
            //move away from egde of screen
            .padding(.horizontal)
            //create space between logo and text
            .padding(.top, 12)
            
            //login button
            //Pass in DEBUG message parameter
            //Pass in button name
            AccountPageButtonView(buttonAction: "User Request: SIGN UP", buttonTitle: "Register Account")
            
            Spacer()
            
            //Login button - set destination back to main login screen.
            Button{
                //closes temporary environment of registeration screen.
                closeRegisterScreen()
            }   //display for register button
                label: {
                HStack{
                    Text("Already have an account?")
                    Text("Login")
                        .fontWeight(.bold)
                }
                .font(.system(size: 20))
                .foregroundColor(Color(.systemBlue))
            }
        }
    }
}

struct AccountRegisterationView_Previews: PreviewProvider {
    static var previews: some View {
        AccountRegisterationView()
    }
}
