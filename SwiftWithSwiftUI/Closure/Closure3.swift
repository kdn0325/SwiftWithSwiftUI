//
//  Closure3.swift
//  SwiftWithSwiftUI
//
//  Created by Abel on 5/3/25.
//

import SwiftUI

struct Closure3: View {
    @State var result: String = "not yet"

    var body: some View {
        VStack {
            Button {
                result = calculateNumber(13,4, calculate: {first, second in
					return first + second
                })
            } label: {
                Text("Calculate")
            }
            Text(result)
        }

    }

    func calculateNumber(_ first: Int, _ sencond: Int, calculate: (Int, Int) -> Int) -> String {
		return String(calculate(first,sencond))
    }
    func sumTwoNumber(_ first: Int, _ sencond: Int) -> String {
        return String(first + sencond)
    }
    func minusTwoNumber(_ first: Int, _ sencond: Int) -> String {
        return String(first - sencond)
    }
    func multipleTwoNumber(_ first: Int, _ sencond: Int) -> String {
        return String(first * sencond)
    }
}

#Preview {
    Closure3()
}
