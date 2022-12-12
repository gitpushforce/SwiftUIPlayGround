//
//  SizeClassesView.swift
//  swiftuiplayground
//
//  Created by masaki on 2022/12/10.
//

import SwiftUI

struct SizeClassesView: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    var body: some View {
        if horizontalSizeClass == .compact {
            //Color(.red)
            Text("Compact")
        } else {
            //Color(.blue)
            Text("Regular")
        }
    }
}

struct SizeClassesView_Previews: PreviewProvider {
    static var previews: some View {
        SizeClassesView()
    }
}
