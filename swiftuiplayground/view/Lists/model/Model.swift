//
//  Model.swift
//  swiftuiplayground
//
//  Created by masaki on 2022/12/14.
//

import Foundation

struct Model: Identifiable {
    
    let id = UUID()
    let emoji: String
    let name: String
    let description: String
}

let listData: [Model] = [

    Model(emoji: "🐨",
          name: "koala",
          description: "face of a koala"),
    Model(emoji: "😀",
          name: "smiling face",
          description: "a smaling face"),
    Model(emoji: "😡",
          name: "angry face",
          description: "an angry face"),
    Model(emoji: "👹",
          name: "oni",
          description: "face of an oni"),
]
