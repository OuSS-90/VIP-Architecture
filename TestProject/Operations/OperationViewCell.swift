//
//  OperationViewCell.swift
//  TestProject
//
//  Created by OuSS on 3/15/19.
//  Copyright © 2019 Nabil EL KHADDARI. All rights reserved.
//

import UIKit

class OperationViewCell: UITableViewCell {
    
    @IBOutlet weak var libelle: UILabel!
    @IBOutlet weak var amount: UILabel!
    @IBOutlet weak var date: UILabel!
    
    var operation: Operations.Operation? {
        didSet {
            guard let operation = operation else { return }
            libelle.text = operation.libelle
            amount.text = String(format:"%.2f", operation.amount)
            date.text = operation.operationDate
        }
    }
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
