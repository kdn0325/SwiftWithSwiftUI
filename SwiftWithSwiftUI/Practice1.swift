//
//  Practice1.swift
//  SwiftWithSwiftUI
//
//  Created by Abel on 4/26/25.
//

import SwiftUI

struct Practice1: View {
    @State var menu: String? = "오늘 뭐 먹지?"
    let menus: [Food] = [.bulgogi, .sushi, .jjigae, .ramen, .bingsoo]

    enum Food: String {
        case bulgogi = "불고기"
        case sushi = "스시"
        case jjigae = "찌개"
        case ramen = "라면"
        case bingsoo = "빙수"
    }

    var body: some View {
        VStack {
            if (menu == "불고기" || menu == "스시") {
				Text("너무 맛있는 \(menu!)")
            } else {
                Text(menu!)
            }

            Button {
                menu = menus.randomElement()?.rawValue
            } label: {
                Text("누르면 오늘의 메뉴 추천함!")
            }

        }
    }
}

#Preview {
    Practice1()
}
