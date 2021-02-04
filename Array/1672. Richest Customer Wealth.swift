//
//  1672. Richest Customer Wealth
//  
//
//  Created by Nia Fan on 2021/02/04.
//

import Foundation

func maximumWealth(_ accounts: [[Int]]) -> Int {

    let sum = accounts.map { (account) -> Int in
                            
        var result = 0

        account.forEach { result += $0 }

        return result
    }
    
    return sum.max()!
}


maximumWealth([[1,2,3],[3,2,1]])
maximumWealth([[1,5],[7,3],[3,5]])
maximumWealth([[2,8,7],[7,1,3],[1,9,5]])
