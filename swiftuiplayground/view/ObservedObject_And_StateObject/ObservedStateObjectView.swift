//
//  ObservedObjectView.swift
//  swiftuiplayground
//
//  Created by masaki on 2022/12/26.
//

import SwiftUI

// Characteristic of ObservedObject
// When it the 2nd counter is used as view inside other view then the counter will be restarted when
// the the main view has any modification
// If we don't want it to get restarted then we should use StateObject instead of ObservedObject
struct ObservedStateObjectView: View {
    
    @ObservedObject var counterInstance = Model1()
    var body: some View {
        VStack {
            Spacer()
            Text("Counter = \(counterInstance.counter)")
            Button("Counter + 1") {
                counterInstance.counter += 1
            }
            Spacer()
            view2()
            Spacer()
            view3()
            Spacer()
        }
    }
}

struct view2: View {
    
    @ObservedObject var counterInstance = Model1()
    var body: some View {
        VStack {
            Text("Counter view 2 (ObservedObject) = \(counterInstance.counter)")
            Button("Counter + 1") {
                counterInstance.counter += 1
            }
        }
    }
}

struct view3: View {
    
    @StateObject var counterInstance = Model1()
    var body: some View {
        VStack {
            Text("Counter view 3 (StateObject) = \(counterInstance.counter)")
            Button("Counter + 1") {
                counterInstance.counter += 1
            }
        }
    }
}

struct ObservedStateObjectView_Previews: PreviewProvider {
    static var previews: some View {
        ObservedStateObjectView()
    }
}
