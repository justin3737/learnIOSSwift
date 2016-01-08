//
//  ViewController.swift
//  HelloUIActivityIndicator
//
//  Created by Justin on 2016/1/8.
//  Copyright © 2016年 Justin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myActivity: UIActivityIndicatorView!
    
    @IBAction func startButtonPressed(sender: UIButton) {
        myActivity.startAnimating()
    }
    
    @IBAction func stopButtonPressed(sender: UIButton) {
        myActivity.stopAnimating()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

