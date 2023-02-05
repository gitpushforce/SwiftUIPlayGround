//
//  ModifierView.swift
//  swiftuiplayground
//
//  Created by masaki on 2022/12/11.
//

import SwiftUI

struct ModifierView: View {
    var body: some View {
        ZStack {
            VStack {
                Text("Hello, World!")
                HStack {
                    Button(action: {}) {
                        Image(systemName: "phone.fill")
                            .modifier(boton(color: .blue))
                    }
                    
                    Button(action: {}) {
                        Image(systemName: "message.fill")
                            .modifier(boton(color: .red))
                    }
                }
            }
        }
    }
}

struct boton : ViewModifier {
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

struct ModifierView_Previews: PreviewProvider {
    static var previews: some View {
        ModifierView()
    }
}
