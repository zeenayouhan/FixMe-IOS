//
//  LoginViewModel.swift
//  FixMe
//
//  Created by Zeena Youhan on 2021-07-10.
//

import SwiftUI
import Firebase

class LoginViewModel: ObservableObject{
    @Published var phoneNumber = ""
    @Published var code = ""
    
    @Published var errorMsg = ""
    @Published var error = false
    @Published var CODE = ""
    @Published var goToVerify = false
    @Published var loading = false
    @AppStorage("log_Status") var status = false
    
    func getCountryCode() -> String{
        let regionCode = Locale.current.regionCode ?? ""
        return countries[regionCode] ?? "" 
    }
    func sendCode(){
        
        Auth.auth().settings?.isAppVerificationDisabledForTesting = true
        let number = "+94\(phoneNumber)"
        PhoneAuthProvider.provider().verifyPhoneNumber(number, uiDelegate: nil){
            (CODE,err) in
            if let error = err{
                self.errorMsg = error.localizedDescription
                withAnimation{self.error.toggle()}
                return
            }
            self.CODE = CODE ?? ""
            self.goToVerify = true
        }
        
    }
    func verifyCode(){
        
        let credential = PhoneAuthProvider.provider().credential(withVerificationID: self.CODE, verificationCode: code)
        loading =  true
        Auth.auth().signIn(with: credential){( result, err) in
            self.loading = false
            if let error = err{
                self.errorMsg = error.localizedDescription
                withAnimation{self.error.toggle()}
                return
            }
            withAnimation{self.status = true}
        }
        }
    func requestCode(){
        sendCode()
        withAnimation{
            self.errorMsg = "Code sent Succesfully !!!"
            self.error.toggle()
        }
        
    }
}


