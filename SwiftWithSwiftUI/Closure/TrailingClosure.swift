//
//  TrailingClosure.swift
//  SwiftWithSwiftUI
//
//  Created by Abel on 5/3/25.
//

import SwiftUI

struct TrailingClosure: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .onAppear {
                testTralingClosure(first: 3, second: 4) {
                    print("\($0) and \($1)")
                }
            }
    }

    func testTralingClosure(first: Int, second: Int, action: (Int,Int)->()) {
        action(first,second)
    }
}

#Preview {
    TrailingClosure()
}
