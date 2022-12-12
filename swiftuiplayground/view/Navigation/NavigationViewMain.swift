//
//  NavigationView.swift
//  swiftuiplayground
//
//  Created by masaki on 2022/12/13.
//

import SwiftUI

struct NavigationViewMain: View {
    
    @State private var texto = ""
    
    var body: some View {
        NavigationView {
            ZStack {
                Color(.green).navigationTitle("1st Title")
                    .toolbar {
                        Button {
                            print("asdasd")
                        } label: {
                            Text("guardar")
                        }
                    }
                VStack {
                    NavigationLink(destination: NavigationViewNext(texto: texto)) {
                        Text("go to 2nd view")
                            .fontWeight(.bold)
                            .font(.title)
                            .foregroundColor(.purple)
                            .padding()
                            .border(Color.purple, width: 5)
                            .cornerRadius(5)
                    }
                    Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    TextField("texto", text: $texto)
                }
            }
        }
        
    }
}

struct NavigationViewMain_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewMain()
    }
}
