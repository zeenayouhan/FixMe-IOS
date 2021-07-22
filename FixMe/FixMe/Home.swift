//
//  Home.swift
//  FixMe
//
//  Created by Zeena Youhan on 2021-07-12.
//

import SwiftUI
import Firebase

struct Home: View {
    @AppStorage("log_Status") var status = true
    
    var body: some View {
        
        ZStack(alignment: .center){
            if status{
                VStack(spacing : 1){
                    
                    Spacer()
                    Text("Stay Safe , Safety Drive")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .fontWeight(.heavy)
                        .foregroundColor(.black)
                        
                    Spacer()
                    Button(action: {
                        //try Auth.auth().signOut()
                        withAnimation{ status = false}
                        
                    }) {
                        
                        Text("Log Out").fontWeight(.heavy)
                    }
                }
            }
            else{
                NavigationView{
                    Login()
                }
            }
        }.background(        LinearGradient(gradient: Gradient(colors: [.blue, .white]), startPoint: .top, endPoint: .bottom)
        )
    }
    
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
