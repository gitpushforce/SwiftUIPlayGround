//
//  ListMainView.swift
//  swiftuiplayground
//
//  Created by masaki on 2022/12/14.
//

import SwiftUI

struct ListMainView: View {
    var body: some View {
        NavigationView {
            List(listData) {
                item in
                NavigationLink (destination: DetailsView (items: item)) {
                    HStack {
                        emoji(emoji: item)
                        Text(item.name).font(.subheadline)
                    }
                }
            }.navigationTitle("data list")
        }
    }
        
}

struct emoji: View {
    let emoji:  Model
    var body: some View {
        ZStack {
            Text (emoji.emoji)
                .shadow(radius: 3)
                .font(.largeTitle)
                .frame(width: 65, height: 65)
                .overlay(Circle().stroke(Color.purple, lineWidth: 3))
        }
    }
}

struct ListMainView_Previews: PreviewProvider {
    static var previews: some View {
        ListMainView()
    }
}
