 //
//  ContentView.swift
//  FixMe
//
//  Created by Zeena Youhan on 2021-07-03.
//

import SwiftUI
import Firebase

struct LabelStyle : ViewModifier {
    func body(content : Content) ->  some View{
        return content.foregroundColor(.green).clipShape(Capsule())
    }
}
struct ButtonStyle : ViewModifier {
    func body(content : Content) ->  some View{
        return content.padding(.horizontal, 30.0).padding(.vertical, 5)
    }
}


struct ContentView: View {
    @AppStorage("log_Status") var status = false
    var body: some View {
        ZStack{
            if status{
                VStack(spacing : 1){
                    Home()
                }
            }
            else{
                NavigationView{
                    VStack {
                                Spacer()
                                Text("Choose a language").padding(.top, 180).font(.system(size: 22))
                                HStack{
                                    Spacer()
                    
                                    Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                                        Text("සිංහල").modifier(ButtonStyle())
                                    }.background(Color.white).modifier(LabelStyle())
                                    Spacer()
                                    Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                                        Text("English").modifier(ButtonStyle())
                                    }.background(Color.black).modifier(LabelStyle())
                    
                                    Spacer()
                                    Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                                        Text("தமிழ்").modifier(ButtonStyle())
                                    }.background(Color.white).modifier(LabelStyle())
                    
                                    Spacer()
                                }.padding(.top,10)
                        Spacer()
                                Button(action: {}, label: {
                                        NavigationLink(destination: Login()) {
                                            Image(systemName: "arrow.right").resizable().scaledToFit()
                                                .frame(width: 30, height: 30)
                                                .background(Color.black).foregroundColor(.orange).shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/).clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/).font(.system(size: 20))
                                        }
                                    })
                    
                        Spacer().frame(width: 10, height: 180, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                            }
                            .background(Image("back"))
                            }
                

                }
            }
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
