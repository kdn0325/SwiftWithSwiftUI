//
//  Closure.swift
//  SwiftWithSwiftUI
//
//  Created by Abel on 4/27/25.
//

import SwiftUI

// 클로저는 익명함수이다.

struct Closure: View {

    let myFirstClosure: () -> Void = { print("Hi Closure") }

    func sayHello() -> Void {
        print("Hi Function")
    }

    func sayHello2() -> Void {
        print("Hi Function")
    }

    // Trailing Closure

    func trailingHello(action: () -> ()) -> Void {
        print("Hi Function")
    }

    var body: some View {
        Button{
            myFirstClosure()
        } label: {
            Text("Closure Hit!")
        }
        Button {
            sayHello()
        } label: {
            Text("Function Hit!")
        }

        Button {
            sayHello2()
        } label: {
            Text("Function2 Hit!")
        }

        Button{
            trailingHello {

            }
        } label: {
            Text("Closure Hit!")
        }

    }
}

#Preview {
    Closure()
}
