//
//  ContentView.swift
//  swiftuiplayground
//
//  Created by masaki on 2022/04/03.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            Form {
                        Section {
                            Text("Hello, eeedfs!")
                        }

                        Section {
                            Text("Hello, eeedfs!")
                            Text("Hello, eeedfs!")
                            Text("Hello, eeedfs!")
                            Text("Hello, eeedfs!")
                            Text("Hello, eeedfs!")
                        }

                    }
            .navigationTitle("SwiftUI")
            .navigationBarTitleDisplayMode(.inline)
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
.previewInterfaceOrientation(.portrait)
    }
}
