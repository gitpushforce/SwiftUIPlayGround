//
//  AlertSampleView.swift
//  swiftuiplayground
//
//  Created by masaki on 2022/12/28.
//

import SwiftUI

struct AlertSampleView: View {
    
    @State private var value = ""
    @State private var alertMessage = ""
    @State private var presentAlert = false
    var body: some View {
        ZStack {
            Color.purple
            VStack {
                Text(value)
                TextField(
                    "User name (email address)", text: $value
                )
                Button("OK") {
                    if (value == "") {
                        alertMessage = "Empty text"
                        presentAlert = true
                    } else {
                        alertMessage = "non-empty text"
                        presentAlert = true
                    }
                }
            }.alert(alertMessage, isPresented: $presentAlert, actions:{}, message: {
                Text("aaaaaa")
            })
        }
        
        
    }
    
//    func showAlert (title: String, message: String) {
//        let alert = UIAlertController(title: "Ok", message: message, preferredStyle: .alert)
//        let ok = UIAlertAction(title: "Ok", style: .default, handler: nil)
//        alert.addAction(ok)
//        present(alert, animated: true, completion: nil)
//    }
}

struct AlertSampleView_Previews: PreviewProvider {
    static var previews: some View {
        AlertSampleView()
    }
}
