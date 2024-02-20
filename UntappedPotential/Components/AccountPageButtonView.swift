//
//  ActionButtonView.swift
//  UntappedPotential
//
//  Created by apple on 20/02/2024.
//

import SwiftUI

struct AccountPageButtonView: View {
    
    //var to print button action to console
    let buttonAction : String
    
    //var to indicate button name
    let buttonTitle : String
    
    var body: some View {
        //login button
        Button {
            //Buttons Action
            //Print to Console for DEBUGGING
            print(buttonAction)
        }
            //Display for Button
            label: {
                HStack
                {
                    Text(buttonTitle)
                        .fontWeight(.semibold)
                    Image(systemName: "arrow.right")
                }
                .foregroundColor(.white)
                .frame(width: UIScreen.main.bounds.width - 32, height : 48)
            }
            .background(Color(.systemBlue)
                .cornerRadius(12))
            .padding(.top, 10)
    }
}

struct ActionButtonView_Previews: PreviewProvider {
    static var previews: some View {
        AccountPageButtonView(buttonAction: "Action Passed IN", buttonTitle: "Button")
    }
}
