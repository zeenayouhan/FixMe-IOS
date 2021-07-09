//
//  ContentView.swift
//  FixMe
//
//  Created by Zeena Youhan on 2021-07-03.
//

import SwiftUI

struct LabelStyle : ViewModifier {
    func body(content : Content) ->  some View{
        return content.background(Color.white).foregroundColor(.green).clipShape(Capsule())
    }
}
struct ButtonStyle : ViewModifier {
    func body(content : Content) ->  some View{
        return content.padding(.horizontal, 30.0).padding(.vertical, 5)
    }
}


struct ContentView: View {
    var body: some View {
        NavigationView{
        VStack {
            Spacer()
            HStack{
                Spacer()
                Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("සිංහල").modifier(ButtonStyle())
                }.modifier(LabelStyle())
                Spacer()
                Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("English").modifier(ButtonStyle())
                }.modifier(LabelStyle())

                Spacer()
                Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("தமிழ்").modifier(ButtonStyle())
                }.modifier(LabelStyle())

                Spacer()
            }.padding(.top, 200)
            Spacer()
            Button(action: {}, label: {
                    NavigationLink(destination: Login()) {
                        Text("Next")
                    }
                })
            
            Spacer()
        }
        .background(Image("back"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
