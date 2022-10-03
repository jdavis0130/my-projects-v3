//
//  game.swift
//  apple pie v2
//
//  Created by Levi Davis on 9/23/22.
//

import Foundation

struct Game {
    var word: String
    var incorrectMovesRemaining: Int
    var guessedLetters: [Character]
    
    var formattedWord: String {
            var guessedWord = ""
        for letter in word {
                if guessedLetters.contains(letter) { guessedWord += "\(letter)"
            } else {
                guessedWord += "_"
            }
            
        }
        return guessedWord
    }
    
    mutating func playerGuessed(letter: Character) {
        guessedLetters.append(letter)
        if !word.contains(letter) {
          incorrectMovesRemaining -= 1
        }
    }
}
