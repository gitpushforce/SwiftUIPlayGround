//
//  SwiftUIView.swift
//  swiftuiplayground
//
//  Created by masaki on 2022/12/17.
//

import SwiftUI

struct StateSwiftUIView: View {
    
    @State private var show = true
    @State private var num = 0
    
    var body: some View {
        
        VStack {
            HStack {
                Button(action: {
                    show.toggle()
                    if show  {
                        num -= 1
                    } else {
                        num += 1
                    }
                }){
                    if show {
                        Image(systemName: "heart").foregroundColor(.red).font(.largeTitle)
                    } else {
                        Image(systemName: "heart.fill").foregroundColor(.red).font(.largeTitle)
                    }
                    Text(String(num)).bold()
                }
            }
        }
    }
}

struct StateSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        StateSwiftUIView()
    }
}
