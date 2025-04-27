//
//  Optional.swift
//  SwiftWithSwiftUI
//
//  Created by Abel on 4/27/25.
//

import SwiftUI

struct Optional: View {
    let name: String
    let age: Int?

    var body: some View {
        VStack {
            Text(name)
            // nil이 아닐때만 뷰에서 그려지도록
            if let age = age {
                Text(age.description)
            }
            // 옵셔널 타입으로 nil이면 "100"
//            Text(age?.description ?? "100")
        }

    }
}

#Preview {
    // 값이 없을 경우
    Optional(name: "DongNyeong", age: nil)
}
