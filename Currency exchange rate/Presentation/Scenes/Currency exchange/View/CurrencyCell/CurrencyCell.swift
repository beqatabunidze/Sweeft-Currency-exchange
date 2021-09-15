//
//  CurrencyCell.swift
//  CurrencyCell
//
//  Created by Beqa Tabunidze on 15.09.21.
//

import UIKit

class CurrencyCell: UITableViewCell {
    
    @IBOutlet weak var codeLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var rateLabel: UILabel!
    @IBOutlet weak var diffLabel: UILabel!
    
    
    var currencyModel: CurrencyModel?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(with currency: CurrencyModel ) {
        
        codeLabel.text = currency.code
        nameLabel.text = currency.name
        rateLabel.text = "\(String(describing: currency.convertToUnit))"
        diffLabel.text = "\(String(describing: currency.diff))"
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        guard let currency = currencyModel else { return }
        configure(with: currency)
    }

}
