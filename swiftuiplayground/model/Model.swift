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
    Model(emoji: "👺",
          name: "tengu",
          description: "tengu mask"),
    Model(emoji: "🤮",
          name: "a puke face",
          description: "face of an oni"),
    Model(emoji: "🤡",
          name: "a clown face",
          description: "face of an oni"),
    Model(emoji: "😺",
          name: "a smiling cat face",
          description: "face of an oni"),
    Model(emoji: "👁",
          name: "an eye",
          description: "face of an oni"),
    Model(emoji: "🦶",
          name: "a yellow foot",
          description: "face of an oni"),
    Model(emoji: "👊",
          name: "a yellow fist",
          description: "face of an oni"),
    Model(emoji: "👽",
          name: "an alien face",
          description: "face of an oni"),
]
