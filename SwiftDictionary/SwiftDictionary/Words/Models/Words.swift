//
//  Words.swift
//  SwiftDictionary
//
//  Created by Tempnixk on 2022/05/02.
//

import Foundation

// MARK: - WordElement
struct WordElement: Codable {
    let word: String
    let phonetic: String?
    let phonetics: [Phonetic]
    let origin: String?
    let meanings: [Meaning]
}

// MARK: - Meaning
struct Meaning: Codable, Hashable {
    let partOfSpeech: String
    let definitions: [Definition]
}

// MARK: - Definition
struct Definition: Codable, Hashable {
    let definition: String
    let example: String?
    let synonyms, antonyms: [String]
}

// MARK: - Phonetic
struct Phonetic: Codable {
    let text, audio: String?
}

typealias Words = [WordElement]
