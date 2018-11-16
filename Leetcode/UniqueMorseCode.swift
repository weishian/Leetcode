//
//  UniqueMorseCode.swift
//  Leetcode
//
//  Created by daniel.chang on 11/16/18.
//  Copyright © 2018 daniel.chang. All rights reserved.
//

import Foundation

func uniqueMorseRepresentations(_ words: [String]) -> Int {
    guard words.count <= 100 else {
        print("The length of words will be at most 100")
        return 0
    }
    
    var resulsts = [String]()
    let lowercasedWords = words.map { (wrd: String) -> String in
        return wrd.lowercased()
    }
    let morse = ["a":".-","b":"-...","c":"-.-.","d":"-..","e":".","f":"..-.","g":"--.","h":"....","i":"..","j":".---","k":"-.-","l":".-..","m":"--","n":"-.","o":"---","p":".--.","q":"--.-","r":".-.","s":"...","t":"-","u":"..-","v":"...-","w":".--","x":"-..-","y":"-.--","z":"--.."]
    
    for word in lowercasedWords {
        if word.count >= 1 && word.count <= 12 {
            var morseCode: String = ""
            for i in word.indices {
                let char = word[word.index(word.startIndex, offsetBy: i.encodedOffset)]
                if let getMorseCode = morse[String(char)] {
                    morseCode.append(getMorseCode)
                }
                else {
                    print(String(format: "%@ doesn't get morse code", char as! CVarArg))
                }
            }
            if !resulsts.contains(morseCode) {
                resulsts.append(morseCode)
            }
        }
        else {
            print("Each word will have length in range [1, 12]")
        }
    }
    return resulsts.count
}
