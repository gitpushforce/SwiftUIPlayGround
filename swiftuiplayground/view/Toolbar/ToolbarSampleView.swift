//
//  ToolbarSampleView.swift
//  swiftuiplayground
//
//  Created by masaki on 2022/12/13.
//

import SwiftUI

struct ToolbarSampleView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color(.green).navigationTitle("Navigation")
                    .toolbar {
//                        Button {
//                            print("abcdef")
//                        } label: {
//                            Text("save")
//                        }
                        HStack {
                            NavigationLink(destination: Toolbar2ndView()) {
                                Image(systemName: "plus")
                            }
                            NavigationLink(destination: ToolBar3rdView()) {
                                Image(systemName: "camera")
                            }
                        }
                    }
                Text("Hello world")
            }
        }
    }
}

struct ToolbarSampleView_Previews: PreviewProvider {
    static var previews: some View {
        ToolbarSampleView()
    }
}
