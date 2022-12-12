//
//  Toolbar2ndView.swift
//  swiftuiplayground
//
//  Created by masaki on 2022/12/13.
//

import SwiftUI

struct Toolbar2ndView: View {
    var body: some View {
        ZStack {
            Color(.green).navigationTitle("title 1")
                .toolbar {
                    NavigationLink (destination: ToolBar3rdView()) {
                        Image(systemName: "pencil")
                    }
                }
            VStack {
                Text("2nd view")
            }
        }
    }
}

struct Toolbar2ndView_Previews: PreviewProvider {
    static var previews: some View {
        Toolbar2ndView()
    }
}
