//
//  BinaryTableViewCell.swift
//  Binary Counter
//
//  Created by smaher on 25/05/1443 AH.
//

import UIKit

protocol BinaryTableViewCellDelegate : class {
    func valueChangedBy(value : Int)
}
class BinaryTableViewCell: UITableViewCell {

   
    @IBOutlet weak var lblvalue: UILabel!
    weak var delegate : BinaryTableViewCellDelegate?
    
    @IBAction func valueButtonPressed(_ sender: UIButton) {
        
        var value = Int(lblvalue!.text!)
        if sender.titleLabel!.text == "-"{
            value = -value!
        }
        delegate?.valueChangedBy(value: value!)
    }
    
}
