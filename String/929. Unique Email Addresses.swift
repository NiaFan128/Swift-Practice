//
//  929. Unique Email Addresses
//  
//
//  Created by Nia Fan on 2021/02/17.
//

import Foundation

func numUniqueEmails(_ emails: [String]) -> Int {
    
    var setOfEmails: Set<String> = []
    
    emails.forEach { (email) in
        
        let components = email.components(separatedBy: "@")
        let localName = components.first!
        let domain = components.last!
        
        var formattedLocalName = String(localName.split(separator: "+").first!)
        formattedLocalName = formattedLocalName.replacingOccurrences(of: ".", with: "")
        setOfEmails.insert(formattedLocalName + "@" + String(domain))
    }
    
    return setOfEmails.count
}

numUniqueEmails(["test.email+alex@leetcode.com",
                 "test.e.mail+bob.cathy@leetcode.com",
                 "testemail+david@lee.tcode.com"])
