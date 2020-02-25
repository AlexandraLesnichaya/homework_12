//
//  ViewController.swift
//  homework_12
//
//  Created by Александра Лесничая on 2/20/20.
//  Copyright © 2020 Alexandra Lesnichaya. All rights reserved.
//

import UIKit

class RectanglesViewController: UIViewController {
  
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var blueView1: UIView!
    @IBOutlet weak var blueView2: UIView!
    @IBOutlet weak var greenView1: UIView!
    @IBOutlet weak var greenView2: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

var indexOfClick = 0


    @IBAction func buttonOneDidClick(_ sender: Any) {
        indexOfClick += 1
        if indexOfClick % 2 != 0 {
            self.redView.layer.cornerRadius = 20.0
            self.blueView1.layer.cornerRadius = 20.0
            self.blueView2.layer.cornerRadius = 20.0
            self.greenView1.layer.cornerRadius = 20.0
            self.greenView2.layer.cornerRadius = 20.0
        } else if indexOfClick % 2 == 0 {
            self.redView.layer.cornerRadius = 0.0
            self.blueView1.layer.cornerRadius = 0.0
            self.blueView2.layer.cornerRadius = 0.0
            self.greenView1.layer.cornerRadius = 0.0
            self.greenView2.layer.cornerRadius = 0.0
        }
    }

    
    @IBAction func buttonTwoDidClick(_ sender: Any) {
        indexOfClick += 1
        if indexOfClick % 2 != 0 {
            self.redView.backgroundColor = .black
            self.blueView1.backgroundColor = .black
            self.blueView2.backgroundColor = .black
            self.greenView1.backgroundColor = .black
            self.greenView2.backgroundColor = .black
        } else if indexOfClick % 2 == 0 {
            self.redView.backgroundColor = .red
            self.blueView1.backgroundColor = .blue
            self.blueView2.backgroundColor = .blue
            self.greenView1.backgroundColor = .green
            self.greenView2.backgroundColor = .green
        }
    }
   
    
}

