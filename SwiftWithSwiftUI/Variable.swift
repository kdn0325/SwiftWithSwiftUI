//
//  Variable.swift
//  SwiftWithSwiftUI
//
//  Created by Abel on 4/26/25.
//

import SwiftUI

struct Variable: View {
    // let :
    // var :
    let name: String = "dongnyeong"
    let age: Int = 20
    let height: Double = 190.5
    let hasJop: Bool = false

    var body: some View {
        VStack {
            Text("Hello \(name)")
            Text("\(age)")
            Text("\(height)")
            Text("\(hasJop.description)")
        }
    }
}

#Preview {
    Variable()
}
