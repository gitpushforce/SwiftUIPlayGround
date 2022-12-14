//
//  TabViewMain.swift
//  swiftuiplayground
//
//  Created by masaki on 2022/12/13.
//

import SwiftUI

struct TabViewMain: View {
    var body: some View {
        TabView {
            TabView1stView().tabItem {
                Label("Home", systemImage: "house.fill")
            }
            TabView2ndView().tabItem {
                Label("View 2", systemImage: "plus")
            }
            TabView3rdView().tabItem {
                Label("Camera", systemImage: "camera")
            }
        }
    }
}

struct TabViewMain_Previews: PreviewProvider {
    static var previews: some View {
        TabViewMain()
    }
}
