//
//  Function.swift
//  SwiftWithSwiftUI
//
//  Created by Abel on 4/26/25.
//

import SwiftUI

struct Function: View {
    @State var myMind: String = "notting"
    @State var isChanged: Bool = false

    var body: some View {
        Text(myMind)

        Button {
            isChanged.toggle()
            myMind = getMyMind(with: isChanged)

        } label: {
            Text("Change my mind")
        }
    }
    // 1. 가독성 향상
    // 2. 재사용 향상
    func getMyMind(with isChanged: Bool) -> String {
        if isChanged {
            return "always Open"
        } else {
            return "but close"
        }
    }
}

#Preview {
    Function()
}
