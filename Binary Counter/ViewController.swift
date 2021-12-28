//
//  ViewController.swift
//  Binary Counter
//
//  Created by smaher on 24/05/1443 AH.
//

import UIKit

class ViewController: UIViewController , UITableViewDataSource {

    var total = 0.0
    @IBOutlet weak var lblTotal: UILabel!
    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view.
//    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 16
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BinaryCell", for: indexPath) as! BinaryTableViewCell
        cell.delegate = self
        
        cell.lblvalue.text = String(describing: pow(10, indexPath.row))
        return cell
        
    }
}

extension ViewController: BinaryTableViewCellDelegate {
    func valueChangedBy(value: Int) {
        self.total += Double(value)
        lblTotal.text = "Total is : \(self.total)"
    }
    
}

