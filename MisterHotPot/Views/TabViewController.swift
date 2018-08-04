//
//  TabViewController.swift
//  MisterHotPot
//
//  Created by ruijia lin on 8/1/18.
//  Copyright © 2018 ruijia lin. All rights reserved.
//

import UIKit

class TabViewController: UITabBarController {

    var yelpDataModel: YelpDataModel? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let imageView = UIImageView(image: #imageLiteral(resourceName: "logo"))
        imageView.contentMode = .scaleAspectFit
        navigationItem.titleView = imageView
        navigationItem.setHidesBackButton(true, animated: true)
        tabBar.barTintColor = .black
    
        
    }
    
}
