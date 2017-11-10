//
//  File.swift
//  ApplePie
//
//  Created by Rosalie Snijders on 08-11-17.
//  Copyright © 2017 Rosalie Snijders. All rights reserved.
//

import Foundation

struct Game {
    var word: String
    var incorrectMovesRemaining: Int
    var guessedLetters: [Character]
    
    var formattedWord: String {
        var guessedWord = ""
        for letter in word.characters {
            if guessedLetters.contains(letter) {
                guessedWord += "\(letter)"
            } else {
            guessedWord += "_"
            }
        }
        return guessedWord
}
    
    mutating func playerGuessed(letter: Character) {
    guessedLetters.append(letter)
    if !word.characters.contains(letter) {
    incorrectMovesRemaining -= 1
        }
    }
}
