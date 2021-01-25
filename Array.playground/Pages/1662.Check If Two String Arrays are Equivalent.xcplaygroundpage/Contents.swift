import Foundation

func arrayStringsAreEqual(_ word1: [String], _ word2: [String]) -> Bool {
    return word1.flatMap { $0 } == word2.flatMap { $0 }
}

arrayStringsAreEqual(["a", "bc"], ["ab", "c"])
