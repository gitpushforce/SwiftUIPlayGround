//
//  ListSampleView.swift
//  swiftuiplayground
//
//  Created by masaki on 2022/04/04.
//

import SwiftUI

struct PickerWithList: View {
    var students = ["Harry", "Ron", "Hermione"]
    @State var selectedItem = "Harry"
    
    var body: some View {
        NavigationView {
            Form {
                Picker("Select student", selection: $selectedItem) {
                    ForEach(students, id: \.self) {
                        Text($0)
                    }
                }
            }
        }
    }
}

struct ListSampleView_Previews: PreviewProvider {
    static var previews: some View {
        PickerWithList()
    }
}
