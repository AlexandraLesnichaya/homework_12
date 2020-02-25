//
//  ViewController.swift
//  homework_12
//
//  Created by Александра Лесничая on 2/25/20.
//  Copyright © 2020 Alexandra Lesnichaya. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!

    var imageToPresent: UIImage?
    var imageViewContentMode: UIView.ContentMode = .scaleAspectFill
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imageView.contentMode = imageViewContentMode
        imageView.image = imageToPresent
    }
       

}
