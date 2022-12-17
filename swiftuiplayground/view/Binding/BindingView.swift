//
//  BindingView.swift
//  swiftuiplayground
//
//  Created by masaki on 2022/12/17.
//

import SwiftUI

// binding variables will change the value of a text at the same time
// that the TextField value changes
struct BindingView: View {
    
    @State private var x = "abc"
    
    var body: some View {
        ZStack {
            Color(.green)
            VStack {
                Text(x).font(.largeTitle)
                TextField("Title", text: $x)
                    .keyboardType(.numberPad)
                    .frame(width: 70)
                    .background(Color.red)
                    .padding()
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.purple, lineWidth: 5)
                    )
            }
        }
    }
}

struct BindingView_Previews: PreviewProvider {
    static var previews: some View {
        BindingView()
    }
}
