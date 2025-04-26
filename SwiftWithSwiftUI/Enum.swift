//
//  Enum.swift
//  SwiftWithSwiftUI
//
//  Created by Abel on 4/26/25.
//

import SwiftUI

struct Enum: View {
    // @State: 상태
    @State var menu: Menu = .fish

    enum Menu {
        case beef, pork, chicken, fish

    }
    var body: some View {

        //        if menu == .beef {
        //            Text("오늘 메뉴는 소고기")
        //        } else if menu == .pork {
        //            Text("오늘 메뉴는 돼지고기")
        //        } else if menu == .chicken {
        //            Text("오늘 메뉴는 닭고기")
        //        } else {
        //            Text("오늘 뭐 먹지?")
        //        }
        // Switch Case
        switch menu {
        case .beef, .fish :
            Text("오늘 메뉴는 소고기 아니면 물고기")
        case .pork:
            Text("오늘 메뉴는 돼지고기")
        case .chicken:
            Text("오늘 메뉴는 닭고기")
        }

    }
}

#Preview {
    Enum()
}
