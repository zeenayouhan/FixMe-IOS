//
//  Login.swift
//  FixMe
//
//  Created by Zeena Youhan on 2021-07-09.
//

import SwiftUI

struct Login: View {
   
    
    @StateObject var loginData = LoginViewModel()
    var body: some View {
        
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
                        destination: Verification(loginData: loginData)){
                       
                   
                        Text("Continue")
                            .foregroundColor(.black)
                            .padding(.vertical,18)
                            .padding(.horizontal, 38)
                            .background(Color.yellow)
                            .cornerRadius(15)
                    
                    .disabled(loginData.phoneNumber == "" ? true: false)
                    
                    }}
                .padding(8)
                .background(Color.white)
                .cornerRadius(15)
                
                Text("Don't have an account? create account                  ")
                Text("Privacy Policy                                                             ")
                GeometryReader{
                    reader in
                    VStack{
                        LazyVGrid(columns: Array(repeating: GridItem(.flexible(),spacing: 20), count:3), spacing: 15){
                            ForEach(rows,id: \.self){
                                value in Button(action: {buttonAction(value: value)}) {
                                    ZStack{
                                        if value == "delete.left" {
                                            Image(systemName: value)
                                                .font(.title)
                                                .foregroundColor(.black)
                                            
                                        }
                                        else{
                                            Text(value).font(.title).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/).foregroundColor(.black)
                                            
                                        }
                                    }
                                    .frame(width: getWidth(frame: reader.frame(in: .global)), height: getHeight(frame: reader.frame(in: .global))).background(Color.white).cornerRadius(10)
                                }
                                .disabled(value == "" ? true : false)
                        }
                        
                    }
                    }.padding()
                
                }
                
            }.background(Image("back")).ignoresSafeArea(.all, edges: .bottom)
    }
        func getWidth(frame: CGRect) -> CGFloat{
                let width = frame.width
                
                let actualWidth = width - 30
                
                return actualWidth / 3
            }
            
        func getHeight(frame: CGRect) -> CGFloat{
                let height = frame.height
                
                let actualHeight = height - 75
                
                return actualHeight / 4
            }
    func buttonAction(value: String){
        if value == "delete.left" && loginData.phoneNumber != "" {
            loginData.phoneNumber.removeLast()
        }
        if value != "delete.left" {
            loginData.phoneNumber.append(value)
        }
    }
    
}

var rows = ["1", "2","3","4", "5","6","7","8","9","","0","delete.left"]
struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}



