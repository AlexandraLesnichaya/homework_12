//
//  ViewController.swift
//  homework_12
//
//  Created by Александра Лесничая on 2/25/20.
//  Copyright © 2020 Alexandra Lesnichaya. All rights reserved.
//

import UIKit

class TextFieldViewController: UIViewController {
    
    @IBOutlet weak var imageTextField: UITextField!
    @IBOutlet weak var showImageButton: UIButton!
    
    let segue1ID = "ShowAnImage"
    let segue2ID = "ShowAMessage"

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func showImageButtonDidClick(_ button: UIButton) {
        self.performSegue(withIdentifier: segue1ID, sender: button)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == segue1ID {
//            if let name == imageTextField.text! {
//                let image = UIImage(named: name)
//
//                let imageViewController = segue.destination as! ImageViewController
//
//                imageViewController.imageToPresent = image
                
                imageViewController.imageViewContentMode = UIView.ContentMode.scaleAspectFill
            }
        }
    }
  
   

}
