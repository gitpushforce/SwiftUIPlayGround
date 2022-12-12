//
//  ModalVIew.swift
//  swiftuiplayground
//
//  Created by masaki on 2022/12/12.
//

import SwiftUI

struct ModalView: View {
    
    @Environment(\.presentationMode) var esconder
    
    var body: some View {
        ZStack {
            Color.orange.edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("Ventana modal")
                    .font(.title)
                    .foregroundColor(.white)
                    .bold()
                Button("Cerrar") {
                    esconder.wrappedValue.dismiss()
                }
            }
            
        }
        
    }
}

struct ModalView_Previews: PreviewProvider {
    static var previews: some View {
        ModalView()
    }
}
