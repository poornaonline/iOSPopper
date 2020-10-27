//
//  ViewController.swift
//  Popper
//
//  Created by Poorna Jayasinghe on 2020-10-27.
//

import UIKit
import PopupDialog

class ViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func clickMe(_ sender: Any) {
        let popper = storyboard!.instantiateViewController(identifier: "popperViewController") as! PopperViewController
        popper.data = "Poorna Jay Data"
        popper.modalPresentationStyle = .overCurrentContext
        popper.modalTransitionStyle = .crossDissolve
        
        self.present(popper, animated: true, completion: nil)
        
    }
    
    
    // PopupDialog
    
    @IBAction func clickMe2(_ sender: Any) {
        
        // Prepare the popup assets
        let title = "Title"
        let message = "Poorna Sampath Jayasinghe"
        let image = UIImage(named: "pexels-photo-103290")

        // Create the dialog
        let popup = PopupDialog(title: title, message: message, image: image)

        // Create buttons
        let buttonOne = CancelButton(title: "CANCEL") {
            print("You canceled the car dialog.")
        }

        // This button will not the dismiss the dialog
        let buttonTwo = DefaultButton(title: "ADMIRE CAR", dismissOnTap: false) {
            print("What a beauty!")
        }

        let buttonThree = DefaultButton(title: "BUY CAR", height: 60) {
            print("Great")
        }

        // Add buttons to dialog
        // Alternatively, you can use popup.addButton(buttonOne)
        // to add a single button
        popup.addButtons([buttonOne, buttonTwo, buttonThree])

        // Present dialog
        self.present(popup, animated: true, completion: nil)
    }
}

