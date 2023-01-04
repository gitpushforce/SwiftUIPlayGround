//
//  DeviceCheckView.swift
//  swiftuiplayground
//
//  Created by masaki on 2023/01/04.
//

import SwiftUI

struct DeviceCheckView: View {
    
    var device = UIDevice.current.userInterfaceIdiom
    var ipadSimulator = UIDevice.current.model.hasPrefix("iPad")
    
    // if Build Settings / Targeted device families has only "iPhone" selected, then when
    // we run the app in iPad, it will emulate the iphone screen.
    
    var body: some View {
        VStack {
            if device == .phone {
                if ipadSimulator {
                    Text("This is an iPad emmulating an iPhone")
                } else {
                    Text("This is an iPhone")
                }
            } else if device == .pad {
                Text("This is an iPad")
            }
        }
    }
}

struct DeviceCheckView_Previews: PreviewProvider {
    static var previews: some View {
        DeviceCheckView()
    }
}
