//
//  CollectionViewController.swift
//  fourSquareMapKit
//
//  Created by hildy abreu on 11/21/19.
//  Copyright © 2019 hildy abreu. All rights reserved.
//

import UIKit

class CollectionViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        collectionView.layoutIfNeeded()
        // Do any additional setup after loading the view.
    }

}

extension CollectionViewController: UICollectionViewDelegate{}

extension CollectionViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath) as! CollectionsCollectionViewCell
        
        cell.collectionImage.image = UIImage(systemName: "photo")
        cell.collectionName.text = "Hildy's collections"
        return cell
    }
  
}

extension CollectionViewController: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 200, height: 200)
    }
}
