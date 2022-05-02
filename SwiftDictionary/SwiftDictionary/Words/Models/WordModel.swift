//
//  WordModel.swift
//  SwiftDictionary
//
//  Created by Tempnixk on 2022/05/02.
//

import Foundation

struct WordModel: Codable, Identifiable {
    var id = UUID()
    var word: String
    var description: String
    var partOfSpeech: String
    var examples: [String]
    var wordElement: WordElement?
    var date = Date()
    var isFavorite = false
    
    static let wordExample = WordModel(word: "work", description: "be engaged in physical or mental activity in order to achieve a result", partOfSpeech: "verb", examples: ["you should work harder if you wanna get better job"], wordElement: Bundle.main.decode("Wordword.json"))
}

