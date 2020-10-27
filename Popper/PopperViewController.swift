//
//  PopperViewController.swift
//  Popper
//
//  Created by Poorna Jayasinghe on 2020-10-27.
//

import UIKit

class PopperViewController: UIViewController {
    
    var data: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func awesomeClicked(_ sender: Any) {
        print("\(data)")
        dismiss(animated: true, completion: nil)
    }
    
}
