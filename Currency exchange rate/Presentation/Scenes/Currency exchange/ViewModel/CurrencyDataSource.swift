//
//  CurrencyDataSource.swift
//  CurrencyDataSource
//
//  Created by Beqa Tabunidze on 15.09.21.
//

import UIKit

class CurrencyDataSource: NSObject, UITableViewDataSource {
    
    private var tableView: UITableView!
    private var currencyModel: [CurrencyModel]? { didSet { tableView.reloadData() }}
    
    init(table tableView: UITableView) {
        super.init()
        self.tableView = tableView
        tableView.dataSource = self
        getData()
    }
    
    private func getData() {
        CurrencyManager().getCurrency { [weak self] data in
            guard let self = self else { return }
            DispatchQueue.main.async {
                self.currencyModel = data
            }
        }
    }
    
    @objc func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return currencyModel?.count ?? 0
    }
    
    @objc(tableView:cellForRowAtIndexPath:) func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.deque(class: CurrencyCell.self, for: indexPath)
        cell.currencyModel = currencyModel![indexPath.row]
        return cell
    }
}
