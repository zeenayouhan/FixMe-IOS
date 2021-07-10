//
//  Login.swift
//  FixMe
//
//  Created by Zeena Youhan on 2021-07-09.
//

import SwiftUI

struct Login: View {
    @State private var phoneNumber: String = ""
    @State private var pcode: String = " 94"
    @StateObject var loginData = LoginViewModel()
    var body: some View {
        NavigationView{
        VStack{
            Text("Let's find a mechanic").frame(width: 370, height: 400, alignment:.bottomLeading).font(.system(size:25))
            HStack{
            VStack(alignment: .leading, spacing: 6) {
               
            Text("Enter your number")
                .font(.caption)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/).foregroundColor(.gray)
                
                Text("+ \(loginData.getCountryCode()) \(loginData.phoneNumber)")
                .font(.title2)
                .foregroundColor(.black)
            
            }
                
            Spacer(minLength: 0)
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Continue")
                        .foregroundColor(.black)
                        .padding(.vertical,18)
                        .padding(.horizontal, 38)
                        .background(Color.yellow)
                        .cornerRadius(15)
            }
            )
            }
            
            Text("Don't have an account? create account                  ")
            Text("Privacy Policy                                                             ")
            GeometryReader{
                reader in
                VStack{
                    LazyVGrid(columns: Array(repeating: GridItem(.flexible(),spacing: 20), count:3), spacing: 15){
                        ForEach(rows,id: \.self){
                            value in Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                Text(value)
                            }).foregroundColor(.blue)
                        }
                    }
                    
                }
            }.padding()
            Spacer()
        }.background(Image("back")).padding()
    }
    }
}
var rows = ["1", "2","3","4", "5","6","7","8","9","","0","delete.left"]
struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
