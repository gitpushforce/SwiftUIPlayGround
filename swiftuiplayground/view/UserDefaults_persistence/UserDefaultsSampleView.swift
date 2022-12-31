//
//  UserDefaultsSampleView.swift
//  swiftuiplayground
//
//  Created by masaki on 2022/12/27.
//

import SwiftUI

struct UserDefaultsSampleView: View {

    @State var num: Int
    var body: some View {
        VStack {
            Spacer()
            Text(String(num))
            
            Spacer()
            
            Button("plus 1") {
                num += 1
                UserDefaults.standard.set(num, forKey: "number")
            }
            
            Spacer()
            
            Button("remove UserDefaults") {
                UserDefaults.standard.removeObject(forKey: "number")
            }

            Spacer()
        }
        
    }
    // the very first function in the lifecycle
    init() {
        if let numUserDefault = UserDefaults.standard.object(forKey: "number") as? Int {
            num = numUserDefault
        } else {
            num = 1
        }
    }
}



struct UserDefaultsSampleView_Previews: PreviewProvider {
    static var previews: some View {
        UserDefaultsSampleView()
    }
}
