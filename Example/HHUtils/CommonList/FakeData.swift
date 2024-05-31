//
//  FakeData.swift
//  HHSwift
//
//  Created by Michael on 2022/11/4.
//

import Foundation

struct Product {
    var name: String
}

class FakeData {
    private static var products = [Product]()
    
    static func createProducts() -> [Product] {
        if products.count == 0 {
            products = [
                Product(name: "网络请求"),
                Product(name: "AlertView"),
                Product(name: "设计模式之美"),
                Product(name: "保留小数位"),
            ]
        }
        return products
    }
    
}
