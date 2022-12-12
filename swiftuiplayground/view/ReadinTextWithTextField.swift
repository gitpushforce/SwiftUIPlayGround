//
//  ReadinTextWithTextField.swift
//  swiftuiplayground
//
//  Created by masaki on 2022/04/04.
//

import SwiftUI

struct ReadinTextWithTextField: View {
    @State private var checkAmount = 0.0
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 20
    let tipPercentages = [10, 15, 20, 25, 0]
    
    var body: some View {
        Form {
            Section {
                TextField ("Amount", value: $checkAmount, format: .currency(code: Locale.current.currencyCode ?? "JPY"))
                    .keyboardType(.decimalPad)
            }
            
            Section {
                Text(checkAmount, format: .currency(code: Locale.current.currencyCode ?? "USD"))
            }
        }
    }
}

struct ReadinTextWithTextField_Previews: PreviewProvider {
    static var previews: some View {
        ReadinTextWithTextField()
    }
}
