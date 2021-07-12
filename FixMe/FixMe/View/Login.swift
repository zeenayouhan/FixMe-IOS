//
//  Login.swift
//  FixMe
//
//  Created by Zeena Youhan on 2021-07-09.
//

import SwiftUI

struct Login: View {
   
    
    @StateObject var loginData = LoginViewModel()
    @State var isSmall = UIScreen.main.bounds.height < 750
    var body: some View {
        
        ZStack {
            VStack{
                    Text("Let's find a mechanic").frame(width: 370, height: 350, alignment:.bottomLeading).font(.system(size:20))
                    HStack{
                        VStack(alignment: .leading, spacing: 6) {
                            
                            Text("Enter your number")
                                .font(.caption)
                                .foregroundColor(.gray)
                            
                            Text("+ \(loginData.getCountryCode()) \(loginData.phoneNumber)")
                                .font(.title)
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                .foregroundColor(.black)
                            
                            
                        }
                        
                        Spacer(minLength: 0)
                        NavigationLink(
                            destination: Verification(loginData: loginData),isActive: $loginData.goToVerify){
                            Text("").hidden()
                            Button(action: loginData.sendCode) {
                                Text("Continue")
                                    .foregroundColor(.black)
                                    .padding(.vertical,18)
                                    .padding(.horizontal, 38)
                                    .background(Color.yellow)
                                    .cornerRadius(15)
                            }
                            
                        
                        .disabled(loginData.phoneNumber == "" ? true: false)
                        
                        }}
                    .padding(8)
                    .background(Color.white)
                    .cornerRadius(15)
                    
                    Text("Don't have an account? create account                  ")
                    Text("Privacy Policy                                                             ")
                    NumberPad(value: $loginData.phoneNumber, isVerify: false)
                    
            }.background(Image("back")).ignoresSafeArea(.all, edges: .bottom)
            if loginData.error{
                AlertView(msg: loginData.errorMsg, show: $loginData.error)
            }
        }
        
    }
       
    
    
}


struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}



