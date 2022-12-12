//
//  NavigationViewNext.swift
//  swiftuiplayground
//
//  Created by masaki on 2022/12/13.
//

import SwiftUI

struct NavigationViewNext: View {
    
    var texto: String
    
    var body: some View {
        
        ZStack {
            Color(.purple).navigationTitle("2nd View")
                .toolbar {
                    NavigationLink(destination: NavigationViewThird()) {
                        Text("3ra vista").bold().foregroundColor(.white)
                    }
                }
            VStack {
                Text("Second View").bold()
                Text(texto).bold()
                NavigationLink(destination: NavigationViewThird()) {
                    Text("3rd view").bold().foregroundColor(.white)
                }
            }
        }
    }
}

struct NavigationViewNext_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewNext(texto: "rrrr default")
    }
}
