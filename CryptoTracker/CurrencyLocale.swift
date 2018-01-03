//
//  CurrencyLocale.swift
//  CryptoTracker
//
//  Created by Madan Gupta on 03/01/18.
//  Copyright © 2018 Maxwell Stein. All rights reserved.
//

import UIKit

class CurrencyLocale: NSObject {
    
    // initiating Locale to current or for US in the case of failure
    static let locale: Locale = {
        if NSLocale.current.currencyCode != nil {
            return NSLocale.current
        }
        return Locale(identifier: "en_US")
    }()
    
    // - Returns: The local currency code if available or USD in the case of failure
    static func code() -> String{
        var code = "USD"
        if let tmpCode = CurrencyLocale.locale.currencyCode {
            code = tmpCode
        }
        return code
    }
    
}
