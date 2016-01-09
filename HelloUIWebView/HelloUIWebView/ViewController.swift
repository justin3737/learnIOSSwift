//
//  ViewController.swift
//  HelloUIWebView
//
//  Created by Justin on 2016/1/8.
//  Copyright © 2016年 Justin. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIWebViewDelegate {

    @IBOutlet weak var myWebView: UIWebView!
    @IBOutlet weak var myActivityInicator: UIActivityIndicatorView!
    override func viewDidLoad() {
        super.viewDidLoad()
       
        let url = NSURL(string:"http://www.apple.com")
        let request = NSURLRequest(URL: url!)
        myWebView.loadRequest(request)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func webViewDidStartLoad(webView: UIWebView) {
        myActivityInicator.startAnimating()
    }
    
    func webViewDidFinishLoad(webView: UIWebView) {
        myActivityInicator.stopAnimating()
    }
}

