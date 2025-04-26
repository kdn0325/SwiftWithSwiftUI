//
//  Variable2.swift
//  SwiftWithSwiftUI
//
//  Created by Abel on 4/26/25.
//

import SwiftUI

struct Variable2: View {

    // Array , Dictionary , Set


    // Array : 같은 타입의 변수 / 인덱스로 접근
    let name = ["Leo", "Olivia", "Dooboo"]
    // Dictionary : 같은 타입 / 키로 접근
    let engKrDictionary = ["Apple":"사과", "Banana":"바나나", "Coconut":"코코넛"]
    // Set
    let houseAnimals: Set = ["Dog", "Cat", "Bird"]
    let farmAnimals: Set = ["Cow", "Pig", "Bird"]

    var body: some View {

        Text(name[0])
        Text(name[1])
        Text(name[2])
        // 키를 사용하여 꺼내야함
        Text(engKrDictionary["Apple"]!)
        Text(engKrDictionary["Banana"]!)
        Text(engKrDictionary["Coconut"]!)
        // 교집합 연산
        Text(houseAnimals.intersection(farmAnimals).description)
        // 합집합 연산
        Text(houseAnimals.union(farmAnimals).description)
    }
}

#Preview {
    Variable2()
}
