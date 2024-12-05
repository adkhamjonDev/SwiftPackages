//
//  KeychainSwift.swift
//  SwiftPackages
//
//  Created by Adkhamjon Rakhimov on 05/12/24.
//

import SwiftUI
import KeychainSwift




// Keychain is similar to UserDefaults or Appstorage
// Keychain is encrypted
// Keychain is good for: passwords, credit card, sensitive data
// Keychain persists between installs and across devices

struct Keychain: View {
    
    @Environment(\.keychain) private var keychainManager
    @State private var userPassword: String = ""
    var body: some View {
        Button(userPassword.isEmpty ? "No password" : userPassword){
            let newPassword = "def123"
            keychainManager.set(newPassword, key: "user_password")
            userPassword = newPassword


//            keychainManager.keychain.delete("user_password")
//            keychainManager.keychain.clear()

        }
        .onAppear{
            userPassword = keychainManager.get(key: "user_password")
        }
    }
}

#Preview {
    Keychain()
}
