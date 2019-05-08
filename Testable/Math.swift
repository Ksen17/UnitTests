//
//  Math.swift
//  Testable
//
//  Created by Ilia on 08/05/2019.
//  Copyright © 2019 Ilia Stukalov. All rights reserved.
//

import UIKit

class Math: NSObject {
    func degree(baseNumber: Int, degree: Int) -> Int {
        if degree == 0 {
            return 1
        }
        var final = baseNumber
        if degree == 1 {
            return final
        }
        for _ in 2...degree {
            final = final * baseNumber
        }
        return final
    }
}
