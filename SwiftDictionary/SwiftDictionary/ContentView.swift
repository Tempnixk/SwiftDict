//
//  ContentView.swift
//  SwiftDictionary
//
//  Created by Tempnixk on 2022/04/28.
//

import SwiftUI

struct Section: Identifiable {
  let id    : Int
  let name  : String
  let size  : String
}

var sectionList = [
    Section(id: 0, name: "Collection Types", size: "4 bytes"),
    Section(id: 1, name: "Conditional Statements", size: "1 byte"),
    Section(id: 2, name: "Data", size: "4 bytes"),

    Section(id: 3, name: "Enum", size: "4 bytes"),
    Section(id: 4, name: "Function", size: "8 bytes"),
    Section(id: 5, name: "Loops", size: "8 bytes"),
    Section(id: 6, name: "Methods", size: "8 bytes"),
    Section(id: 7, name: "Operations", size: "8 bytes"),
    Section(id: 8, name: "Optional", size: "8 bytes"),
    Section(id: 9, name: "Properties", size: "8 bytes"),
    Section(id: 10, name: "Structure / Classes", size: "8 bytes"),
    Section(id: 11, name: "Type", size: "8 bytes"),
    Section(id: 12, name: "Double", size: "8 bytes"),
  ]

struct ContentView: View {
    var body: some View {
        List(sectionList) { Section in
          HStack {
            Text(Section.name)
            Text(Section.size)
          }
        }
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
