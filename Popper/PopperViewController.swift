//
//  PopperViewController.swift
//  Popper
//
//  Created by Poorna Jayasinghe on 2020-10-27.
//

import UIKit

class PopperViewController: UIViewController {
    
    var data: String!
    var performingFunc: (() -> Void)!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func awesomeClicked(_ sender: Any) {
        print("\(data)")
        self.performingFunc()
        dismiss(animated: true, completion: nil)
    }
    
}
