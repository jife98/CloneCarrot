//
//  MenuView.swift
//  CloneCarrot
//
//  Created by 최지철 on 2023/02/07.
//

import UIKit

class MenuView: UIViewController {
    private var menuItem: Data = Data.shared
    @IBOutlet weak var CollecitonView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        CollecitonView.register(UINib(nibName: "MenuCollectionViewCell", bundle: .main), forCellWithReuseIdentifier: "MenuCollectionViewCell")
        CollecitonView.dataSource = self
        CollecitonView.delegate = self
    }
    

}
extension MenuView: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return menuItem.MenuCount
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cellIdd = String(describing: MenuCollectionViewCell.self)
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier:cellIdd, for: indexPath) as! MenuCollectionViewCell
        cell.MenuImg.image = UIImage(systemName: menuItem.MenuImgArry[indexPath.item]) //사진 불러오기
        cell.MenuName.text = menuItem.MenuNameArry[indexPath.item] //이름 불러오기
        
        return cell
    }
    
}
