//
//  DetailsView.swift
//  swiftuiplayground
//
//  Created by masaki on 2022/12/15.
//

import SwiftUI

struct DetailsView: View {
    
    let items: Model
    
    var body: some View {
        VStack(alignment: .leading, spacing: 3, content: {
            HStack {
                emoji(emoji: items)
                Text(items.name).font(.largeTitle)
                Spacer()
            }
            Text(items.description).padding(.top)
            Spacer()
        }).padding(.all)
            .navigationTitle("Emojis")
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(items: Model(emoji: "😐", name: "pokerface", description: "a poker face"))
    }
}
