//
//  KeyPad.swift
//  FixMe
//
//  Created by Zeena Youhan on 2021-07-23.
//
//
//  NumberPAd.swift
//  FixMe
//
//  Created by Zeena Youhan on 2021-07-12.
//

import SwiftUI

struct KeyPad: View {
    @Binding var value: String
    var isVerify : Bool
    var rows = ["1", "2","3","4", "5","6","7","8","9","0","A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z","","_",">","delete.left"]
    var body: some View {
        GeometryReader{
            reader in
            VStack{
                LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing:20), count:8), spacing: 5){
                    ForEach(rows,id: \.self){
                        value in Button(action: {buttonAction(value: value)}) {
                            ZStack{
                                if value == "delete.left" {
                                    Image(systemName: value)
                                        .font(.title3)
                                        .foregroundColor(.black)
                                    
                                }
                                else{
                                    Text(value).font(.title3).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/).foregroundColor(.black)
                                    
                                }
                            }
                            .frame(width: getWidth(frame: reader.frame(in: .global)), height: getHeight(frame: reader.frame(in: .global))).background(Color.white).cornerRadius(10)
                        }
                        .disabled(value == "" ? true : false)
                }
                
            }
            }.padding()
        
        }
    }
        func getWidth(frame: CGRect) -> CGFloat{
                let width = frame.width
                
                let actualWidth = width - 240
                
                return actualWidth / 3
            }
            
        func getHeight(frame: CGRect) -> CGFloat{
                let height = frame.height
                
                let actualHeight = height - 90
                
                return actualHeight / 4
            }
        func buttonAction(value: String){
            if value == "delete.left" && self.value != "" {
                self.value.removeLast()
             }
             if value != "delete.left" {
                if isVerify{
                    if self.value.count < 6{
                        self.value.append(value)
                    }
                }
                else{
                    self.value.append(value)
                }
             }
        
    }
}
