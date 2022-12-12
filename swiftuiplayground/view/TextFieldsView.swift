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
//        Form {
//            TextField ("Enter yout name", text: $name)
//            Text("Your name is \(name)")
//
//        }
        ZStack {
            Color.blue

            VStack() {
//                Image("100")
//                    .resizable()
//                    .frame(width: 100, height: 100)
//                    .clipShape(Circle())
                Image(systemName: "person.crop.circle").font(.system(size: 100))
                //VStack(alignment: .leading, spacing: 10) {
                let subtitulo : String = "aaaaa"
                Text("aaa bbbb sss")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                Text(subtitulo)
                    .foregroundColor(.white)
                    .font(.title.italic())
               // }
                
                
            }
        }
    }
}

struct TextFieldsView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldsView()
    }
}
