//
//  LocationCVCell.swift
//  MisterHotPot
//
//  Created by ruijia lin on 7/31/18.
//  Copyright © 2018 ruijia lin. All rights reserved.
//

import UIKit

class LocationCVCell: UICollectionViewCell {
    
    let locationImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.cornerRadius = 16
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.addSubview(locationImageView)
        
        setupConstraint()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        self.addSubview(locationImageView)
        setupConstraint()
    }
    
    fileprivate func setupConstraint() {
        locationImageView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        locationImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        locationImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        locationImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        
    }
}
