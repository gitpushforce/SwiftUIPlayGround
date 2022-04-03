//
//  TextFieldsView.swift
//  swiftuiplayground
//
//  Created by masaki on 2022/04/04.
//

import SwiftUI

struct TextFieldsView: View {
    @State private var name = ""
    var body: some View {
        Form {
            TextField ("Enter yout name", text: $name)
            Text("Your name is \(name)")
            
        }
    }
}

struct TextFieldsView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldsView()
    }
}
