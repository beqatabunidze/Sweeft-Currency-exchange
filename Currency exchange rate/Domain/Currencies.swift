//
//  Currencies.swift
//  Currencies
//
//  Created by Beqa Tabunidze on 15.09.21.
//

import Foundation

struct Currencies: Codable {
    let code: String?
    let quantity: Int?
    let rate: Double?
    let name: String?
    let diff: Double?
}

