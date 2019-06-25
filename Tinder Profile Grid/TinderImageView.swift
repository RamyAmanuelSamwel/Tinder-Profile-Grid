//
//  TinderImageView.swift
//  Tinder Profile Grid
//
//  Created by Ramy Amanuel Samwel George on 6/25/19.
//  Copyright © 2019 RamyAmanuelSamwel. All rights reserved.
//

import UIKit

class TinderImageView: UIImageView {
    
    let imageIndexLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.text = "SSS"
        label.font = UIFont.boldSystemFont(ofSize: 18)
        
        label.layer.shadowOpacity = 0.7
        label.layer.shadowOffset = .zero
        
        
        return label
    }()
    
    @IBInspectable
    var imageIndex: NSNumber! {
        didSet {
            let imageName = "daenerys\(imageIndex.stringValue)"
            self.image = UIImage(named: imageName)
            
            layer.cornerRadius = 5
            imageIndexLabel.text = imageIndex.stringValue
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        addSubview(imageIndexLabel)
        imageIndexLabel.translatesAutoresizingMaskIntoConstraints = false
        imageIndexLabel.topAnchor.constraint(equalTo: topAnchor, constant: 8).isActive = true
        imageIndexLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8).isActive = true
    }
}
