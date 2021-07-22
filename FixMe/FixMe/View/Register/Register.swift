//
//  Register.swift
//  FixMe
//
//  Created by Zeena Youhan on 2021-07-22.
//

import SwiftUI

struct Register: View {
    @StateObject var registerData = RegisterViewModel()
    var body: some View {
        VStack{
        VStack{
            HStack{
                VStack(alignment: .leading, spacing: 6) {
                    
                    Text("First Name")
                        .font(.caption)
                        .foregroundColor(.gray)
                    
                    Text("\(registerData.firstName) ")
                        .font(.title)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.black)
                    
                    
                }
                
                Spacer(minLength: 0)
                
                
                }.background(Color.orange.opacity(0.1))
            .padding(15)
            .background(Color.white)
            .cornerRadius(15)
        }
        VStack{
            HStack{
                VStack(alignment: .leading, spacing: 6) {
                    
                    Text("Last Name")
                        .font(.caption)
                        .foregroundColor(.gray)
                    
                    Text("\(registerData.lastName) ")
                        .font(.title)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.black)
                    
                    
                }
                
                Spacer(minLength: 0)
                
                
                }.background(Color.orange.opacity(0.1))
            .padding(15)
            .background(Color.white)
            .cornerRadius(15)
        }
            VStack{
                HStack{
                    VStack(alignment: .leading, spacing: 6) {
                        
                        Text("PhoneNumber")
                            .font(.caption)
                            .foregroundColor(.gray)
                        
                        Text("\(registerData.phoneNumber) ")
                            .font(.title)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.black)
                        
                        
                    }
                    
                    Spacer(minLength: 0)
                    
                    
                    }.background(Color.orange.opacity(0.1))
                .padding(15)
                .background(Color.white)
                .cornerRadius(15)
            }
        }
    }
}

struct Register_Previews: PreviewProvider {
    static var previews: some View {
        Register()
    }
}
