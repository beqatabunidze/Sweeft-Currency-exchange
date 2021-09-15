//
//  CurrencyModel.swift
//  CurrencyModel
//
//  Created by Beqa Tabunidze on 15.09.21.
//

import UIKit

struct CurrencyModel {
    private var currency: Currencies!

    var code: String {
        currency.code ?? "unknown"
    }
    
    var convertToUnit: Double {
        return round((Double(currency.rate!) / Double(currency.quantity!)) * 1000) / 1000
    }
    
    var name: String {
        currency.name ?? "No name"
    }
    
    var diff: Double {
        currency.diff ?? 0
    }
    
    init(with currency: Currencies) {
        self.currency = currency
    }
}
