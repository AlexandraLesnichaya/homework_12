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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageTextField.delegate = self
    }
    
    @IBAction func showImageButtonDidClick(_ button: UIButton) {
        let imageName = imageTextField.text!
        let image = UIImage(named: imageName)
        if image != nil {
            performSegue(withIdentifier: "ShowAnImage", sender: nil)
        } else {
            performSegue(withIdentifier: "ShowAMessage", sender: nil)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let imageName = imageTextField.text!
        let image = UIImage(named: imageName)
        
        switch segue.identifier {
        case "ShowAnImage":
            (segue.destination as! ImageViewController).imageToPresent = image!
        case "ShowAMessage":
            (segue.destination as! NoImageViewController).imageName = imageName
        default:
            break
        }
    }
    
    func showImageViewController(withImage image: UIImage) {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let imageVC = storyboard.instantiateViewController(identifier: ImageViewController.id) as! ImageViewController
        
        imageVC.imageToPresent = image
        
        navigationController?.pushViewController(imageVC, animated: true)
    }
    
    func showNoImageViewController(withImageName imageName: String) {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let noImageVC = storyboard.instantiateViewController(identifier: NoImageViewController.id) as! NoImageViewController
        
        noImageVC.imageName = imageName
        
        navigationController?.pushViewController(noImageVC, animated: true)
    }


    
}

extension TextFieldViewController: UITextFieldDelegate {
    func keyboardShouldBeHidden(_ textField: UITextField) -> Bool {
        imageTextField.resignFirstResponder()
        return true
    }
}
 
