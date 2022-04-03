//
//  TapCountView.swift
//  swiftuiplayground
//
//  Created by masaki on 2022/04/03.
//

import SwiftUI

struct TapCountView: View {
    @State private var tapCount = 0
    var body: some View {
        Button("Tap Count: \(tapCount)") {
            tapCount += 1
        }
    }
}

struct TapCountView_Previews: PreviewProvider {
    static var previews: some View {
        TapCountView()
    }
}
