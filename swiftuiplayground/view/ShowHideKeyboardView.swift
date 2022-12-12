//
//  ScreenUpWhenKeyboardAppears.swift
//  swiftuiplayground
//
//  Created by masaki on 2022/12/11.
//

import SwiftUI

struct ShowHideKeyboardView: View {
    
    @State private var username: String = ""
    @FocusState private var nameIsFocused: Bool
    
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            TextField(
                "User name (email address)",
                text: $username
            )
//            .focused($nameIsFocused)
//            .textInputAutocapitalization(.never)
//            .disableAutocorrection(true)
//            .border(.secondary)
           // Color(.green)
            Color.green.ignoresSafeArea()
        }.onTapGesture {
            self.hideKeyboard()
        }
    }
}

struct ShowHideKeyboardView_Previews: PreviewProvider {
    static var previews: some View {
        ShowHideKeyboardView()
    }
}

#if canImport(UIKit)
extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
#endif
