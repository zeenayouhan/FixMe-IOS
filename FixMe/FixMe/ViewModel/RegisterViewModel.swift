//
//  RegisterViewModel.swift
//  FixMe
//
//  Created by Zeena Youhan on 2021-07-22.
//

import SwiftUI

class RegisterViewModel: ObservableObject{
    @Published var firstName = ""
    @Published var lastName  = ""
    @Published var phoneNumber = ""
    @Published var userType = ""
}

