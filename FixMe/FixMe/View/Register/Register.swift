//
//  Register.swift
//  FixMe
//
//  Created by Zeena Youhan on 2021-07-22.
//

import SwiftUI

struct TextFieldStyle : ViewModifier {
    func body(content : Content) ->  some View{
        return content.background(Color.orange.opacity(0.1))
            .padding(10)
            .background(Color.white)
            .cornerRadius(15)
    }
}
struct Register: View {
    @State private var userType = ""
    @StateObject var registerData = RegisterViewModel()
    var body: some View {
        NavigationView{
            
            Form{
                TextField("FirstName", text : $registerData.firstName)
                TextField("LastName", text : $registerData.lastName)
                TextField("CountryCode", text : $registerData.countryCode)
                TextField("PhoneNumber", text : $registerData.phoneNumber)
                TextField("Email", text : $registerData.email)
                
                Picker(selection: $userType, label: Text("UserType")){
                    ForEach(UserType.usertypes, id: \.self){
                        userType in
                        Text(userType).tag(userType)
                    }
                    
                }
                Spacer().frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Submit")
                        
                })
            }.navigationBarTitle("SignUp")
            
        }
        
    }
}

struct Register_Previews: PreviewProvider {
    static var previews: some View {
        Register()
    }
}
