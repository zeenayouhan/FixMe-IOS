//
//  AlertView.swift
//  FixMe
//
//  Created by Zeena Youhan on 2021-07-12.
//

import SwiftUI

struct AlertView: View {
    var msg : String
    @Binding var show: Bool
    var body: some View {
        VStack(alignment: .leading, spacing: 15, content: {
            Text("Message")
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .foregroundColor(.gray)
            Text(msg).foregroundColor(.gray)
            Button(action: {
                withAnimation{show.toggle()}
            }, label: {
                Text("Close")
                    .foregroundColor(.black)
                    .padding(.vertical)
                    .frame(width: UIScreen.main.bounds.width - 100)
                    .background(Color.yellow)
                    .cornerRadius(15)
            })
            .frame(alignment: .center)
            
        })
        .padding()
        .background(Color.white)
        .cornerRadius(15)
        
        .frame( maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
        .background(Color.black.opacity(0.3).ignoresSafeArea())
    }
}


