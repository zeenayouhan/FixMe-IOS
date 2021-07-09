//
//  ContentView.swift
//  FixMe
//
//  Created by Zeena Youhan on 2021-07-03.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        VStack {
            HStack{
                Spacer()
                Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("සිංහල").padding(.horizontal, 30.0).padding(.vertical, 5)
                }.background(Color.white).foregroundColor(.green).clipShape(Capsule())
                Spacer()
                Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("English").padding(.horizontal, 30.0).padding(.vertical, 5)
                }.background(Color.white).foregroundColor(.green).clipShape(Capsule())
                Spacer()
                Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("தமிழ்").padding(.horizontal, 30.0).padding(.vertical, 5)
                }.background(Color.white).foregroundColor(.green).clipShape(Capsule())
                Spacer()
            }
        }
        .background(Image("back"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
