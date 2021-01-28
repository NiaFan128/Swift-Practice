//
//  1694. Reformat Phone Number
//  
//
//  Created by Nia Fan on 2021/01/21.
//

import Foundation

func reformatNumber(_ number: String) -> String {
    
    let replacedNumber = number.replacingOccurrences(of: " ", with: "").replacingOccurrences(of: "-", with: "")

    var formattedNumber = ""
    
    for (i, character) in replacedNumber.enumerated() {
        if i % 3 == 0, i != 0 {
            formattedNumber.append("-")
            formattedNumber.append(character)
        } else {
            formattedNumber.append(character)
        }
    }
    
    // handle the 3-2-2
    if replacedNumber.count % 3 == 1 {
        let x = formattedNumber.removeLast()
        formattedNumber.removeLast()
        let y = formattedNumber.removeLast()
        formattedNumber.append("-")
        formattedNumber.append(y)
        formattedNumber.append(x)
    }
    
    return formattedNumber
}

reformatNumber("123 8473-342")
reformatNumber("123 4-567")
