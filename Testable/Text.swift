//
//  Text.swift
//  Testable
//
//  Created by Ilia on 08/05/2019.
//  Copyright © 2019 Ilia Stukalov. All rights reserved.
//

import UIKit

class Text: NSObject {
    
    var value = ""
    
    func set(_ newText: String) {
        value = newText
    }
    
    func add(_ newText: String) {
        value += newText
    }
    
    func find(_ textToBeFound: String) -> Bool {
        return value.contains(textToBeFound)
    }
    
    func reversed() -> String {
        return String(value.reversed())
    }
    
    func charactersNumber() -> Int {
        return value.count
    }
    
    func words() -> [String] {
        return value.split(separator: " ").map {
            return String($0)
        }
    }

}
