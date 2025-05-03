//
//  Closure2.swift
//  SwiftWithSwiftUI
//
//  Created by Abel on 5/3/25.
//

import SwiftUI

struct Closure2: View {
    @State var myName : String = "not yet"

    // 문자열 두개를 입력받아서 문자열을 하나로 반환해주는 클로저, 함수와 다르게 생겼지만 아래 함수와 아예 똑같다

    var myCustomClosure: (String, String) -> String = { prefix, name in // 첫번째 매개 변수 , 두번째 매개 변수
        return prefix + name
    }


    var body: some View {
        VStack {
            Text(myName)
            Button {
                myName = myCustomClosure("Kim", "Dongnyeong")
            } label: {
                Text("Hit me")
            }

        }
    }

    // 이건 클로저이자 함수
    func createName(prefix: String, name: String) -> String {
        return prefix + name
    }
}

#Preview {
    Closure2()
}
