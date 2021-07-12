//
//  Verification.swift
//  FixMe
//
//  Created by Zeena Youhan on 2021-07-12.
//

import SwiftUI

struct Verification: View {
    @ObservedObject var loginData : LoginViewModel
    @Environment(\.presentationMode) var present
    var body: some View {
        VStack{
        VStack{
            HStack{
                Button(action: {present.wrappedValue.dismiss()}) {
                    Image(systemName: "arrow.left")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.black)
                }
                Spacer()
                Text("Verify Phone")
                    .font(.title)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                Spacer()
            }.padding()
            Text("Code sent to \(loginData.phoneNumber)")
                .foregroundColor(.gray)
                .padding(.bottom )
            Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
            HStack(spacing : 15){
                ForEach(0..<6, id: \.self){
                    index in
                    CodeView(code: getCodeAtIndex(index: index))
                }
            }
            .padding()
            .padding(.horizontal,20)
            Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
            HStack(spacing :6){
                Text("Didn't recieve the code?")
                    .foregroundColor(.gray)
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/){
                    Text("Request Again")
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                }
                
            }
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/){
                Text("Get via call")
                    .fontWeight(.bold)
                    .foregroundColor(.black)
            }
            .padding(.top,6)
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/){
                Text("Verify and Create Account")
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .padding(.vertical)
                    .frame(width: UIScreen.main.bounds.width - 30)
                    .background(Color.yellow)
                    .cornerRadius(15)
            }
            .padding()
        }
        .frame(height: UIScreen.main.bounds.height / 1.8)
        .background(Color.white)
        .cornerRadius(20)
            Spacer()
    }
        .background(Color("bg").ignoresSafeArea(.all, edges: /*@START_MENU_TOKEN@*/.bottom/*@END_MENU_TOKEN@*/))
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
        func getCodeAtIndex(index: Int)->String{
            if loginData.code.count > index{
                let start = loginData.code.startIndex
                let current = loginData.code.index(start, offsetBy: index)
                return String(loginData.code[current])
                
            }
            return ""
            
        }
}

struct CodeView:View{
        var code: String
        var body: some View{
            
            VStack(spacing: 10){
                Text(code)
                    .foregroundColor(.black)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .font(.title2)
                    .frame(height: 45)
                
                Capsule()
                    .fill(Color.gray.opacity(0.5))
                    .frame(height: 4)
            
            }
        }
    }

