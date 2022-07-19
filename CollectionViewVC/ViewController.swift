//
//  ViewController.swift
//  CollectionViewVC
//
//  Created by Yang Chi on 2022/7/19.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 220, height: 50))
        view.addSubview(button)
        button.backgroundColor = .systemBlue
        button.center = view.center
        button.setTitle("Show Collection", for: .normal)
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
    }
    
    @objc func didTapButton() {
        // Creating layout
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: (view.frame.size.width/3) - 3, height: (view.frame.size.width/3) - 3)
        
        layout.minimumLineSpacing = 1
        layout.scrollDirection = .vertical
        layout.sectionInset = UIEdgeInsets(top: 1, left: 1, bottom: 1, right: 1)
        layout.minimumInteritemSpacing = 1
        
        // Collection VC
        let vc = GridCollectionViewController(collectionViewLayout: layout)
        vc.title = "Grid Controller"
        vc.navigationItem.largeTitleDisplayMode = .always
        
        // Navigation VC
        let navVC = UINavigationController(rootViewController: vc)
        navVC.navigationBar.prefersLargeTitles = true
        
        // Presenting View Controller
        present(navVC, animated: true)
    }


}

