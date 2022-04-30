//
//  ContentView.swift
//  SwiftDictionary
//
//  Created by Tempnixk on 2022/04/28.
//

import SwiftUI


struct Section: Identifiable {
    let id    : Int
    let word  : String
}

var sectionList = [
    Section(id: 0, word: "Collection Types"),
    Section(id: 1, word: "Conditional Statements"),
    Section(id: 2, word: "Data"),
    Section(id: 3, word: "Enum")	,
    Section(id: 4, word: "Function"),
    Section(id: 5, word: "Loops"),
    Section(id: 6, word: "Methods"),
    Section(id: 7, word: "Operations"),
    Section(id: 8, word: "Optional"),
    Section(id: 9, word: "Properties"),
    Section(id: 10, word: "Structure / Classes"),
    Section(id: 11, word: "Types"),
]


struct ContentView: View {
    var body: some View {
        List(sectionList) { Section in
            Text(Section.word)
        }
        
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
