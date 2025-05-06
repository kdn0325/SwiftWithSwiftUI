//
//  Higher-order-function.swift
//  SwiftWithSwiftUI
//
//  Created by Abel on 5/6/25.
//

import SwiftUI

struct Higher_order_function: View {
    let friends = ["Abel", "John", "Mary", "David"]
    let ages = [20, 30, 25, 35]

    var body: some View {
        List {
            ForEach(ages.map({ item in
                String(item)
            }), id: \.self) { age in
                Text(age)
            }
        }
    }
}

#Preview {
    Higher_order_function()
}
