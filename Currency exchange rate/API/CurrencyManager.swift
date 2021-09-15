//
//  CurrencyManager.swift
//  CurrencyManager
//
//  Created by Beqa Tabunidze on 15.09.21.
//

import UIKit

class CurrencyManager {
    
    let url = "https://nbg.gov.ge/gw/api/ct/monetarypolicy/currencies/ka/json"
    
    private var networkManager: NetworkManager = NetworkManager()
    
    func getCurrency(completion: @escaping ([CurrencyModel]) -> Void) {
        networkManager.get(model: [currencyResponse].self, with: url) { result in
            switch result {
            case .success(let response):
                let newCurrencies = response.first!.currencies.map { CurrencyModel(with: $0) }
                completion(newCurrencies)
            case .failure(let error):
                print("Error is \(error)")
            }
        }
    }
}
