//
//  ViewController.swift
//  delivery
//
//  Created by ASWIN A on 18/09/23.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
   
    var txtlab = ["Biriyani","Nan","Meals","Pizza", "Chappathi"]
    var inpimg = ["1","2","3","4","5"]

    @IBOutlet weak var collection: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collection.delegate = self
        collection.dataSource = self
        
        let layout = UICollectionViewFlowLayout()
        collection.collectionViewLayout = layout
        layout.scrollDirection = .horizontal
        
        // Do any additional setup after loading the view.
    }

    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return txtlab.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collection.dequeueReusableCell(withReuseIdentifier: "itemCell", for: indexPath) as! itemsCollectionViewCell
        cell.img.image = UIImage(named: inpimg[indexPath.item])
        cell.lab.text = txtlab[indexPath.item]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: view.frame.height/4)
    }

}

