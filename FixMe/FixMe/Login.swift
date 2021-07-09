//
//  Login.swift
//  FixMe
//
//  Created by Zeena Youhan on 2021-07-09.
//

import SwiftUI

struct Login: View {
    @State private var phoneNumber: String = ""
    @State private var pcode: String = "94"
    var body: some View {
        NavigationView{
        VStack{
            Text("Let's find a mechanic").frame(width: 370, height: 400, alignment:.bottomLeading).font(.system(size:25))
            HStack{
                TextField("11", text: $pcode ).frame(width: 40.0).border(Color(UIColor.black)).font(.system(size:25))
            TextField("+94", text: $pcode ).frame(width: 40.0).border(Color(UIColor.black)).font(.system(size:25))
                TextField("Phone Number", text: $phoneNumber ).border(Color(UIColor.black)).font(.system(size:25))
            }.padding(.bottom,10).padding(.horizontal, 10)
            Text("Don't have an account? create account                  ")
            Text("Privacy Policy                                                             ")
        }.background(Image("back"))
    }
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
