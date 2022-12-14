//
//  GridList.swift
//  swiftuiplayground
//
//  Created by masaki on 2022/12/15.
//

import SwiftUI

struct GridList: View {
    
    // arranges the columns automatically based in the size
    //let gridItem = [GridItem(.adaptive(minimum: 100))]
    
    // the # of repeated GridItems inside the list is the # of columns
    //let gridItem = [GridItem(.flexible()), GridItem(.flexible())]
    
    // count is the # of columns
    let gridItem : [GridItem] = Array(repeating: .init(.flexible()), count: 3)
    
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: gridItem, spacing: 30) {
                    ForEach(listData) {
                        item in
                        Text(item.emoji).font(.system(size: 60))
                    }
                }
            }.navigationTitle("Grids")
        }
    }
}

struct GridList_Previews: PreviewProvider {
    static var previews: some View {
        GridList()
    }
}
