//
//  MyStruct.swift
//  SwiftWithSwiftUI
//
//  Created by Abel on 4/27/25.
//

import SwiftUI

//struct: 구조로 재사용 가능

struct UserInfo {
    let name: String
    let age: Int?
    let email: String?
    let job: String?
    let hasPet: Bool
    // function도 가능
    func sayMyName(with name: String) {
        print(name)
    }
}

struct MyStruct: View {
    let userInfo: UserInfo

    var body: some View {
        VStack {
            Text(userInfo.name)
            Text(userInfo.age?.description ?? "100")
            Text(userInfo.email?.description ?? "email@example.com")
            Text(userInfo.job?.description ?? "Job")
            Text(userInfo.hasPet.description)

            Button {
                userInfo.sayMyName(with: userInfo.name)
            } label: {
                Text("Say My Name Button")
            }
        }
    }
}

#Preview {
    let dongnyeong = UserInfo(name: "DongNyeong", age: 10, email: "dn10003@gmail.com", job: "Sofeware Engineer", hasPet: false)
    MyStruct(userInfo: dongnyeong)
}
