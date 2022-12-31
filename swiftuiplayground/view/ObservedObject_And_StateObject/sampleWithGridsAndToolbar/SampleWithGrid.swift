//
//  SampleWithGrid.swift
//  swiftuiplayground
//
//  Created by masaki on 2022/12/27.
//

import SwiftUI

struct SampleWithGrid: View {

    // this part was used in ModelColumns to be used with ObservedObject
    //let gridItem : [GridItem] = Array(repeating: .init(.flexible()), count: 3)
    
    @ObservedObject var grid = ModelColumns()
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: grid.gridItem, spacing: 30) {
                    ForEach(listData) {
                        item in
                        Text(item.emoji).font(.system(size: 60))
                    }
                }
            }.navigationTitle("Grids")
                .toolbar {
                    ToolbarItem {
                        Menu("Options") {
                            Section {
                                Button("1 column") {
                                    grid.columns(num: 1)
                                }
                                Button("2 columns") {
                                    grid.columns(num: 2)
                                }
                                Button("3 columns") {
                                    grid.columns(num: 3)
                                }
                                Button("4 columns") {
                                    grid.columns(num: 4)
                                }
                            }
                        }
                    }
                }
        }
    }
    
}

struct SampleWithGrid_Previews: PreviewProvider {
    static var previews: some View {
        SampleWithGrid()
    }
}
