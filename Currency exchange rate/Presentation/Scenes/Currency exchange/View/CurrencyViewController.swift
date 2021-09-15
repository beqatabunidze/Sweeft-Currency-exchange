//
//  CurrencyViewController.swift
//  CurrencyViewController
//
//  Created by Beqa Tabunidze on 15.09.21.
//

import UIKit

class CurrencyViewController: BaseViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    private var dataSource: CurrencyDataSource?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()

    }
    
    private func configureTableView() {
        tableView.separatorStyle = .none
        tableView.registerNib(class: CurrencyCell.self)
        dataSource = CurrencyDataSource(table: tableView)
    }
}
