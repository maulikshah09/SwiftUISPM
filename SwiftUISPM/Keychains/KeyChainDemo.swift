//
//  KeyChainDemo.swift
//  SwiftUISPM
//
//  Created by Maulik Shah on 2/19/25.
//

import SwiftUI
import KeychainSwift

 

 
struct KeyChainDemo: View {
    
    let keychain = KeychainSwift()
    @State private var userPassword = ""
    
    
    var body: some View {
        Button(userPassword.isEmpty ? "No Password" : userPassword) {
            let newPassword = "def123"
            keychain.set(newPassword, forKey: "user_password")
            keychain.synchronizable = true // sync with other device
            userPassword = newPassword
            
            
            keychain.delete("user_password")
            keychain.clear()
        }
        .onAppear {
            userPassword =  keychain.get("user_password") ?? ""
        }
        
    }
}

#Preview {
    KeyChainDemo()
}
