//
//  ModelColumns.swift
//  swiftuiplayground
//
//  Created by masaki on 2022/12/27.
//

import Combine
import SwiftUI

class ModelColumns: ObservableObject {
    @Published var gridItem = [GridItem()]
    
    func columns (num: Int) {
        gridItem = Array(repeating: .init(.flexible(maximum: 80)), count: num)
    }
}
