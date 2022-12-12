//
//  ToolBar3rdView.swift
//  swiftuiplayground
//
//  Created by masaki on 2022/12/13.
//

import SwiftUI

struct ToolBar3rdView: View {
    var body: some View {
        ZStack {
            Color(.brown).navigationTitle("title 2")
            Text("3rd view")
        }
        
    }
}

struct ToolBar3rdView_Previews: PreviewProvider {
    static var previews: some View {
        ToolBar3rdView()
    }
}
