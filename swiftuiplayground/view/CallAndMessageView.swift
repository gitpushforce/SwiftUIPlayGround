//
//  CallAndMessageView.swift
//  swiftuiplayground
//
//  Created by masaki on 2022/12/11.
//

import SwiftUI

struct CallAndMessageView: View {
    
    let numero = "100000000"
    let mensaje = "Hola como estas?"
    
    func sendMessage() {
        let sms = "sms:\(numero)&body=\(mensaje)"
        guard let stringSMS = sms.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) else {
            return
        }
        UIApplication.shared.open(URL.init(string: stringSMS)!, options: [:], completionHandler: nil)
    }
    
    func sendCall() {
        guard let number = URL(string: "tel://\(numero)") else { return }
        UIApplication.shared.open(number)
    }
    
    var body: some View {
        ZStack {
            VStack {
                Text("Hello, World!")
                HStack {
                    Button(action: {
                        sendCall()
                    }) {
                        Image(systemName: "phone.fill")
                            .modifier(boton1(color: .blue))
                    }
                    
                    
                    Button(action: {
                        sendMessage()
                    }) {
                        Image(systemName: "message.fill")
                            .modifier(boton1(color: .red))
                    }
                }
            }
        }
    }
}

struct boton1 : ViewModifier {
    var color : Color
    func body(content: Content) -> some View {
        content
            .padding()
            .background(color)
            .clipShape(Circle())
            .foregroundColor(.white)
            .font(.title)
    }
}

struct CallAndMessageView_Previews: PreviewProvider {
    static var previews: some View {
        CallAndMessageView()
    }
}
