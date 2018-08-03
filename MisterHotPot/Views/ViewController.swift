//
//  ViewController.swift
//  MisterHotPot
//
//  Created by ruijia lin on 7/31/18.
//  Copyright © 2018 ruijia lin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let imageView = UIImageView(image: #imageLiteral(resourceName: "logo"))
        imageView.contentMode = .scaleAspectFit
        navigationItem.titleView = imageView
        
        navigationController?.navigationBar.barTintColor = .black
                
        collectionView.delegate = self
        collectionView.backgroundColor = .black
        collectionView.register(LocationCVCell.self, forCellWithReuseIdentifier: locationCellId)
    }

}

extension ViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        performSegue(withIdentifier: segueToTabVC, sender: self)
    }
}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return locationModel.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: locationCellId, for: indexPath) as? LocationCVCell else {
            
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: locationCellId, for: indexPath)
            
            return cell
        }
        
        cell.locationImageView.image = locationModel[indexPath.row]        
        
        return cell
    }
}

extension ViewController: UICollectionViewDelegateFlowLayout {

}

