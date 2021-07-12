//
//  LoginViewModel.swift
//  FixMe
//
//  Created by Zeena Youhan on 2021-07-10.
//

import SwiftUI

class LoginViewModel: ObservableObject{
    @Published var phoneNumber = ""
    @Published var code = ""
    
    func getCountryCode() -> String{
        let regionCode = Locale.current.regionCode ?? ""
        return countries[regionCode] ?? "" 
    }
}


