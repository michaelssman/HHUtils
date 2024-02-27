//
//  ViewController.swift
//  HHUtils
//
//  Created by michaelstrongself@outlook.com on 02/18/2024.
//  Copyright (c) 2024 michaelstrongself@outlook.com. All rights reserved.
//

import UIKit
import HHUtils

class ViewController: UIViewController {
    lazy var webView: HHWebView = {
        let webView = HHWebView(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: 800))
        return webView
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.addSubview(webView)
        
        // MARK: 网络请求
        let mvm = HHMomentsDetailsVM()
        mvm.request1()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

