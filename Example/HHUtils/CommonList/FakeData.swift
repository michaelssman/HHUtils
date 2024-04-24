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
            let p1 = Product(name: "网络请求")
            let p2 = Product(name: "AlertView")
            let p3 = Product(name: "设计模式之美")
            products = [p1, p2, p3]
        }
        return products
    }
    
}
