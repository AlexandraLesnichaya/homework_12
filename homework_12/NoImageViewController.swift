//
//  ViewController.swift
//  homework_12
//
//  Created by Александра Лесничая on 2/25/20.
//  Copyright © 2020 Alexandra Lesnichaya. All rights reserved.
//

import UIKit

class NoImageViewController: UIViewController {

    @IBOutlet weak var noImageMessage: UILabel!

    var imageName = ""
    
    static var id: String {
        return "NoImageViewController"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        noImageMessage.text = "Can not find an image with name `\(imageName)`"
    }
    

}
