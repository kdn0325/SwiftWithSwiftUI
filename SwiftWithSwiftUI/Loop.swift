//
//  Loop.swift
//  SwiftWithSwiftUI
//
//  Created by Abel on 4/26/25.
//

import SwiftUI

struct Loop: View {
    let animals = ["🐶", "🐱", "🐭", "🐹", "🐷", "🐯", "🦁", "🐮"]

    var body: some View {
        // ForEach
        // _data : 가져올 배열
        // id: index ,
        // RandomAccessCollection.Element: 꺼내올 item 이름
        // code: 어떻게 반환할건지
        ForEach(animals, id: \.self) { animal in
            Text(animal)
        }
        ForEach(0 ..< 5) { number in
            Text(number.description)
        }
        // Condition : 조건으로 item 추출
        ForEach(0 ..< 5) { animal in
            Text(animals[animal])
        }
    }
}

#Preview {
    Loop()
}
