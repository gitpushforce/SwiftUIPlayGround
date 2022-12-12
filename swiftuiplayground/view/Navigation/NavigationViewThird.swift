//
//  NavigationViewThird.swift
//  swiftuiplayground
//
//  Created by masaki on 2022/12/13.
//

import SwiftUI

struct NavigationViewThird: View {
    var body: some View {
        ZStack {
            Color(.orange).navigationTitle("3rd view")
            Text("Third View").bold()
        }
        
    }
}

struct NavigationViewThird_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewThird()
    }
}
