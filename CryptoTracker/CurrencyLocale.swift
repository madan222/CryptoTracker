//
//  CurrencyLocale.swift
//  CryptoTracker
//
//  Created by Madan Gupta on 03/01/18.
//  Copyright © 2018 Maxwell Stein. All rights reserved.
//

import UIKit

class CurrencyLocale: NSObject {
    
    static let locale: Locale = {
        if NSLocale.current.currencyCode != nil {
            return NSLocale.current
        }
        return Locale(identifier: "en_US")
    }()
    
    static func code() -> String{
        var code = "USD"
        if let tmpCode = CurrencyLocale.locale.currencyCode {
            code = tmpCode
        }
        return code
    }
    
}
