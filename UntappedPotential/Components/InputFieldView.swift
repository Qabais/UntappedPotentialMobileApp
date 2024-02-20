//
//  InputFieldView.swift
//  UntappedPotential
//
//  Created by apple on 20/02/2024.
//

import SwiftUI

struct InputFieldView: View {
    
    //each text field will have set assigned parameter
    
    //users input will be assigned to text
    @Binding var text :String
    //var to show title for the input box
    let fieldTitle: String
    //var to show example of field entry
    let fieldTag: String
    //var to check if is secureField
    //default value of false for normal text fields
    var isSecureField = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12){
            //display input box title
            Text(fieldTitle)
            //UIScheme for title
                .foregroundColor(Color(.darkGray))
                .fontWeight(.semibold)
                .font(.footnote)
            //sets input of field to secure property
            if isSecureField{
                SecureField(fieldTag, text:$text)
                    .font(.system(size : 15))
            //else will be a normal text field
            }else {
                TextField(fieldTag, text:$text)
                    .font(.system(size : 15))
            }
            //Creates line under the field Tag
            Divider()
        }
    }
}

struct InputFieldView_Previews: PreviewProvider {
    static var previews: some View {
        InputFieldView(text: .constant(""), fieldTitle: "Email Address", fieldTag: "email@address.com")
    }
}
