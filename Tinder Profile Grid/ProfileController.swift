//
//  ProfileController.swift
//  Tinder Profile Grid
//
//  Created by Ramy Amanuel Samwel George on 6/25/19.
//  Copyright © 2019 RamyAmanuelSamwel. All rights reserved.
//

import UIKit

class ProfileController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    fileprivate let headerId = "headerId"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView?.backgroundColor = .white
        navigationItem.title = "Profile"
        navigationController?.navigationBar.prefersLargeTitles = true
        collectionView?.alwaysBounceVertical = true
        
        let headerNib = UINib(nibName: "Header", bundle: nil)
        collectionView?.register(headerNib, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: headerId)
    }
    
    //MARK:- UICollectionView
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: view.frame.width)
    }
    
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: headerId, for: indexPath)
        return header
    }
}
