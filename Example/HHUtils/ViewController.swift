//
//  ViewController.swift
//  HHUtils
//
//  Created by michaelstrongself@outlook.com on 02/18/2024.
//  Copyright (c) 2024 michaelstrongself@outlook.com. All rights reserved.
//

import UIKit
import HHUtils

class ViewController: UIViewController, UITableViewDelegate {
    lazy var webView: HHWebView = {
        let webView = HHWebView(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: 800))
        return webView
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        view.addSubview(webView)
        
        let searchTFHeight: CGFloat = 36
        let searchTF: HHSearchTextField = HHSearchTextField(frame: CGRect(x: 16, y: UIDevice.vg_navigationFullHeight() - searchTFHeight - 8, width: SCREEN_WIDTH - 16 - 55, height: searchTFHeight))
        searchTF.cornerBackgroundColor = UIColor(hex: 0xF7F8FA)
        searchTF.cornerRadius = 18
        view.addSubview(searchTF)
        let cancelButton: UIButton = UIButton(type: .custom)
        cancelButton.setTitle("取消", for: .normal)
        cancelButton.setTitleColor(UIColor(hex: 0x666666), for: .normal)
        cancelButton.titleLabel?.font = .systemFont(ofSize: 14)
        cancelButton.frame = CGRect(x: searchTF.frame.maxX, y: searchTF.frame.origin.y, width: 55, height: searchTF.frame.height)
        view.addSubview(cancelButton)
        
        
        //CommonList两个泛型 Product和ProductCell
        let productList = CommonList<Product, ProductCell>(frame: CGRect(x: 0, y: UIDevice.vg_navigationFullHeight(), width: SCREEN_WIDTH, height: SCREEN_HEIGHT - UIDevice.vg_navigationFullHeight()))
        productList.items = FakeData.createProducts()
        productList.tableView.delegate = self
        view.addSubview(productList)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            // MARK: 网络请求
            let _ = UserDefinedAppReminderSession().get(API.baseURL_0, path: "").subscribe { r in
                //
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

