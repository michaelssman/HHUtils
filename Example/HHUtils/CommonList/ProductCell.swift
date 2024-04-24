//
//  ProductList.swift
//  HHSwift
//
//  Created by Michael on 2022/11/4.
//

import Foundation
import UIKit
import SnapKit
import HHUtils

///cell
class ProductCell: CommonListCell<Product> {
    
    //属性
    let priceLabel: UILabel
    
    override var item: Product? {
        didSet {
            if let p = self.item {
                self.priceLabel.text = p.name
            }
        }
    }
    
    required init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        priceLabel = UILabel(frame: .zero)
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.setupViews()
    }
    
    private func setupViews() {
        priceLabel.textColor = UIColor.hexColor(0x333333)
        priceLabel.font = UIFont.systemFont(ofSize: 15)
        
        contentView.addSubview(priceLabel)
        
        priceLabel.snp.makeConstraints({ (make) in
            make.left.equalToSuperview().offset(12)
            make.right.equalToSuperview().offset(-10)
            make.centerY.equalToSuperview()
        })
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
