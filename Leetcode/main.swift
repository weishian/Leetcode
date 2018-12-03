//
//  main.swift
//  Leetcode
//
//  Created by daniel.chang on 11/13/18.
//  Copyright © 2018 daniel.chang. All rights reserved.
//

import Foundation

print("Hello, World!")

// 929: Unique Email Addresses
print("929: Unique Email Addresses")
let emails = ["test.email+alex@leetcode.com","test.e.mail+bob.cathy@leetcode.com","testemail+david@lee.tcode.com"]
print(numUniqueEmails(emails))

// 771: Jewels and Stones
print("771: Jewels and Stones")
print(numJewelsInStones("aA", "aAAbbbb"))

// 709: To lower case
print("709: To lower case")
print("AAAAAA".lowercased())

//804: Unique Morse Code Words
print("804: Unique Morse Code Words")
print(uniqueMorseRepresentations(["gin", "zen", "gig", "msg"]))

//905: Sort Array By Parity
print("905: Sort Array By Parity")
print(sortArrayByParity([3,1,2,4]))

//657: Robot Return to Origin // Performance is not good. Why??
print("657: Robot Return to Origin")
print(judgeCircle("UD"))

//832: Flipping an Image
print("832: Flipping an Image")
print(flipAndInvertImage([[1,1,0],[1,0,1],[0,0,0]]))

//728: Self Dividing Numbers
print("728: Self Dividing Numbers")
print(selfDividingNumbers(1, 22))

//561: Array Partition I
print("561: Array Partition I")
print(arrayPairSum([1,4,3,2]))
