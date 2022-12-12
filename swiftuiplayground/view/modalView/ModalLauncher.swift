//
//  ModalLauncher.swift
//  swiftuiplayground
//
//  Created by masaki on 2022/12/12.
//

import SwiftUI

struct ModalLauncher: View {
    
    @State private var show = false
    
    var body: some View {
        VStack {
            Button("Abrir modal") {
                show.toggle()
            }.sheet(isPresented: $show) {
                ModalView()
            }
        }
    }
}

struct ModalLauncher_Previews: PreviewProvider {
    static var previews: some View {
        ModalLauncher()
    }
}
